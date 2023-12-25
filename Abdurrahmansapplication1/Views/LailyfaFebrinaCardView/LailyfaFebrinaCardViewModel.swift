import Foundation
import SwiftUI

class LailyfaFebrinaCardViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var cardnumberText: String = ""
    @Published var expirationdateText: String = ""
    @Published var securitycodeText: String = ""
    @Published var cardholdernameText: String = ""
}
