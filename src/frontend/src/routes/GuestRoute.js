import { Navigate, useLocation } from "react-router-dom";
import { useAuthContext } from "../contexts/AuthContext";
import { useEffect } from "react";

const GUEST_REDIRECT_KEY = "auth:lastRoute";

const GuestRoute = ({ children }) => {
     const location = useLocation();
    const { accessToken } = useAuthContext();

    const intendedPath =
        location?.state?.redirectTo ||
        sessionStorage.getItem(GUEST_REDIRECT_KEY) ||
        "";

    useEffect(() => {
        if (!accessToken) {
            if (
                typeof location?.state?.redirectTo === "string" &&
                location.state.redirectTo.length > 0
            ) {
                sessionStorage.setItem(GUEST_REDIRECT_KEY, location.state.redirectTo);
            }
        }
    }, [accessToken, location?.state?.redirectTo]);

    if (!accessToken) {
        return children;
    }

    if (intendedPath.startsWith("/dashboard")) {
        sessionStorage.removeItem(GUEST_REDIRECT_KEY);
        return <Navigate to="/dashboard" replace />;
    }

    if (intendedPath.startsWith("/all-patient")) {
        sessionStorage.removeItem(GUEST_REDIRECT_KEY);
        return <Navigate to="/all-patient" replace />;
    }

    return <Navigate to="/all-patient" replace />;
};

export default GuestRoute;

