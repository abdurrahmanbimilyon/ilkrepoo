import SwiftUI

struct DashboardView: View {
    @StateObject var dashboardViewModel = DashboardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("img_search")
                        .resizable()
                        .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(32.0))
                    Text(StringConstants.kLblSearchProduct)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(8.0))
                        .onTapGesture {
                            dashboardViewModel.nextScreen = "SearchView"
                        }
                    HStack {
                        Image("img_download")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .onTapGesture {
                                dashboardViewModel.nextScreen = "FavoriteProductView"
                            }
                        ZStack(alignment: .topTrailing) {
                            Image("img_notification_icon")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    dashboardViewModel.nextScreen = "NotificationView"
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
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        FSPagerViewSUI($dashboardViewModel.eightysixCurrentPage,
                                       dashboardViewModel.sliderData) { item in
                            ZStack(alignment: .leading) {
                                Image("img_promotion_image")
                                    .resizable()
                                    .frame(width: getRelativeWidth(343.0),
                                           height: getRelativeHeight(206.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kMsgSuperFlashSale50)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.bold)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(209.0),
                                               height: getRelativeHeight(68.0),
                                               alignment: .topLeading)
                                    HStack {
                                        Text(StringConstants.kLbl08)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.bold)
                                            .padding(.horizontal, getRelativeWidth(9.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(42.0),
                                                   height: getRelativeHeight(41.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                       bottomLeft: 5.0,
                                                                       bottomRight: 5.0))
                                        Text(StringConstants.kLbl)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.bold)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(4.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(4.0))
                                        Text(StringConstants.kLbl34)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.bold)
                                            .padding(.horizontal, getRelativeWidth(9.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(42.0),
                                                   height: getRelativeHeight(41.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                       bottomLeft: 5.0,
                                                                       bottomRight: 5.0))
                                            .padding(.leading, getRelativeWidth(4.0))
                                        Text(StringConstants.kLbl)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.bold)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(4.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(4.0))
                                        Text(StringConstants.kLbl52)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.bold)
                                            .padding(.horizontal, getRelativeWidth(10.0))
                                            .padding(.vertical, getRelativeHeight(8.0))
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(42.0),
                                                   height: getRelativeHeight(41.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                       bottomLeft: 5.0,
                                                                       bottomRight: 5.0))
                                            .padding(.leading, getRelativeWidth(4.0))
                                    }
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeHeight(41.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(31.0))
                                }
                                .frame(width: getRelativeWidth(209.0),
                                       height: getRelativeHeight(140.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(24.0))
                                .padding(.trailing, getRelativeWidth(110.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                                   alignment: .center)
                        }
                        PageIndicator(numPages: dashboardViewModel.sliderData.count,
                                      currentPage: $dashboardViewModel.eightysixCurrentPage,
                                      selectedColor: Color.blue,
                                      unSelectedColor: Color.gray, spacing: 8.0)
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Text(StringConstants.kLblCategory)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblMoreCategory)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(114.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .onTapGesture {
                                        dashboardViewModel.nextScreen = "ListCategoryView"
                                    }
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            .padding(.trailing)
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 4, id: \.self) { index in
                                            ManShirtCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(359.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(359.0), height: getRelativeHeight(139.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(25.0))
                        HStack {
                            Text(StringConstants.kLblFlashSale)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(77.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSeeMore)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                        }
                        .onTapGesture {
                            dashboardViewModel.nextScreen = "SuperFlashSaleView"
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.trailing, getRelativeWidth(16.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        ProductItemCell()
                                            .onTapGesture {
                                                dashboardViewModel.nextScreen = "ProductDetailView"
                                            }
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(359.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(12.0))
                        HStack {
                            Text(StringConstants.kLblMegaSale)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(79.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSeeMore)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(22.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.trailing, getRelativeWidth(16.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        ProductItem1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(359.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(10.0))
                        Image("img_recomended_product")
                            .resizable()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0))
                            .padding(.top, getRelativeHeight(29.0))
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                          spacing: 13.0) {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        ProductItem2Cell()
                                    }
                                }
                            }
                        }
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.trailing, getRelativeWidth(16.0))
                        .fixedSize(horizontal: false, vertical: false)
                    }
                    .frame(width: getRelativeWidth(359.0), alignment: .topLeading)
                    .padding(.leading, getRelativeWidth(16.0))
                }
                Group {
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ListCategoryView(),
                                   tag: "ListCategoryView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SuperFlashSaleView(),
                                   tag: "SuperFlashSaleView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FavoriteProductView(),
                                   tag: "FavoriteProductView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProductDetailView(),
                                   tag: "ProductDetailView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
