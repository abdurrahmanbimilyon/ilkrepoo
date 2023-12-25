import SwiftUI

struct ChooseCreditOrDebitCardView: View {
    @StateObject var chooseCreditOrDebitCardViewModel = ChooseCreditOrDebitCardViewModel()
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
                    Text(StringConstants.kLblChooseCard)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                    Image("img_plus_icon")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack {
                    FSPagerViewSUI($chooseCreditOrDebitCardViewModel.fiftyCurrentPage,
                                   chooseCreditOrDebitCardViewModel.sliderData) { item in
                        VStack(alignment: .leading, spacing: 0) {
                            Image("img_volume")
                                .resizable()
                                .frame(width: getRelativeWidth(36.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(7.0))
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
                                Text(StringConstants.kLblDominicOvo)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(71.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Text(StringConstants.kLbl0624)
                                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.bold)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(44.0))
                            }
                            .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(9.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(190.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0))
                    }
                    PageIndicator(numPages: chooseCreditOrDebitCardViewModel.sliderData.count,
                                  currentPage: $chooseCreditOrDebitCardViewModel.fiftyCurrentPage,
                                  selectedColor: Color.blue, unSelectedColor: Color.gray,
                                  spacing: 8.0)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(594.0),
                       alignment: .center)
                Button(action: {
                    chooseCreditOrDebitCardViewModel.nextScreen = "SuccessScreenView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblPay76686)
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
                    NavigationLink(destination: SuccessScreenView(),
                                   tag: "SuccessScreenView",
                                   selection: $chooseCreditOrDebitCardViewModel.nextScreen,
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

struct ChooseCreditOrDebitCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCreditOrDebitCardView()
    }
}
