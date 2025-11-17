import React, {
    useEffect,
    useState,
    useRef,
    useMemo,
    useCallback,
} from "react";
import "./Reward.css";
import PageTitle from "../static/PageTitle/PageTitle";
import investigationIcon from "../../assets/img/InvestigationIcon.svg";
import useApiClients from "../../services/useApiClients";
import { useFetchData } from "../../hooks/useFetchData";
import rightArrow from "../../assets/img/RightVector.svg";
import { useNavigate } from "react-router-dom";

const RewardBenefit = () => {
    const { api } = useApiClients();
    const navigate = useNavigate();
    const [tooltipVisible, setTooltipVisible] = useState(null);
    const tooltipTimerRef = useRef(null);

    const getAllRewardBenefitsWrapper = useCallback(
        (signal, page, rowsPerPage, sortField, sortOrder) => {
            return api.getAllRewardBenefits(
                page,
                rowsPerPage,
                sortField,
                sortOrder,
                signal,
            );
        },
        [api],
    );

    const {
        data: benefitsApiData,
        isLoading,
        error,
        refetch: refetchBenefits,
    } = useFetchData(
        getAllRewardBenefitsWrapper,
        1,
        100,
        "CreatedDate",
        "desc",
        );

    const benefits = useMemo(() => {
        if (!benefitsApiData) {
            return [];
        }

        if (
            benefitsApiData &&
            benefitsApiData.data &&
            Array.isArray(benefitsApiData.data)
        ) {
            const mappedBenefits = benefitsApiData.data.map((benefit) => ({
                id: benefit.id,
                heading: benefit.heading,
                details: benefit.details,
                nonCashablePoints: benefit.nonCashablePoints,
                cashablePoints: benefit.cashablePoints,
                isCashable: benefit.isCashable,
                isActive: benefit.isActive,
                icon: investigationIcon,
            }));
            return mappedBenefits;
        } else {
            return [];
        }
    }, [benefitsApiData]);

    const handleTooltipClick = (benefitId) => {
        if (tooltipTimerRef.current) {
            clearTimeout(tooltipTimerRef.current);
        }

        if (tooltipVisible === benefitId) {
            setTooltipVisible(null);
        } else {
            setTooltipVisible(benefitId);

            tooltipTimerRef.current = setTimeout(() => {
                setTooltipVisible(null);
            }, 5000);
        }
    };

    const handleArrowClick = (benefitId) => {
        navigate(`/rewardBenefitsDetails/${benefitId}`);
    };

    useEffect(() => {
        return () => {
            if (tooltipTimerRef.current) {
                clearTimeout(tooltipTimerRef.current);
            }
        };
    }, []);

    return (
        <div className="content-container">
            <div className="rx-folder-container row px-3 px-md-5">
                <div className="col-12 col-md-9 col-lg-7 col-xl-6 mx-auto p-0">
                    <PageTitle
                        pageName={"Reward Point Benefits"}
                        switchButton={false}
                    />

                    <div style={{ marginTop: "20px" }}>
                        <div
                            style={{
                                fontSize: "18px",
                                fontWeight: "bold",
                                color: "#4b3b8b",
                                marginBottom: "20px",
                                fontFamily: "Georama",
                            }}
                        >
                            Benefits with smartRX
                        </div>

                        {isLoading && (
                            <div
                                style={{
                                    textAlign: "center",
                                    padding: "40px 0",
                                    color: "#65636e",
                                }}
                            >
                                <div
                                    className="spinner-border"
                                    role="status"
                                    style={{
                                        width: "3rem",
                                        height: "3rem",
                                        color: "#4b3b8b",
                                    }}
                                >
                                    <span className="visually-hidden">
                                        Loading...
                                    </span>
                                </div>
                                <p
                                    style={{
                                        marginTop: "20px",
                                        fontSize: "16px",
                                        fontFamily: "Georama",
                                    }}
                                >
                                    Loading benefits...
                                </p>
                            </div>
                        )}

                        {error && !isLoading && (
                            <div
                                className="alert alert-warning mt-3"
                                role="alert"
                                style={{ fontFamily: "Georama" }}
                            >
                                <h5>⚠️ Unable to load benefits</h5>
                                <p>
                                    {error?.message ||
                                        "There was an error loading reward benefits."}
                                </p>
                            </div>
                        )}

                        {!isLoading && !error && (
                            <div
                                style={{
                                    display: "flex",
                                    flexDirection: "column",
                                    gap: "12px",
                                    marginBottom: "80px",
                                }}
                            >
                                {benefits.length === 0 ? (
                                    <div
                                        style={{
                                            textAlign: "center",
                                            padding: "40px 0",
                                            color: "#65636e",
                                        }}
                                    >
                                        <p
                                            style={{
                                                fontSize: "16px",
                                                fontFamily: "Georama",
                                            }}
                                        >
                                            {isLoading
                                                ? "Loading benefits..."
                                                : "No benefits available at the moment."}
                                        </p>
                                    </div>
                                ) : (
                                    benefits.map((benefit) => (
                                        <div
                                            key={`benefit-${benefit.id}`}
                                            style={{
                                                backgroundColor: "#f8f7ff",
                                                borderRadius: "5px",
                                                padding: "12px 16px",
                                                display: "flex",
                                                alignItems: "center",
                                                gap: "16px",
                                                border: "1px solid #e9e8ff",
                                                borderLeft: "6px solid #4b3b8b",
                                                position: "relative",
                                            }}
                                        >
                                            <div
                                                style={{
                                                    width: "40px",
                                                    height: "40px",
                                                    borderRadius: "50%",
                                                    backgroundColor: "#ffffff",
                                                    border: "2px solid #e8f5e8",
                                                    display: "flex",
                                                    alignItems: "center",
                                                    justifyContent: "center",
                                                    flexShrink: 0,
                                                }}
                                            >
                                                <img
                                                    src={benefit.icon}
                                                    alt="Benefit Icon"
                                                    style={{
                                                        width: "20px",
                                                        height: "20px",
                                                    }}
                                                />
                                            </div>

                                            <div
                                                style={{
                                                    flex: 1,
                                                    fontSize: "10px",
                                                    color: "#4b3b8b",
                                                    fontWeight: "600",
                                                    fontFamily: "Georama",
                                                }}
                                            >
                                                {benefit.heading}
                                            </div>

                                            {(benefit.nonCashablePoints > 0 ||
                                                (benefit.isCashable &&
                                                    benefit.cashablePoints >
                                                        0)) && (
                                                <div
                                                    style={{
                                                        fontSize: "10px",
                                                        color: "#fff",
                                                        backgroundColor:
                                                            "#4b3b8b",
                                                        padding: "4px 8px",
                                                        borderRadius: "12px",
                                                        fontFamily: "Georama",
                                                        fontWeight: "600",
                                                        whiteSpace: "nowrap",
                                                    }}
                                                >
                                                    {benefit.nonCashablePoints >
                                                    0
                                                        ? `${benefit.nonCashablePoints} pts`
                                                        : `${benefit.cashablePoints} pts`}
                                                </div>
                                            )}
                                            <div
                                                style={{ position: "relative" }}
                                            >
                                                <span
                                                    style={{
                                                        cursor: "pointer",
                                                        textDecoration:
                                                            "underline",
                                                        color: "#4b3b8b",
                                                        fontSize: "10px",
                                                        fontFamily: "Georama",
                                                        fontWeight: "500",
                                                    }}
                                                    onClick={() =>
                                                        handleTooltipClick(
                                                            benefit.id,
                                                        )
                                                    }
                                                >
                                                    View
                                                </span>

                                                <span
                                                    style={{
                                                        cursor: "pointer",
                                                        color: "#4b3b8b",
                                                        marginLeft: "6px",
                                                    }}
                                                    onClick={() =>
                                                        handleArrowClick(
                                                            benefit.id,
                                                        )
                                                    }
                                                >
                                                    <img
                                                        src={
                                                           rightArrow
                                                        }
                                                        alt="Right Arrow"
                                                    />
                                                </span>

                                                {tooltipVisible ===
                                                    benefit.id &&
                                                    benefit.details && (
                                                        <span
                                                            className="vital-tooltip-text"
                                                            style={{
                                                                position:
                                                                    "absolute",
                                                                bottom: "calc(100% + 8px)",
                                                                right: 0,
                                                                backgroundColor:
                                                                    "#fff",
                                                                border: "1px solid #d1d5db",
                                                                borderRadius:
                                                                    "8px",
                                                                padding: "12px",
                                                                boxShadow:
                                                                    "0 4px 6px rgba(0, 0, 0, 0.1)",
                                                                zIndex: 1000,
                                                                minWidth:
                                                                    "250px",
                                                                maxWidth:
                                                                    "350px",
                                                                whiteSpace:
                                                                    "normal",
                                                            }}
                                                        >
                                                            <div
                                                                style={{
                                                                    fontSize:
                                                                        "12px",
                                                                    color: "#65636e",
                                                                    textAlign:
                                                                        "left",
                                                                    lineHeight:
                                                                        "1.5",
                                                                }}
                                                            >
                                                                <div
                                                                    style={{
                                                                        fontWeight:
                                                                            "bold",
                                                                        marginBottom:
                                                                            "8px",
                                                                        color: "#4b3b8b",
                                                                    }}
                                                                >
                                                                    {
                                                                        benefit.heading
                                                                    }
                                                                </div>
                                                                <div
                                                                    style={{
                                                                        marginBottom:
                                                                            "8px",
                                                                    }}
                                                                >
                                                                    {
                                                                        benefit.details
                                                                    }
                                                                </div>
                                                                {(benefit.nonCashablePoints >
                                                                    0 ||
                                                                    benefit.cashablePoints >
                                                                        0) && (
                                                                    <div
                                                                        style={{
                                                                            borderTop:
                                                                                "1px solid #e9e8ff",
                                                                            paddingTop:
                                                                                "8px",
                                                                            display:
                                                                                "flex",
                                                                            gap: "12px",
                                                                            fontSize:
                                                                                "11px",
                                                                        }}
                                                                    >
                                                                        {benefit.nonCashablePoints >
                                                                            0 && (
                                                                            <span
                                                                                style={{
                                                                                    color: "#10B981",
                                                                                }}
                                                                            >
                                                                                ✓
                                                                                Non-Cashable:{" "}
                                                                                {
                                                                                    benefit.nonCashablePoints
                                                                                }{" "}
                                                                                pts
                                                                            </span>
                                                                        )}
                                                                        {benefit.isCashable &&
                                                                            benefit.cashablePoints >
                                                                                0 && (
                                                                                <span
                                                                                    style={{
                                                                                        color: "#3B82F6",
                                                                                    }}
                                                                                >
                                                                                    💰
                                                                                    Cashable:{" "}
                                                                                    {
                                                                                        benefit.cashablePoints
                                                                                    }{" "}
                                                                                    pts
                                                                                </span>
                                                                            )}
                                                                    </div>
                                                                )}
                                                            </div>
                                                        </span>
                                                    )}
                                            </div>
                                        </div>
                                    ))
                                )}
                            </div>
                        )}
                    </div>
                </div>
            </div>
        </div>
    );
};

export default RewardBenefit;
