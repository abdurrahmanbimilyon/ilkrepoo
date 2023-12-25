import SwiftUI

struct AddressItemCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(StringConstants.kLblPriscekila)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(21.0),
                       alignment: .leading)
            Text(StringConstants.kMsg3711SpringHill)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                .fontWeight(.regular)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(262.0), height: getRelativeHeight(38.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(19.0))
                .padding(.trailing, getRelativeWidth(30.0))
            Text(StringConstants.kLbl991234567890)
                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                .fontWeight(.regular)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(18.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(20.0))
            HStack {
                Text(StringConstants.kLblEdit)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                Text(StringConstants.kLblDelete)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(47.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(32.0))
            }
            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(21.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(19.0))
        }
        .frame(width: getRelativeWidth(341.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .stroke(Color.clear.opacity(0.7),
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
            .fill(Color.clear.opacity(0.7)))
        .hideNavigationBar()
    }
}

/* struct AddressItemCell_Previews: PreviewProvider {

 static var previews: some View {
 			AddressItemCell()
 }
 } */
