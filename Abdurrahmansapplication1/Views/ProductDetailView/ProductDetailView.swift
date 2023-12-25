import SwiftUI

struct ProductDetailView: View {
    @StateObject var productDetailViewModel = ProductDetailViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("img_arrow_left_blue_gray_300")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(16.0))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Text(StringConstants.kMsgNikeAirMax2702)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                    HStack {
                        Image("img_nav_explore")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .onTapGesture {
                                productDetailViewModel.nextScreen = "SearchView"
                            }
                        Image("img_more_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(64.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        VStack(alignment: .leading, spacing: 0) {
                            FSPagerViewSUI($productDetailViewModel.fortyeightCurrentPage,
                                           productDetailViewModel.sliderData) { item in
                                Image("img_product_image_238x375")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(238.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            PageIndicator(numPages: productDetailViewModel.sliderData.count,
                                          currentPage: $productDetailViewModel
                                              .fortyeightCurrentPage,
                                          selectedColor: Color.blue,
                                          unSelectedColor: Color.gray, spacing: 8.0)
                            HStack {
                                Text(StringConstants.kMsgNikeAirZoomPegasus)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(275.0),
                                           height: getRelativeHeight(58.0), alignment: .topLeading)
                                Image("img_download")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(2.0))
                                    .padding(.leading, getRelativeWidth(44.0))
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(58.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(25.0))
                            RatingBarView(selected: $productDetailViewModel.ratingbarRating,
                                          heightWeightImage: getRelativeWidth(16.0))
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(16.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(9.0))
                                .padding(.leading, getRelativeWidth(16.0))
                            Text(StringConstants.kLbl29943)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(408.0),
                               alignment: .center)
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSelectSize)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(81.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 5, id: \.self) { index in
                                            SixCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(368.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(82.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(22.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSelectColor)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(92.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(7.0))
                            Image("img_colors")
                                .resizable()
                                .frame(width: getRelativeWidth(359.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.leading, getRelativeWidth(7.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(81.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSpecification)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(101.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                Text(StringConstants.kLblShown)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kMsgLaserBlueAnth)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(169.0),
                                           height: getRelativeHeight(61.0), alignment: .topTrailing)
                                    .padding(.leading, getRelativeWidth(128.0))
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(63.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(12.0))
                            HStack {
                                Text(StringConstants.kLblStyle)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                Text(StringConstants.kLblCd0113400)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(234.0))
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(18.0))
                            Text(StringConstants.kMsgTheNikeAirMax)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(320.0),
                                       height: getRelativeHeight(85.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(31.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(239.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(24.0))
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Text(StringConstants.kLblReviewProduct)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(118.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                Text(StringConstants.kLblSeeMore)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(156.0))
                                    .onTapGesture {
                                        productDetailViewModel.nextScreen = "ReviewProductView"
                                    }
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(21.0),
                                   alignment: .leading)
                            HStack {
                                RatingBarView(selected: $productDetailViewModel.ratingbarRating1,
                                              heightWeightImage: getRelativeWidth(16.0))
                                    .frame(width: getRelativeWidth(96.0),
                                           height: getRelativeHeight(16.0), alignment: .center)
                                Text(StringConstants.kLbl45)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(17.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kLbl5Review)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(56.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(181.0), height: getRelativeHeight(16.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(8.0))
                            HStack {
                                Image("img_profile_picture")
                                    .resizable()
                                    .frame(width: getRelativeWidth(48.0),
                                           height: getRelativeWidth(48.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblJamesLawson)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(112.0),
                                               height: getRelativeHeight(21.0),
                                               alignment: .topLeading)
                                    RatingBarView(selected: $productDetailViewModel
                                        .ratingbarRating2,
                                        heightWeightImage: getRelativeWidth(16.0))
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(16.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(4.0))
                                }
                                .frame(width: getRelativeWidth(112.0),
                                       height: getRelativeHeight(41.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(176.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(16.0))
                            Text(StringConstants.kMsgAirMaxAreAlways)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(339.0),
                                       height: getRelativeHeight(107.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            ProductPictureCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(240.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.trailing, getRelativeWidth(112.0))
                            Text(StringConstants.kMsgDecember102016)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(14.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(355.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgYouMightAlsoLike)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(139.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(16.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            ProductItem5Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(270.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblAddToCart)
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
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
                .shadow(radius: 30)
                .padding(.horizontal, getRelativeWidth(16.0))
                Group {
                    NavigationLink(destination: ReviewProductView(),
                                   tag: "ReviewProductView",
                                   selection: $productDetailViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $productDetailViewModel.nextScreen,
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

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
