import SwiftUI

struct ProductPictureCell: View {
    var body: some View {
        Image("img_product_picture02")
            .frame(width: getRelativeWidth(70.0), alignment: .leading)
            .resizable()
            .scaledToFit()
            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                       bottomRight: 8.0))
    }
}

/* struct ProductPictureCell_Previews: PreviewProvider {

 static var previews: some View {
 			ProductPictureCell()
 }
 } */
