import SwiftUI

struct DashboardContainerView: View {
    @StateObject var dashboardContainerViewModel = DashboardContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Text("Content")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
            Text("BottomBar")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(66.0),
                       alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .hideNavigationBar()
        .onAppear {}
    }
}

struct DashboardContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardContainerView()
    }
}
