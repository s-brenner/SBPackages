#if canImport(AuthenticationServices) && canImport(SBStandardLibrary)
import SBStandardLibrary

extension ASAuthorizationAppleIDCredential {
    
    private struct Printable: JSONStringConvertible, CustomDebugStringConvertible {
        
        let identityToken: String
        
        let authorizationCode: String
        
        let user: String
        
        let name: String?
        
        let email: String?
        
        init?(credential: ASAuthorizationAppleIDCredential) {
            guard let identityToken = credential.identityToken?.formatted(),
                  let authorizationCode = credential.authorizationCode?.formatted()
            else { return nil }
            self.identityToken = identityToken
            self.authorizationCode = authorizationCode
            user = credential.user
            name = credential.fullName?.formatted()
            email = credential.email
        }
        
        var debugDescription: String { jsonDescription }
    }
    
    open override var debugDescription: String {
        Printable(credential: self)!.debugDescription
    }
}
#endif
