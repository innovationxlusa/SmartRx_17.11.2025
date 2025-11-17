import "./SwitchPatient.css";
import PageTitle from "../static/PageTitle/PageTitle";
import SearchInput from "../static/Commons/CustomInput";
import SearchIcon from "../../assets/img/SearchIcon.svg";
import useSmartNavigate from "../../hooks/useSmartNavigate";
import { useEffect, useState, useMemo, useRef } from "react";
import useApiClients from "../../services/useApiClients";
import { useLocalStorage } from "../../hooks/useLocalStorage";
import { ReactComponent as GroupPeopleIcon } from "../../assets/img/GroupImgNew.svg";
import { useUserContext } from "../../contexts/UserContext";
import {getColorForName} from "../../constants/constants";

const CheckIcon = () => (
    // <svg width="20" height="12" viewBox="0 0 20 12" fill="none" xmlns="http://www.w3.org/2000/svg">
    //     <path d="M10.6667 1L4.16675 7.5L1.33341 4.66667" stroke="#4b3b8b" strokeWidth="2.4" strokeLinecap="round" strokeLinejoin="round" />
    // </svg>
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <defs>
            <linearGradient id="grad" x1="0" y1="0" x2="24" y2="24" gradientUnits="userSpaceOnUse">
                <stop offset="0%" stop-color="#6C63FF" />
                <stop offset="100%" stop-color="#4b3b8b" />
            </linearGradient>
        </defs>
        <path d="M20 6L9 18L4 13" stroke="url(#grad)" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" />
    </svg>
);




