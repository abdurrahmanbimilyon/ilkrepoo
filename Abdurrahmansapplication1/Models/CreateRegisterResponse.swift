
import Foundation

struct CreateRegisterResponse: Codable {
    var data: CreateRegisterResponseData
    var message: String
    var status: String
}

struct CreateRegisterResponseData: Codable {
    var createdAt: String
    var email: String
    var id: String
    var isActive: Bool
    var isDeleted: Bool
    var loginRetryLimit: Int
    var name: String
    var updatedAt: String
    var userType: Int
    var username: String
}
