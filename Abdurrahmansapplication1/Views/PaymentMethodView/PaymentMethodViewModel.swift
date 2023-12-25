import Foundation
import SwiftUI

class PaymentMethodViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
