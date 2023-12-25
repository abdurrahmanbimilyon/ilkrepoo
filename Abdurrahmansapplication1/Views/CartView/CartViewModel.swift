import Foundation
import SwiftUI

class CartViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var cuponcodeText: String = ""
}
