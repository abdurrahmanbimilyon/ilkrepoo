import SwiftUI

struct SuperFlashSaleView: View {
    @StateObject var superFlashSaleViewModel = SuperFlashSaleViewModel()
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
                    Text(StringConstants.kMsgSuperFlashSale)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                    Image("img_nav_explore")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(16.0))
                        .onTapGesture {
                            superFlashSaleViewModel.nextScreen = "SearchView"
                        }
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    ZStack(alignment: .leading) {
                        Image("img_promotion_image")
                            .resizable()
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgSuperFlashSale50)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(209.0),
                                       height: getRelativeHeight(68.0), alignment: .topLeading)
                            HStack {
                                Text(StringConstants.kLbl08)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(9.0))
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(41.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0))
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(4.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                                Text(StringConstants.kLbl34)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(9.0))
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(41.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0))
                                    .padding(.leading, getRelativeWidth(4.0))
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(4.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                                Text(StringConstants.kLbl52)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(10.0))
                                    .padding(.vertical, getRelativeHeight(8.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(41.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0))
                                    .padding(.leading, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(41.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(31.0))
                        }
                        .frame(width: getRelativeWidth(209.0), height: getRelativeHeight(140.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(110.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(206.0),
                           alignment: .center)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                      spacing: 13.0) {
                                ForEach(0 ... 3, id: \.self) { index in
                                    ProductItem3Cell()
                                        .onTapGesture {
                                            superFlashSaleViewModel.nextScreen = "ProductDetailView"
                                        }
                                }
                            }
                        }
                    }
                    .padding(.top, getRelativeHeight(16.0))
                    .fixedSize(horizontal: false, vertical: false)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                Group {
                    NavigationLink(destination: ProductDetailView(),
                                   tag: "ProductDetailView",
                                   selection: $superFlashSaleViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SearchView(),
                                   tag: "SearchView",
                                   selection: $superFlashSaleViewModel.nextScreen,
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

struct SuperFlashSaleView_Previews: PreviewProvider {
    static var previews: some View {
        SuperFlashSaleView()
    }
}
