import SwiftUI

struct ShipToView: View {
    @StateObject var shipToViewModel = ShipToViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("img_arrow_left_blue_gray_300")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(16.0))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Text(StringConstants.kLblShipTo)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                    Image("img_plus_icon")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 2, id: \.self) { index in
                                AddressItemCell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(343.0), alignment: .center)
                .padding(.top, getRelativeHeight(4.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                Button(action: {
                    shipToViewModel.nextScreen = "PaymentMethodView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblNext)
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
                    NavigationLink(destination: PaymentMethodView(),
                                   tag: "PaymentMethodView",
                                   selection: $shipToViewModel.nextScreen,
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

struct ShipToView_Previews: PreviewProvider {
    static var previews: some View {
        ShipToView()
    }
}
