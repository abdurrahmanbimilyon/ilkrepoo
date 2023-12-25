import SwiftUI

struct OfferBannerCell: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("img_promotion_image")
                .resizable()
                .frame(width: getRelativeWidth(341.0), height: getRelativeHeight(206.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgSuperFlashSale50)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(68.0),
                           alignment: .leading)
                HStack {
                    Text(StringConstants.kLbl08)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .padding(.horizontal, getRelativeWidth(9.0))
                        .padding(.vertical, getRelativeHeight(8.0))
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(41.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0))
                    Text(StringConstants.kLbl)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(2.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                    Text(StringConstants.kLbl34)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .padding(.horizontal, getRelativeWidth(9.0))
                        .padding(.vertical, getRelativeHeight(8.0))
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(41.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0))
                        .padding(.leading, getRelativeWidth(4.0))
                    Text(StringConstants.kLbl)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(2.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                    Text(StringConstants.kLbl52)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .padding(.horizontal, getRelativeWidth(10.0))
                        .padding(.vertical, getRelativeHeight(8.0))
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(41.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0))
                        .padding(.leading, getRelativeWidth(4.0))
                }
                .frame(width: getRelativeWidth(148.0), height: getRelativeHeight(41.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(31.0))
            }
            .frame(width: getRelativeWidth(207.0), height: getRelativeHeight(140.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(24.0))
            .padding(.trailing, getRelativeWidth(110.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(341.0), alignment: .leading)
    }
}

/* struct OfferBannerCell_Previews: PreviewProvider {

 static var previews: some View {
 			OfferBannerCell()
 }
 } */
