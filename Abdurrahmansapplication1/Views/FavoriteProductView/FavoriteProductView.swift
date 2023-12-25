import SwiftUI

struct FavoriteProductView: View {
    @StateObject var favoriteProductViewModel = FavoriteProductViewModel()
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
                    Text(StringConstants.kMsgFavoriteProduct)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                  spacing: 13.0) {
                            ForEach(0 ... 3, id: \.self) { index in
                                ProductItem4Cell()
                                    .onTapGesture {
                                        favoriteProductViewModel.nextScreen = "ProductDetailView"
                                    }
                            }
                        }
                    }
                }
                .padding(.top, getRelativeHeight(8.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                .fixedSize(horizontal: false, vertical: false)
                Group {
                    NavigationLink(destination: ProductDetailView(),
                                   tag: "ProductDetailView",
                                   selection: $favoriteProductViewModel.nextScreen,
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

struct FavoriteProductView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteProductView()
    }
}
