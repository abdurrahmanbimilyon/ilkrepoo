import SwiftUI

struct NotificationFeedView: View {
    @StateObject var notificationFeedViewModel = NotificationFeedViewModel()
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
                Text(StringConstants.kLblFeed)
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
                        ForEach(0 ... 2, id: \.self) { index in
                            FeedItemCell()
                        }
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .center)
            .padding(.top, getRelativeHeight(11.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(768.0))
        .hideNavigationBar()
    }
}

struct NotificationFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationFeedView()
    }
}
