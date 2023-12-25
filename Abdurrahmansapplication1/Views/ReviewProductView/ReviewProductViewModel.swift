import Foundation
import SwiftUI

class ReviewProductViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var ratingbarRating: Int = 0
    @Published var ratingbarRating1: Int = 0
    @Published var ratingbarRating2: Int = 0
    @Published var ratingbarRating3: Int = 0
    @Published var ratingbarRating4: Int = 0
}
