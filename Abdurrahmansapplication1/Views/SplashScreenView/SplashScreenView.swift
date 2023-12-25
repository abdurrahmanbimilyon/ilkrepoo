import SwiftUI

struct SplashScreenView: View {
    @StateObject var splashScreenViewModel = SplashScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Image("img_logo")
                    .resizable()
                    .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.bottom, getRelativeHeight(5.0))
                Group {
                    NavigationLink(destination: LoginView(),
                                   tag: "LoginView",
                                   selection: $splashScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            splashScreenViewModel.nextScreen = "LoginView"
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
