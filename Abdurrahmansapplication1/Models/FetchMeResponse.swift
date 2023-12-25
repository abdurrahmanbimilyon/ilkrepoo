
import Foundation

struct FetchMeResponse: Codable {
    var data: FetchMeResponseData
    var message: String
    var status: String
}

struct FetchMeResponseData: Codable {
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
    var updatedAt: String
    var userType: Int
    var username: String
}
