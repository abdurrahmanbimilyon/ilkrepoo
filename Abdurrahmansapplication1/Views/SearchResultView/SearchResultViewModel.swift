import Foundation
import SwiftUI

class SearchResultViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var searchText: String = ""
}
