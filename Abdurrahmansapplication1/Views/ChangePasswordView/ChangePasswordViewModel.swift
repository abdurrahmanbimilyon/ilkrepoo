import Foundation
import SwiftUI

class ChangePasswordViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var passwordText: String = ""
    @Published var newpasswordText: String = ""
    @Published var newpasswordText1: String = ""
}
