import SwiftUI

struct ExploreView: View {
    @StateObject var exploreViewModel = ExploreViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    HStack {
                        Spacer()
                        Image("img_search")
                            .resizable()
                            .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(15.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(8.0))
                        TextField(StringConstants.kLblSearchProduct,
                                  text: $exploreViewModel.search1)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .padding()
                    }
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.leading, getRelativeWidth(16.0))
                    HStack {
                        Image("img_download")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        ZStack(alignment: .topTrailing) {
                            Image("img_notification_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    exploreViewModel.nextScreen = "NotificationView"
                                }
                            Image("img_close_pink_300")
                                .resizable()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(14.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0))
                        .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblManFashion)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(97.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem(),
                                                    SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 21.0) {
                                    ForEach(0 ... 5, id: \.self) { index in
                                        ManWorkEquipmentCell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(13.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(251.0),
                           alignment: .center)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblWomanFashion)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem(),
                                                    SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 21.0) {
                                    ForEach(0 ... 6, id: \.self) { index in
                                        WomanTShirtCell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(13.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(252.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(37.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(608.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $exploreViewModel.nextScreen,
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

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
