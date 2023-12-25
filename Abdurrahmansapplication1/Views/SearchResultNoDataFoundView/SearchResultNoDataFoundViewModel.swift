import Foundation
import SwiftUI

class SearchResultNoDataFoundViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var search1: String = ""
}
