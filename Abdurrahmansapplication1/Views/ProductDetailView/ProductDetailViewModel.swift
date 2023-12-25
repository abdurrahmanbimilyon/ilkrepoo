import Foundation
import SwiftUI

class ProductDetailViewModel: ObservableObject {
    struct TutorialItem: Identifiable {
        let id: UUID = .init()
        let index: Int
    }

    @Published var nextScreen: String? = nil
    @Published var fortyeightCurrentPage: Int = 0
    @Published var sliderData: [TutorialItem] = [
        TutorialItem(index: 0)
    ]

    @Published var ratingbarRating: Int = 0
    @Published var ratingbarRating1: Int = 0
    @Published var ratingbarRating2: Int = 0
}
