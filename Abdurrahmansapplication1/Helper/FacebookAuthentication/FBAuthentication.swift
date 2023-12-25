import FBSDKLoginKit
import Foundation

struct FacebookSignInResponse {
    var id: String?
    var firstName: String?
    var lastName: String?
    var middleName: String?
    var name: String?
    var nameFormat: String?
    var picture: String?
    var shortName: String?
    var email: String?
}

class FBSignInHelper {
    public static var shared = FBSignInHelper()

    func signIn(user: @escaping (_ result: FacebookSignInResponse?) -> Void) {
        // if the user is already logged in

        if let token = AccessToken.current,
           !token.isExpired
        {
            getFBUserData(completion: { result in
                user(result)
            })
            return
        }
        // Get Currunt RootView
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        else { return }
        guard let rootViewController = windowScene.windows.first?.rootViewController else { return }

        let loginManager = LoginManager()
        loginManager
            .logIn(permissions: [.publicProfile],
                   viewController: rootViewController) { loginResult in
                switch loginResult {
                case let .failed(error):
                    print(error)
                case .cancelled:
                    print("User cancelled login.")
                // success params - grantedPermissions, declinedPermissions, accessToken
                case .success:
                    self.getFBUserData(completion: { result in
                        user(result)
                    })
                @unknown default:
                    fatalError("fatal error while login using facebook")
                }
            }
    }

    private func getFBUserData(completion: @escaping (_ result: FacebookSignInResponse?) -> Void) {
        if (AccessToken.current) != nil {
            let parameters = ["fields": "id, name, picture.type(large), email"]
            GraphRequest(graphPath: "me",
                         parameters: parameters).start(completion: { _, result, error in
                if error != nil {
                    completion(nil)
                } else {
                    completion(self.getFBLoginUser(result as Any))
                }
            })
        }
    }

    private func getFBLoginUser(_ user: Any) -> FacebookSignInResponse? {
        if let json = user as? [String: Any] {
            if let email = json["email"] as? String {
                print("\(email)")
            }
            if let firstName = json["first_name"] as? String {
                print("\(firstName)")
            }
            if let lastName = json["last_name"] as? String {
                print("\(lastName)")
            }
            if let id = json["id"] as? String {
                print("\(id)")
            }

            let id = json["id"] as? String
            let lastName = json["last_name"] as? String
            let firstName = json["first_name"] as? String
            let middleName = json["middle_name"] as? String
            let name = json["name"] as? String
            let nameFormat = json["name_format"] as? String
            let shortName = json["short_name"] as? String
            let email = json["email"] as? String
            var pictureURL: String?
            if let picture = json["picture"] as? [String: Any],
               let data = picture["data"] as? [String: Any],
               let url = data["url"] as? String
            {
                pictureURL = url
            }
            let fbdUser = FacebookSignInResponse(id: id,
                                                 firstName: firstName,
                                                 lastName: lastName,
                                                 middleName: middleName,
                                                 name: name,
                                                 nameFormat: nameFormat,
                                                 picture: pictureURL,
                                                 shortName: shortName,
                                                 email: email)
            return fbdUser
        } else {
            return nil
        }
    }
}
