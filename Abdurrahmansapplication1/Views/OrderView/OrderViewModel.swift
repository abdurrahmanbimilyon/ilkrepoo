import Foundation
import SwiftUI

class OrderViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
