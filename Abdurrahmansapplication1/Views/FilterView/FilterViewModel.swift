import Foundation
import SwiftUI

class FilterViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var priceText: String = ""
    @Published var priceText1: String = ""
}
