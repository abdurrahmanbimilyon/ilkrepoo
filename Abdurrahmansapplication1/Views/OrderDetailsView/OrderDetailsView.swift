import SwiftUI

struct OrderDetailsView: View {
    @StateObject var orderDetailsViewModel = OrderDetailsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                Text(StringConstants.kLblOrderDetails)
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
                    ZStack(alignment: .center) {
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                            Divider()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                            Divider()
                                .frame(width: getRelativeWidth(96.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
                        }
                        .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.bottom, getRelativeHeight(44.0))
                        .padding(.horizontal, getRelativeWidth(26.0))
                        HStack {
                            VStack {
                                Button(action: {}, label: {
                                    Image("img_pacing")
                                })
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .clipShape(Circle())
                                Text(StringConstants.kLblPacking)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(51.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(15.0))
                            }
                            .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(57.0),
                                   alignment: .center)
                            Spacer()
                            VStack {
                                Button(action: {}, label: {
                                    Image("img_pacing")
                                })
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .clipShape(Circle())
                                Text(StringConstants.kLblShipping)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(57.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(15.0))
                            }
                            .frame(width: getRelativeWidth(57.0), height: getRelativeWidth(57.0),
                                   alignment: .center)
                            Spacer()
                            VStack {
                                Button(action: {}, label: {
                                    Image("img_pacing")
                                })
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .clipShape(Circle())
                                Text(StringConstants.kLblArriving)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(49.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(15.0))
                            }
                            .frame(width: getRelativeWidth(49.0), height: getRelativeHeight(57.0),
                                   alignment: .center)
                            Spacer()
                            VStack(alignment: .leading, spacing: 0) {
                                Image("img_checkmark_blue_50")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(13.0))
                                Text(StringConstants.kLblSuccess)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(53.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                            }
                            .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(57.0),
                               alignment: .center)
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(342.0), height: getRelativeHeight(57.0),
                           alignment: .center)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblProduct)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        ProductDetails1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(343.0), alignment: .leading)
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(249.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgShippingDetails)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        VStack {
                            HStack {
                                Text(StringConstants.kLblDateShipping)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(90.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .opacity(0.5)
                                Spacer()
                                Text(StringConstants.kMsgJanuary162020)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(106.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            HStack {
                                Text(StringConstants.kLblShipping)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .opacity(0.5)
                                Spacer()
                                Text(StringConstants.kLblPosReggular)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(86.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            HStack {
                                Text(StringConstants.kLblNoResi)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(50.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .opacity(0.5)
                                Spacer()
                                Text(StringConstants.kLbl000192848573)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(91.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(14.0))
                            HStack {
                                Text(StringConstants.kLblAddress)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(52.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(22.0))
                                    .opacity(0.5)
                                Spacer()
                                Text(StringConstants.kMsg2727NewOwerri)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.trailing)
                                    .frame(width: getRelativeWidth(160.0),
                                           height: getRelativeHeight(38.0), alignment: .topTrailing)
                                    .padding(.leading, getRelativeWidth(98.0))
                            }
                            .frame(width: getRelativeWidth(311.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(179.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(211.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblPaymentDetails)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(126.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
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
                                .frame(width: getRelativeWidth(311.0),
                                       height: getRelativeHeight(1.0), alignment: .center)
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
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(196.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(46.0))
                }
                .frame(width: getRelativeWidth(345.0), alignment: .topLeading)
                .padding(.bottom, getRelativeHeight(5.0))
                .padding(.horizontal, getRelativeWidth(15.0))
            }
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblNotifyMe)
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
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .hideNavigationBar()
    }
}

struct OrderDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailsView()
    }
}
