import SwiftUI

struct AddCardView: View {
    @StateObject var addCardViewModel = AddCardViewModel()
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
                    Text(StringConstants.kLblAddCard)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblCardNumber)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterCardNumber,
                                      text: $addCardViewModel.cardnumberText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
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
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(81.0),
                           alignment: .center)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblExpirationDate)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kLblExpirationDate,
                                      text: $addCardViewModel.expirationdateText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(48.0),
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
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblSecurityCode)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(106.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kLblSecurityCode,
                                      text: $addCardViewModel.securitycodeText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(48.0),
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
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(29.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblCardHolder2)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterCardNumber,
                                      text: $addCardViewModel.cardnumberText1)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
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
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(81.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(23.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(594.0),
                       alignment: .center)
                Button(action: {
                    addCardViewModel.nextScreen = "CreditCardAndDebitView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblAddCard)
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
                                   selection: $addCardViewModel.nextScreen,
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

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardView()
    }
}
