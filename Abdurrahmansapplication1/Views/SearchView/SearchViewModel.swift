import Foundation
import SwiftUI

class SearchViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchText: String = ""
}
