import SwiftUI

struct AddAddressView: View {
    @StateObject var addAddressViewModel = AddAddressViewModel()
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
                Text(StringConstants.kLblAddAddress)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, getRelativeWidth(12.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                   alignment: .leading)
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgCountryOrRegion)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(135.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterTheCountry,
                                      text: $addAddressViewModel.countryText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblFirstName)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterTheFirst,
                                      text: $addAddressViewModel.firstnameText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(13.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(82.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(22.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblLastName)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterTheLastName,
                                      text: $addAddressViewModel.lastnameText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(81.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(22.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblStreetAddress)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterTheStreet,
                                      text: $addAddressViewModel.streetaddressText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(81.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgStreetAddress2)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(208.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterTheStreet2,
                                      text: $addAddressViewModel.streetaddressText1)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(16.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(85.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(21.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblCity)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(31.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kLblEnterTheCity,
                                      text: $addAddressViewModel.cityText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(22.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgStateProvinceRegion)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(174.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterTheState,
                                      text: $addAddressViewModel.oldpasswordText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(81.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblZipCode)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterTheZipCode,
                                      text: $addAddressViewModel.zipcodeText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblPhoneNumber)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                        HStack {
                            TextField(StringConstants.kMsgEnterThePhone,
                                      text: $addAddressViewModel.phonenumberText)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .padding()
                        }
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                bottomRight: 5.0)
                                .stroke(Color.clear.opacity(0.7),
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(81.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(23.0))
                }
                .frame(width: getRelativeWidth(343.0), alignment: .topLeading)
                .padding(.horizontal, getRelativeWidth(16.0))
            }
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
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .hideNavigationBar()
    }
}

struct AddAddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddAddressView()
    }
}
