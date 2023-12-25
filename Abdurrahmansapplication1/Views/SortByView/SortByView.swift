import SwiftUI

struct SortByView: View {
    @StateObject var sortByViewModel = SortByViewModel()
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
                Text(StringConstants.kLblSortBy)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, getRelativeWidth(12.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                   alignment: .leading)
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblBestMatch)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                Text(StringConstants.kMsgTimeEndingSoonest)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(37.0))
                Text(StringConstants.kMsgTimeNewlyListed)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(35.0))
                Text(StringConstants.kMsgPriceShipping)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(187.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(36.0))
                Text(StringConstants.kMsgPriceShipping2)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(194.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(36.0))
                Text(StringConstants.kMsgDistanceNearest)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(147.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.vertical, getRelativeHeight(34.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(700.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct SortByView_Previews: PreviewProvider {
    static var previews: some View {
        SortByView()
    }
}
