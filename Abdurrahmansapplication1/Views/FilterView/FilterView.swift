import SwiftUI

struct FilterView: View {
    @StateObject var filterViewModel = FilterViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("img_close_icon")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(23.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(18.0))
                    Text(StringConstants.kLblFilterSearch)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblPriceRange)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(91.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            HStack {
                                HStack {
                                    TextField(StringConstants.kLbl1245,
                                              text: $filterViewModel.priceText)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(12.0)))
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(165.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(Color.clear.opacity(0.7),
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.trailing, getRelativeWidth(6.0))
                                Spacer()
                                HStack {
                                    TextField(StringConstants.kLbl9344,
                                              text: $filterViewModel.priceText1)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(12.0)))
                                        .padding()
                                }
                                .frame(width: getRelativeWidth(165.0),
                                       height: getRelativeHeight(48.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(Color.clear.opacity(0.7),
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                               alignment: .leading)
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblCondition)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(75.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Text("Condition")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(261.0),
                                       height: getRelativeHeight(50.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(13.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(84.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(34.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblBuyingFormat)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(113.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Text("BuyingFormate")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(325.0),
                                       height: getRelativeHeight(108.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(11.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(140.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(24.0))
                        Text(StringConstants.kLblItemLocation)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(22.0))
                        Text("ItemLocation")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(108.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(13.0))
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblShowOnly)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Text("ShowOnly")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(314.0),
                                       height: getRelativeHeight(340.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(371.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(25.0))
                    }
                    .frame(width: getRelativeWidth(343.0), alignment: .topLeading)
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                Button(action: {
                    filterViewModel.nextScreen = "SearchResultView"
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblApply)
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
                    NavigationLink(destination: SearchResultView(),
                                   tag: "SearchResultView",
                                   selection: $filterViewModel.nextScreen,
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

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
