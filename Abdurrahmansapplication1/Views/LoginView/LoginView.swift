import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Button(action: {}, label: {
                        Image("img_close")
                    })
                    .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0))
                    Text(StringConstants.kMsgWelcomeToECom)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(16.0))
                    Text(StringConstants.kMsgSignInToContinue)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(10.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(141.0),
                       alignment: .center)
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
                    TextField(StringConstants.kLblYourEmail, text: $loginViewModel.emailText)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(28.0))
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
                    SecureField(StringConstants.kLblPassword, text: $loginViewModel.passwordText)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                        .padding()
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(48.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                        bottomRight: 5.0)
                        .stroke(Color.clear.opacity(0.7),
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0)
                        .fill(Color.clear.opacity(0.7)))
                .padding(.top, getRelativeHeight(10.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblSignIn)
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
                            .padding(.top, getRelativeHeight(16.0))
                    }
                })
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
                .shadow(radius: 30)
                .padding(.top, getRelativeHeight(16.0))
                HStack {
                    Divider()
                        .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.bottom, getRelativeHeight(9.0))
                    Spacer()
                    Text(StringConstants.kLblOr)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(21.0), height: getRelativeWidth(21.0),
                               alignment: .topLeading)
                    Spacer()
                    Divider()
                        .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(1.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.bottom, getRelativeHeight(9.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(21.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(18.0))
                VStack {
                    Button(action: {
                        loginViewModel.googleSignIn()
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgLoginWithGoogle)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(57.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(Color.clear.opacity(0.7),
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .shadow(radius: 30)
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .topLeading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .shadow(radius: 30)
                    Button(action: {
                        loginViewModel.facebookSignIn()
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgLoginWithFacebook)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(343.0),
                                       height: getRelativeHeight(57.0), alignment: .topLeading)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(Color.clear.opacity(0.7),
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .shadow(radius: 30)
                                .padding(.top, getRelativeHeight(8.0))
                        }
                    })
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(57.0),
                           alignment: .topLeading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                            bottomRight: 5.0)
                            .stroke(Color.clear.opacity(0.7),
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                               bottomRight: 5.0)
                            .fill(Color.clear.opacity(0.7)))
                    .shadow(radius: 30)
                    .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(122.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(16.0))
                Text(StringConstants.kMsgForgotPassword)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(17.0))
                Text(StringConstants.kMsgDonTHaveAnAccount)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(212.0), height: getRelativeHeight(18.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(7.0))
                    .onTapGesture {
                        loginViewModel.nextScreen = "RegisterView"
                    }
                Group {
                    NavigationLink(destination: RegisterView(),
                                   tag: "RegisterView",
                                   selection: $loginViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
