import Foundation
import SwiftUI

class RegisterViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var fullnameText: String = ""
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    @Published var passwordText1: String = ""
}
