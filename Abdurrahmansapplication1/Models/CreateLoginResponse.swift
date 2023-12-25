
import Foundation

struct CreateLoginResponse: Codable {
    var data: CreateLoginResponseData
    var message: String
    var status: String
}

struct CreateLoginResponseData: Codable {
    var createdAt: String
    var email: String
    var id: String
    var isActive: Bool
    var isDeleted: Bool
    var loginReactiveTime: JSONNull?
    var loginRetryLimit: Int
    var name: String
    var profile: String
    var role: Int
    var token: String
    var updatedAt: String
    var userType: Int
    var username: String
}
