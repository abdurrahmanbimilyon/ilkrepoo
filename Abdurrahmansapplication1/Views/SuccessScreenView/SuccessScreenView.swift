import SwiftUI

struct SuccessScreenView: View {
    @StateObject var successScreenViewModel = SuccessScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Button(action: {}, label: {
                        Image("img_checkmark")
                    })
                    .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                           alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 30)
                    Text(StringConstants.kLblSuccess)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(36.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(15.0))
                    Text(StringConstants.kMsgThankYouForShopping)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(231.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(11.0))
                        .opacity(0.5)
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(153.0),
                       alignment: .center)
                Button(action: {
                    successScreenViewModel.nextScreen = "OrderView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblBackToOrder)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(18.0))
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0))
                            .shadow(radius: 30)
                            .padding(.top, getRelativeHeight(16.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
                .shadow(radius: 30)
                .padding(.top, getRelativeHeight(16.0))
                Group {
                    NavigationLink(destination: OrderView(),
                                   tag: "OrderView",
                                   selection: $successScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SuccessScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessScreenView()
    }
}
