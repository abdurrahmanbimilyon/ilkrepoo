import SwiftUI

struct SixCell: View {
    var body: some View {
        Text(StringConstants.kLbl6)
            .frame(width: getRelativeWidth(46.0), alignment: .center)
            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
            .fontWeight(.bold)
            .padding(.horizontal, getRelativeWidth(19.0))
            .padding(.vertical, getRelativeHeight(13.0))
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .overlay(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0,
                                    bottomRight: 24.0)
                    .stroke(Color.clear.opacity(0.7),
                            lineWidth: 1))
            .background(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0,
                                       bottomRight: 24.0)
                    .fill(Color.clear.opacity(0.7)))
    }
}

/* struct SixCell_Previews: PreviewProvider {

 static var previews: some View {
 			SixCell()
 }
 } */
