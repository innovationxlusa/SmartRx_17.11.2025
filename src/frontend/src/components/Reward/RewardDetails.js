import React, { useState, useMemo, useCallback, useEffect } from "react";
import "./RewardDetails.css";
import { useNavigate } from "react-router-dom";
import PageTitle from "../static/PageTitle/PageTitle";
import useApiClients from "../../services/useApiClients";
import { useUserContext } from "../../contexts/UserContext";
import { useFetchData } from "../../hooks/useFetchData";
import rewardIcon from "../../assets/img/GoldMedalList.svg";
import DateField from "../static/Commons/DateField";
import { VscSearch } from "react-icons/vsc";
import { ReactComponent as SearchIcon } from "../../assets/img/SearchNew.svg";
import CustomButton from "../static/Commons/CustomButton";


const RewardDetails = () => {
    const navigate = useNavigate();
    const { api } = useApiClients();
    const { user } = useUserContext();
    const loginUserId = Number(user?.UserId);

    const [formData, setFormData] = useState({
            fromDate: "",
            toDate: ""
    });

    const handleSubmitSearch = async () => { 
        setIsLoading(true);
        try {
            // Refetch data with current form data (apiPayload will be updated automatically)
            await refetchRewardDetails();
        } catch (error) {
            console.error("Error fetching reward details:", error);
        } finally {
            setIsLoading(false);
        }
    }
    const [isLoading, setIsLoading] = useState(false);

    // State for filter tabs (both can be selected)
    const [selectedFilters, setSelectedFilters] = useState({
        earned: true,
        consumed: true
    });

    // State for date range
    const [fromDate, setFromDate] = useState("");
    const [toDate, setToDate] = useState("");

    // Create payload for API call
    const apiPayload = useMemo(() => {
        return {
            UserId: Number(loginUserId),
            PatientId: null,
            StartDate: formData.fromDate || null, // Default start date if not provided
            EndDate: formData.toDate || null, // Default to today if not provided
            pagingSorting: {
                pageNumber: 1,
                pageSize: 10,
                sortBy: "patientcode",
                sortDirection: "asc"
            }
        };
    }, [loginUserId, formData.fromDate, formData.toDate]);

    // Fetch reward point details/transactions
    const {
        data: rewardDetailsData,
        isLoading: isRewardDetailsLoading,
        error: rewardDetailsError,
        refetch: refetchRewardDetails,
    } = useFetchData(
        api.getPatientRewardsByUserIdAndPatientId, // Using the new API for transaction details
        null,
        null,
        null,
        null,
        apiPayload,
    );
    // Process API data for transactions and create three separate lists
    const transactions = useMemo(() => {
        if (!rewardDetailsData) {
            return {
                all: [],
                earned: [],
                consumed: []
            };
        }
        // Check if the API response has the expected structure
        if (rewardDetailsData.all && rewardDetailsData.earned && rewardDetailsData.consumed) {
            // API already returns structured data
            return {
                all: rewardDetailsData.all || [],
                earned: rewardDetailsData.earned || [],
                consumed: rewardDetailsData.consumed || []
            };
        }
        // Fallback for unexpected data structure
        return {
            all: [],
            earned: [],
            consumed: []
        };
    }, [rewardDetailsData]);

    // Filter transactions based on selected tabs
    const filteredTransactions = useMemo(() => {
        // If both buttons are disabled, show no data
        if (!selectedFilters.earned && !selectedFilters.consumed) {
            return [];
        }
        // If both buttons are enabled, show all data
        if (selectedFilters.earned && selectedFilters.consumed) {
            return transactions.all;
        }
        
        // If only earned button is enabled, show only earned transactions
        if (selectedFilters.earned && !selectedFilters.consumed) {
            return transactions.earned;
        }
        
        // If only consumed button is enabled, show only consumed transactions
        if (!selectedFilters.earned && selectedFilters.consumed) {
            return transactions.consumed;
        }
        
        return transactions.all;
    }, [selectedFilters, transactions]);

    // Ensure filteredTransactions is always an array before use
    const safeFilteredTransactions = useMemo(() => {
        return Array.isArray(filteredTransactions?.data) ? filteredTransactions?.data : [];
    }, [filteredTransactions, selectedFilters]);

    // Calculate total points based on filtered transactions
    const totalPoints = useMemo(() => {
        return safeFilteredTransactions.reduce((total, transaction) => {
            return total + (Number(transaction?.totalPoints) || 0);
        }, 0);
    }, [safeFilteredTransactions, selectedFilters]);

    // Handle filter tab toggle
    const handleFilterToggle = (filterType) => {
        setSelectedFilters(prev => ({
            ...prev,
            [filterType]: !prev[filterType]
        }));
    };

    // Handle date change
    const handleFromDateChange = (e) => {
        setFromDate(e.target.value);
    };

    const handleToDateChange = (e) => {
        setToDate(e.target.value);
    };

    // Format date for display
    const formatDateForDisplay = (dateString) => {
        const date = new Date(dateString);
        return date.toLocaleDateString('en-GB', {
            day: '2-digit',
            month: '2-digit',
            year: 'numeric'
        });
    };

    // Format date for input
    const formatDateForInput = (dateString) => {
        if (!dateString) return "";
        const date = new Date(dateString);
        return date.toISOString().split('T')[0];
    };

    return (
        <div className="reward-details-container">
            <div className="reward-details-content">
                <PageTitle
                    pageName={"Reward Point Details"}
                    switchButton={false}
                    lowMargin={true}
                />

                <div
                    style={{
                        display: "flex",
                        justifyContent: "right",
                    }}
                >
                    <img
                        src={rewardIcon}
                        alt="Reward Badge"
                        onClick={() => navigate("/rewardPointBadges")}
                        style={{
                            width: "50px",
                            height: "50px",
                            cursor: "pointer",
                        }}
                    />
                </div>

                {/* Total Points Section */}
                <div className="total-points-section">
                    <div className="total-points-content">
                        <span className="total-points-label">Total Point</span>
                        <span className="total-points-value">
                            {totalPoints}
                        </span>
                    </div>
                </div>

                {/* Filter Tabs Section */}
                <div className="filter-tabs-section">
                    <div className="filter-tabs">
                        <button
                            className={`filter-tab ${selectedFilters.earned ? "active" : ""}`}
                            onClick={() => handleFilterToggle("earned")}
                        >
                            Earned
                        </button>
                        <button
                            className={`filter-tab ${selectedFilters.consumed ? "active" : ""}`}
                            onClick={() => handleFilterToggle("consumed")}
                        >
                            Consumed
                        </button>
                    </div>
                   
                </div>

                <div
                    className="point-select-date"
                    style={{
                        display: "flex",
                        gap: "10px",
                        marginBottom: "15px",
                    }}
                >
                    <div className="date-container" style={{ width: "50%" }}>
                        <DateField
                            className="fromDate"
                            placeholderText="From date"
                            type="text"
                            value={formData.fromDate}
                            onChange={(selectedDateObj) => {
                                setFormData((prev) => ({
                                    ...prev,
                                    fromDate: selectedDateObj,
                                }));
                            }}
                        />
                    </div>
                    <div className="date-container" style={{ width: "50%" }}>
                        <DateField
                            className="toDate"
                            placeholderText="To date"
                            type="text"
                            style={{ height: "40px" }}
                            value={formData.toDate}
                            onChange={(selectedDateObj) => {
                                setFormData((prev) => ({
                                    ...prev,
                                    toDate: selectedDateObj,
                                }));
                            }}
                        />
                    </div>
                </div>

                <div style={{ display: "flex", justifyContent: "center" }}>
                    <CustomButton
                        type="button"
                        label={
                            <div
                                style={{
                                    display: "flex",
                                    alignItems: "center",
                                    fontFamily: "Georama",
                                    fontSize: "12px",
                                    fontWeight: "600",
                                    verticalAlign: "middle",
                                    justifyContent: "center",
                                }}
                            >
                                {isLoading ? "Searching..." : "Search"}
                                <span className="search-img">
                                    <VscSearch
                                        style={{
                                            color: "#4b3b8b",
                                            height: "12px",
                                            width: "12px",
                                        }}
                                    />
                                </span>
                            </div>
                        }
                        className="search-action-btn"
                        width="30%"
                        textColor="#4b3b8b"
                        backgroundColor="#FAF8FA"
                        borderRadius="4px"
                        shape="pill"
                        borderColor="1px solid #4b3b8b"
                        labelStyle={{
                            fontSize: "16px",
                            fontWeight: "500",
                            textTransform: "capitalize",
                        }}
                        hoverEffect="theme"
                        onClick={() => {
                            handleSubmitSearch();
                        }}
                        disabled={isLoading}
                    />
                </div>

                {/* Transaction List Section */}
                <div className="transaction-list-section">
                    {isRewardDetailsLoading ? (
                        <div className="loading-container">
                            <p>Loading transactions...</p>
                        </div>
                    ) : rewardDetailsError ? (
                        <div className="error-container">
                            <p>Error loading transactions. Please try again.</p>
                        </div>
                    ) : !Array.isArray(safeFilteredTransactions) || safeFilteredTransactions.length === 0 ? (
                        <div className="empty-container">
                            <p>No transactions found.</p>
                        </div>
                    ) : (
                        <div className="transaction-list">
                            {safeFilteredTransactions.map((transaction, index) => (
                                <div
                                    key={`${transaction?.id ?? transaction?.rewardId ?? transaction?.createdDate ?? "tx"}-${index}`}
                                    className="transaction-item"
                                >
                                    <div className="transaction-info">
                                        <div className="transaction-action">
                                            {transaction.rewardName}
                                        </div>
                                        <div className="transaction-date">
                                            {formatDateForDisplay(
                                                transaction.createdDate,
                                            )}
                                        </div>
                                    </div>
                                    <div
                                        className={`transaction-points ${transaction.totalPoints > 0 ? "positive" : "negative"}`}
                                    >
                                        {transaction.totalPoints > 0 ? "+" : ""}
                                        {transaction.totalPoints}
                                    </div>
                                </div>
                            ))}
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
};

export default RewardDetails;
