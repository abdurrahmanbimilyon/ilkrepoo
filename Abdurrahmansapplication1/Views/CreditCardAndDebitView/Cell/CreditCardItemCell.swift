import SwiftUI

struct CreditCardItemCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_volume")
                .resizable()
                .frame(width: getRelativeWidth(34.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .scaledToFit()
            Text(StringConstants.kMsg63269124)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(24.0)))
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(299.0), height: getRelativeHeight(36.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(30.0))
            HStack {
                Text(StringConstants.kLblCardHolder)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(71.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .opacity(0.5)
                Text(StringConstants.kLblCardSave)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(37.0))
                    .opacity(0.5)
            }
            .frame(width: getRelativeWidth(167.0), height: getRelativeHeight(17.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(17.0))
            HStack {
                Text(StringConstants.kLblDominicOvo)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(68.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                Text(StringConstants.kLbl0624)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(10.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(41.0))
            }
            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(16.0),
                   alignment: .leading)
        }
        .frame(width: getRelativeWidth(341.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0))
        .hideNavigationBar()
    }
}

/* struct CreditCardItemCell_Previews: PreviewProvider {

 static var previews: some View {
 			CreditCardItemCell()
 }
 } */
