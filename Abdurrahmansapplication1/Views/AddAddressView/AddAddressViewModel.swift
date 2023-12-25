import Foundation
import SwiftUI

class AddAddressViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var countryText: String = ""
    @Published var firstnameText: String = ""
    @Published var lastnameText: String = ""
    @Published var streetaddressText: String = ""
    @Published var streetaddressText1: String = ""
    @Published var cityText: String = ""
    @Published var oldpasswordText: String = ""
    @Published var zipcodeText: String = ""
    @Published var phonenumberText: String = ""
}
