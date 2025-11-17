import { jwtDecode } from "jwt-decode";
import { createContext, useState, useContext, useEffect } from "react";
import { useNavigate, useLocation, useNavigationType } from "react-router-dom";
import { useAuthContext } from "./AuthContext";


// Create the UserContext
const UserContext = createContext();

const UserProvider = ({ children }) => {
    const location = useLocation();
    const { accessToken } = useAuthContext();
    
    // State to store decoded user data from accessToken
    const [user, setUser] = useState(null);

    // State to track user login status
    const [isLoggedIn, setIsLoggedIn] = useState(false);

    // Update user when accessToken changes
    useEffect(() => {
        if (accessToken) {
            try {
                const decodedToken = jwtDecode(accessToken);
                setUser(decodedToken);
                setIsLoggedIn(true);
            } catch (error) {
                console.error("Token decoding error:", error);
                setUser(null);
                setIsLoggedIn(false);
            }
        } else {
            setUser(null);
            setIsLoggedIn(false);
        }
    }, [accessToken]);

    // Helper function to decode and set user from the token
    const decodeToken = (token) => {
        try {
            const decodedToken = jwtDecode(token);
            setUser(decodedToken); // Set user data if token is valid
            setIsLoggedIn(true); // Update login status
        } catch (error) {
            console.error("Token decoding error:", error);
            setUser(null); // Reset user on error
            setIsLoggedIn(false); // Update login status
        }
    };

    return <UserContext.Provider value={{ user, setUser, isLoggedIn, setIsLoggedIn, decodeToken }}>{children}</UserContext.Provider>;
};

/**
 * Hook to access the UserContext.
 * This hook provides access to the user data, login status, functionality.
 * @returns {{ user: object|null, isLoggedIn: boolean }} - The current user, login status, function.
 */
const useUserContext = () => useContext(UserContext);

export { UserProvider, useUserContext };
