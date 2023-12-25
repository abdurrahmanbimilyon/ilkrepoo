import SwiftUI

struct ProductItem4Cell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_product_image_2")
                .resizable()
                .frame(width: getRelativeWidth(131.0), height: getRelativeWidth(133.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
            Text(StringConstants.kMsgNikeAirMax270)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(34.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
            RatingBarView(selected: .constant(2), heightWeightImage: getRelativeWidth(12.0))
                .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(12.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(5.0))
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLbl29943)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(50.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                    HStack {
                        Text(StringConstants.kLbl53433)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                        Spacer()
                        Text(StringConstants.kLbl24Off)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(14.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                }
                .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(38.0),
                       alignment: .leading)
                Image("img_trash_icon")
                    .resizable()
                    .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(17.0))
            }
            .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(38.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(18.0))
        }
        .frame(width: getRelativeWidth(163.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct ProductItem4Cell_Previews: PreviewProvider {

 static var previews: some View {
 			ProductItem4Cell()
 }
 } */
