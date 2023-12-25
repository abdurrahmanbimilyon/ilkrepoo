import SwiftUI

struct SearchResultNoDataFoundView: View {
    @StateObject var searchResultNoDataFoundViewModel = SearchResultNoDataFoundViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Spacer()
                    Image("img_search")
                        .resizable()
                        .frame(width: getRelativeWidth(16.0), height: getRelativeWidth(16.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(15.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(8.0))
                    TextField(StringConstants.kLblSearchProduct,
                              text: $searchResultNoDataFoundViewModel.search1)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.leading, getRelativeWidth(16.0))
                HStack {
                    Image("img_sort")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Image("img_filter")
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
            VStack {
                Divider()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(1.0),
                           alignment: .center)
                HStack {
                    Text(StringConstants.kLbl0Result)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.bottom, getRelativeHeight(4.0))
                        .opacity(0.5)
                    Text("Spacer")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(187.0), height: getRelativeHeight(18.0))
                    Text(StringConstants.kLblManShoes)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                    Image("img_down_icon")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(24.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(15.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(131.0))
                VStack {
                    Button(action: {}, label: {
                        Image("img_close_onprimarycontainer")
                    })
                    .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                           alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 30)
                    Text(StringConstants.kMsgProductNotFound)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(236.0), height: getRelativeHeight(36.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(15.0))
                    Text(StringConstants.kMsgThankYouForShopping)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(231.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(11.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(153.0),
                       alignment: .center)
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblBackToHome)
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
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
                .shadow(radius: 30)
                .padding(.top, getRelativeHeight(16.0))
                .padding(.horizontal, getRelativeWidth(16.0))
                Text("Spacer")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(281.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(701.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct SearchResultNoDataFoundView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultNoDataFoundView()
    }
}
