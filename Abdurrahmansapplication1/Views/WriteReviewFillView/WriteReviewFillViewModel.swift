import Foundation
import SwiftUI

class WriteReviewFillViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
    @Published var addreviewText: String = ""
}
