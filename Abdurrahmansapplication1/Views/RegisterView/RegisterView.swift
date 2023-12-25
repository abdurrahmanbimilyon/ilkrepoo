import SwiftUI

struct RegisterView: View {
    @StateObject var registerViewModel = RegisterViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Button(action: {}, label: {
                    Image("img_close")
                })
                .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                           bottomRight: 16.0))
                Text(StringConstants.kMsgLetSGetStarted)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(24.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(16.0))
                Text(StringConstants.kMsgCreateAnNewAccount)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(152.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(139.0),
                   alignment: .center)
            HStack {
                Spacer()
                Image("img_user")
                    .resizable()
                    .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.vertical, getRelativeHeight(12.0))
                    .padding(.leading, getRelativeWidth(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                TextField(StringConstants.kLblFullName, text: $registerViewModel.fullnameText)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .padding()
            }
            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
                .stroke(Color.clear.opacity(0.7),
                        lineWidth: 1))
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0)
                    .fill(Color.clear.opacity(0.7)))
            .padding(.top, getRelativeHeight(30.0))
            HStack {
                Spacer()
                Image("img_mail")
                    .resizable()
                    .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                    .padding(.vertical, getRelativeHeight(12.0))
                    .padding(.leading, getRelativeWidth(16.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                TextField(StringConstants.kLblYourEmail, text: $registerViewModel.emailText)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .padding()
            }
            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
                .stroke(Color.clear.opacity(0.7),
                        lineWidth: 1))
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0)
                    .fill(Color.clear.opacity(0.7)))
            .padding(.top, getRelativeHeight(8.0))
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
                SecureField(StringConstants.kLblPassword, text: $registerViewModel.passwordText)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .padding()
            }
            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
                .stroke(Color.clear.opacity(0.7),
                        lineWidth: 1))
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0)
                    .fill(Color.clear.opacity(0.7)))
            .padding(.top, getRelativeHeight(8.0))
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
                SecureField(StringConstants.kLblPasswordAgain,
                            text: $registerViewModel.passwordText1)
                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                    .padding()
            }
            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                   alignment: .center)
            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0)
                .stroke(Color.clear.opacity(0.7),
                        lineWidth: 1))
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0)
                    .fill(Color.clear.opacity(0.7)))
            .padding(.top, getRelativeHeight(8.0))
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblSignUp)
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
                        .padding(.top, getRelativeHeight(20.0))
                }
            })
            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0))
            .shadow(radius: 30)
            .padding(.top, getRelativeHeight(20.0))
            Text(StringConstants.kMsgHaveAnAccount)
                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(18.0),
                       alignment: .topLeading)
                .padding(.top, getRelativeHeight(20.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
