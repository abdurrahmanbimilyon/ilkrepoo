import Foundation
import SwiftUI

class DashboardViewModel: ObservableObject {
    struct TutorialItem: Identifiable {
        let id: UUID = .init()
        let index: Int
    }

    @Published var nextScreen: String? = nil
    @Published var eightysixCurrentPage: Int = 0
    @Published var sliderData: [TutorialItem] = [
        TutorialItem(index: 0)
    ]
}