const SwitchPatient = () => {
    const { smartNavigate } = useSmartNavigate({ scroll: "top" });
    const [patients, setPatients] = useState([]);
    const [searchTerm, setSearchTerm] = useState("");
    const { api } = useApiClients();
    const [selectedPatientId, setSelectedPatientId] = useLocalStorage("selectedPatientId", "");
    const { user } = useUserContext();
    const [failedAvatars, setFailedAvatars] = useState(new Set());
    const avatarsFetchedRef = useRef(false);
    const patientsFetchedRef = useRef(false);

    

    const buildImageUrl = (path) => {
        if (!path) return null;
        if (path.startsWith("http")) return `${path}?t=${Date.now()}`;
        const base = process.env.REACT_APP_IMAGE_URL || "";
        return `${base}/${path}?t=${Date.now()}`;
    };

    useEffect(() => {
        const fetchPatients = async () => {
            if (patientsFetchedRef.current) return;
            const userId = Number(user?.UserId ?? user?.userId);
            if (!userId) return;
            patientsFetchedRef.current = true;
            try {
                const res = await api.getPatientOrRelativeDropdown(userId);
                const dataList =
                    res?.patientDropdowns ||
                    res?.data?.patientDropdowns ||
                    res?.data ||
                    res?.response?.patientDropdowns ||
                    res?.response?.data ||
                    [];
                const mapped = (Array.isArray(dataList) ? dataList : []).map((item) => ({
                    id: String(item?.patientId ?? item?.id ?? ""),
                    name: item?.patientName || item?.name || "Unknown",
                    avatar: null,
                }));
                setPatients(mapped);
            } catch (error) {
                console.error("Error fetching patients:", error);
            }
        };
        fetchPatients();
    }, [api, user?.UserId, user?.userId]);

    useEffect(() => {
        const fetchAvatars = async () => {
            if (!patients?.length) return;
            if (!user?.UserId) return;
            if (avatarsFetchedRef.current) return;
            avatarsFetchedRef.current = true;
            try {
                const userId = Number(user?.UserId);
                const payload = {
                    userId: userId,
                    PatientId: null,
                    RxType: "Smart Rx",
                    searchKeyword: null,
                    searchColumn: null,
                    pagingSorting: {
                        pageNumber: 1,
                        pageSize: 1000,
                        sortBy: "patientcode",
                        sortDirection: "asc",
                    },
                };
                const resp = await api.getPatientProfileListById(null, payload);
                const list = Array.isArray(resp?.data?.data)
                    ? resp.data.data
                    : Array.isArray(resp?.response?.data)
                        ? resp.response.data
                        : [];
                const idToAvatarPath = new Map();
                list.forEach((it) => {
                    const key = String(it?.id ?? it?.patientId ?? "");
                    if (!key) return;
                    const path = it?.profilePhotoPath || it?.profilePhoto || null;
                    if (path) idToAvatarPath.set(key, path);
                });
                const updated = patients.map((p) => {
                    const path = idToAvatarPath.get(String(p.id));
                    return { ...p, avatar: path ? buildImageUrl(path) : null };
                });
                setPatients(updated);
            } catch (e) {
            }
        };
        fetchAvatars();
    }, [patients.length, user?.UserId]);

    const filteredPatients = useMemo(() => {
        const query = searchTerm.trim().toLowerCase();
        if (!query) return patients;
        return patients.filter((p) =>
            (p.name || "").toLowerCase().includes(query),
        );
    }, [patients, searchTerm]);

    const normalizedSearch = searchTerm.trim().toLowerCase();
    const showAllPatientOption =
        !normalizedSearch || "all patient".includes(normalizedSearch);

    const handleSelect = (p) => {
        smartNavigate(`/single-patient/${p.id}`);
        setSelectedPatientId(p.id);
    };

    return (
        <div className="col-12 col-md-7 mx-auto switch-patient-page">
            <PageTitle backButton={true} pageName={""} switchButton={false} />
            <div className="container justify-content-center">
                <SearchInput
                    rightIcon={SearchIcon}
                    placeholder="Search"
                    name="searchPatient"
                    type="text"
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                />

                {showAllPatientOption && (
                    <div className="switch-card">
                        <ul className="switch-list">
                            <li
                                className="switch-item"
                                onClick={() => {
                                    smartNavigate("/all-patient");
                                    setSelectedPatientId("");
                                }}
                            >
                                <div className="left">
                                    <div
                                        className="avatar-img"
                                        style={{ color: "#4b3b8b" }}
                                    >
                                        <GroupPeopleIcon
                                            style={{
                                                fill: "currentColor",
                                                width: "39px",
                                                height: "30px",
                                                marginBottom: "2px",
                                            }}
                                        />
                                    </div>

                                    <span
                                        className="name"
                                        style={{ color: "#65636e" }}
                                    >
                                        All Patient
                                    </span>
                                </div>
                                {!selectedPatientId && (
                                    <div className="check-badge">
                                        <CheckIcon />
                                    </div>
                                )}
                            </li>
                        </ul>
                    </div>
                )}

                <div className="switch-card">
                    <ul className="switch-list">
                        {filteredPatients.map((p) => {
                            const name = p.name;
                            const firstTwoLetters = name
                                .split(" ")
                                .map((word) => word.charAt(0).toUpperCase())
                                .slice(0, 2)
                                .join("");
                            const firstLetter = name.charAt(0).toUpperCase();
                            const isSelected = p.id === selectedPatientId;
                            const hasAvatar = !!(
                                p.avatar && !failedAvatars.has(p.id)
                            );
                            return (
                                <li
                                    key={p.id}
                                    className={`switch-item ${isSelected ? "selected" : ""}`}
                                    onClick={() => handleSelect(p)}
                                >
                                    <div className="left">
                                        {hasAvatar ? (
                                            <img
                                                src={p.avatar}
                                                alt={p.name}
                                                className="avatar-img"
                                                style={{
                                                    width: "28px",
                                                    height: "28px",
                                                    borderRadius: "50%",
                                                    objectFit: "cover",
                                                }}
                                                onError={() => {
                                                    setFailedAvatars((prev) => {
                                                        const next = new Set(
                                                            prev,
                                                        );
                                                        next.add(p.id);
                                                        return next;
                                                    });
                                                }}
                                            />
                                        ) : (
                                            <div
                                                className="avatar-circle"
                                                style={{
                                                    backgroundColor:
                                                        getColorForName(name),
                                                    width: "28px",
                                                    height: "28px",
                                                    borderRadius: "50%",
                                                    display: "flex",
                                                    alignItems: "center",
                                                    justifyContent: "center",
                                                    color: "#fff",
                                                    fontSize: "12px",
                                                    fontWeight: 600,
                                                }}
                                            >
                                                {firstTwoLetters}
                                            </div>
                                        )}
                                        <span
                                            className="name"
                                            style={{ color: "#65636e" }}
                                        >
                                            {p.name}
                                        </span>
                                    </div>

                                    {selectedPatientId && isSelected && (
                                        <div className="check-badge">
                                            <CheckIcon />
                                        </div>
                                    )}
                                </li>
                            );
                        })}
                        {!filteredPatients.length && (
                            <li className="switch-item no-results">
                                <span
                                    className="name"
                                    style={{
                                        fontFamily: "Georama",
                                        color: "#65636e"
                                    }}
                                >
                                    No patients found
                                </span>
                            </li>
                        )}
                    </ul>
                </div>
            </div>
        </div>
    );
};

export default SwitchPatient;
