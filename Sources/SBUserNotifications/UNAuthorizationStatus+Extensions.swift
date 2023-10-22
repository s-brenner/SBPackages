#if canImport(UserNotifications)
extension UNAuthorizationStatus: CustomStringConvertible {
    
    /// - Author: Scott Brenner | SBUserNotifications
    public var description: String {
        switch self {
        case .authorized: return "Authorized"
        case .denied: return "Denied"
        case .notDetermined: return "Not Determined"
        case .ephemeral: return "Ephemeral"
        case .provisional: return "Provisional"
        @unknown default: return "Unknown"
        }
    }
}
#endif
