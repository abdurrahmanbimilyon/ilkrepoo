import SwiftUI

struct LailyfaFebrinaCardView: View {
    @StateObject var lailyfaFebrinaCardViewModel = LailyfaFebrinaCardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("img_arrow_left_blue_gray_300")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(26.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(16.0))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Text(StringConstants.kMsgLailyfaFebrina)
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
                        VStack(alignment: .leading, spacing: 0) {
                            Image("img_volume")
                                .resizable()
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsg63269124)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(301.0),
                                       height: getRelativeHeight(36.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(30.0))
                            HStack {
                                Text(StringConstants.kLblCardHolder)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(73.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .opacity(0.5)
                                Text(StringConstants.kLblCardSave)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(59.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(37.0))
                                    .opacity(0.5)
                            }
                            .frame(width: getRelativeWidth(169.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(17.0))
                            HStack {
                                Text(StringConstants.kLblLailyfaFebrina)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(83.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Text(StringConstants.kLbl0624)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(32.0))
                            }
                            .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(18.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(190.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblCardNumber)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(103.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kMsg123123123123,
                                          text: $lailyfaFebrinaCardViewModel.cardnumberText)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(12.0))
                        }
                        .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(81.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblExpirationDate)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(117.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLbl1212,
                                          text: $lailyfaFebrinaCardViewModel.expirationdateText)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
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
                        .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(24.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSecurityCode)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(106.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLbl1219,
                                          text: $lailyfaFebrinaCardViewModel.securitycodeText)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(48.0),
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
                        .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(29.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblCardHolder2)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(92.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                TextField(StringConstants.kLblLailyfaFebrina,
                                          text: $lailyfaFebrinaCardViewModel.cardholdernameText)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(12.0)))
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(Color.clear.opacity(0.7),
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(12.0))
                        }
                        .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(81.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                    }
                    .frame(width: getRelativeWidth(345.0), alignment: .topLeading)
                    .padding(.bottom, getRelativeHeight(5.0))
                    .padding(.horizontal, getRelativeWidth(15.0))
                }
                .padding(.top, getRelativeHeight(19.0))
                Button(action: {
                    lailyfaFebrinaCardViewModel.nextScreen = "CreditCardAndDebitView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblSave)
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
                    NavigationLink(destination: CreditCardAndDebitView(),
                                   tag: "CreditCardAndDebitView",
                                   selection: $lailyfaFebrinaCardViewModel.nextScreen,
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

struct LailyfaFebrinaCardView_Previews: PreviewProvider {
    static var previews: some View {
        LailyfaFebrinaCardView()
    }
}
