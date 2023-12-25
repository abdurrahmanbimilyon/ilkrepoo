import SwiftUI

struct NotificationActivityView: View {
    @StateObject var notificationActivityViewModel = NotificationActivityViewModel()
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
                Text(StringConstants.kLblActivity)
                    .font(FontScheme.kPoppinsBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, getRelativeWidth(12.0))
            }
            .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(56.0),
                   alignment: .leading)
            VStack {
                HStack {
                    Image("img_arrow_left")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(94.0))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgTransactionNike)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(265.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgCulpaCillumConsectetur)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(63.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(11.0))
                        Text(StringConstants.kMsgApril302014101)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(118.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(150.0),
                       alignment: .center)
                HStack {
                    Image("img_arrow_left")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(94.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgTransactionNike2)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgCulpaCillumConsectetur)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(63.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(11.0))
                        Text(StringConstants.kMsgApril302014101)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(118.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(150.0),
                       alignment: .center)
                HStack {
                    Image("img_arrow_left")
                        .resizable()
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(1.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgTransactionNike3)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(202.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kMsgCulpaCillumConsectetur)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(63.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(11.0))
                        Text(StringConstants.kMsgApril302014101)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(14.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(118.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(12.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(149.0),
                       alignment: .center)
                .padding(.bottom, getRelativeHeight(5.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(701.0),
                   alignment: .center)
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct NotificationActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationActivityView()
    }
}
