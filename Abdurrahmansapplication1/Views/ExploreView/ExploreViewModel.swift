import Foundation
import SwiftUI

class ExploreViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var search1: String = ""
}
