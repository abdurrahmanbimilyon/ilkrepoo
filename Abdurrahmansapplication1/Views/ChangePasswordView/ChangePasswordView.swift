import SwiftUI

struct ChangePasswordView: View {
    @StateObject var changePasswordViewModel = ChangePasswordViewModel()
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
                Text(StringConstants.kLblChangePassword)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, getRelativeWidth(12.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                   alignment: .leading)
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblOldPassword)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(104.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                    HStack {
                        Spacer()
                        Image("img_lock")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        SecureField(StringConstants.kMsg,
                                    text: $changePasswordViewModel.passwordText)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
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
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblNewPassword)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                    HStack {
                        Spacer()
                        Image("img_lock")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        SecureField(StringConstants.kMsg,
                                    text: $changePasswordViewModel.newpasswordText)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
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
                    Text(StringConstants.kMsgNewPasswordAgain)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(159.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                    HStack {
                        Spacer()
                        Image("img_lock")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(12.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        SecureField(StringConstants.kMsg,
                                    text: $changePasswordViewModel.newpasswordText1)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
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
                .padding(.vertical, getRelativeHeight(24.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(593.0),
                   alignment: .center)
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblSave)
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

struct ChangePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ChangePasswordView()
    }
}
