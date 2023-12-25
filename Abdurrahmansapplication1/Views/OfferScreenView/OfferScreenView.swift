import SwiftUI

struct OfferScreenView: View {
    @StateObject var offerScreenViewModel = OfferScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text(StringConstants.kLblOffer)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                    Image("img_notification_icon")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(13.0))
                        .onTapGesture {
                            offerScreenViewModel.nextScreen = "NotificationView"
                        }
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgUseMegslCupon)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(201.0), height: getRelativeHeight(45.0),
                                   alignment: .topLeading)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    OfferBannerCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(343.0), alignment: .center)
                    .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(609.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $offerScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(675.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct OfferScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OfferScreenView()
    }
}
