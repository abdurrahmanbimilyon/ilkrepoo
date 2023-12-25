import SwiftUI

struct FeedItemCell: View {
    var body: some View {
        HStack {
            Image("img_product_image")
                .resizable()
                .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblNewProduct)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                Text(StringConstants.kMsgNikeAirZoomPegasus2)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(41.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
                Text(StringConstants.kMsgJune32015506)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(14.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
            }
            .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(88.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(12.0))
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct FeedItemCell_Previews: PreviewProvider {

 static var previews: some View {
 			FeedItemCell()
 }
 } */
