import SwiftUI

struct CartView: View {
    @StateObject var cartViewModel = CartViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text(StringConstants.kLblYourCart)
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
                            cartViewModel.nextScreen = "NotificationView"
                        }
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    ProductDetailsCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(343.0), alignment: .center)
                    HStack {
                        HStack {
                            TextField(StringConstants.kMsgEnterCuponCode,
                                      text: $cartViewModel.cuponcodeText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(256.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblApply)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                    .padding(.vertical, getRelativeHeight(19.0))
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(87.0),
                                           height: getRelativeHeight(56.0), alignment: .center)
                                    .cornerRadius(0.0)
                            }
                        })
                        .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .cornerRadius(0.0)
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(56.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(52.0))
                    VStack {
                        HStack {
                            Text(StringConstants.kLblItems3)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(58.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl59886)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        HStack {
                            Text(StringConstants.kLblShipping)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(55.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl4000)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(43.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(19.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                        HStack {
                            Text(StringConstants.kLblImportCharges)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl12800)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(19.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(14.0))
                        Divider()
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(12.0))
                        HStack {
                            Text(StringConstants.kLblTotalPrice)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(70.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLbl76686)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(52.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(164.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(16.0))
                    Button(action: {
                        cartViewModel.nextScreen = "ShipToView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCheckOut)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(57.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0))
                                .shadow(radius: 30)
                                .padding(.vertical, getRelativeHeight(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0))
                    .shadow(radius: 30)
                    .padding(.vertical, getRelativeHeight(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(608.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: NotificationView(),
                                   tag: "NotificationView",
                                   selection: $cartViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ShipToView(),
                                   tag: "ShipToView",
                                   selection: $cartViewModel.nextScreen,
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

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
