import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                    Text(StringConstants.kLblProfile)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Image("img_profile_picture_72x72")
                            .resizable()
                            .frame(width: getRelativeWidth(72.0), height: getRelativeWidth(72.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                            .clipShape(Circle())
                        VStack {
                            Text(StringConstants.kLblDominicOvo)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(97.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                            Text(StringConstants.kLblDominicOvo2)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(98.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(8.0))
                        }
                        .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(47.0),
                               alignment: .top)
                        .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(72.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(16.0))
                    HStack {
                        Image("img_gender_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblGender)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kLblMale)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(30.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_right_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(32.0))
                    HStack {
                        Image("img_date_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblBirthday)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(57.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kLbl12122000)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_right_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    HStack {
                        Image("img_mail_primary")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblEmail)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kMsgRex4domGmailCom)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_right_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    HStack {
                        Image("img_credit_card_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblPhoneNumber)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(98.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kLbl3075550133)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_right_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    HStack {
                        Image("img_lock_primary")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblChangePassword)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Text("Spacer")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(18.0))
                        Text(StringConstants.kMsg)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(18.0),
                                   alignment: .topLeading)
                        Image("img_right_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .onTapGesture {
                        profileViewModel.nextScreen = "ChangePasswordView"
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(54.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(5.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(702.0),
                       alignment: .center)
                Group {
                    NavigationLink(destination: ChangePasswordView(),
                                   tag: "ChangePasswordView",
                                   selection: $profileViewModel.nextScreen,
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
