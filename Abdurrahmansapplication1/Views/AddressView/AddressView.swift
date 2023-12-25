import SwiftUI

struct AddressView: View {
    @StateObject var addressViewModel = AddressViewModel()
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
                Text(StringConstants.kLblAddress)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, getRelativeWidth(12.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                   alignment: .leading)
            VStack(spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(0 ... 1, id: \.self) { index in
                            AddressItemSelectedCell()
                        }
                    }
                }
            }
            .frame(width: getRelativeWidth(343.0), alignment: .center)
            .padding(.top, getRelativeHeight(17.0))
            .padding(.horizontal, getRelativeWidth(16.0))
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblAddAddress)
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
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
