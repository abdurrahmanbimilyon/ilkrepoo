import SwiftUI

struct WriteReviewFillView: View {
    @StateObject var writeReviewFillViewModel = WriteReviewFillViewModel()
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
                Text(StringConstants.kLblWriteReview)
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
                    Text(StringConstants.kMsgPleaseWriteOverall)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(44.0),
                               alignment: .topLeading)
                    RatingBarView(selected: $writeReviewFillViewModel.ratingbarRating,
                                  heightWeightImage: getRelativeWidth(32.0))
                        .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(32.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(13.0))
                }
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(90.0),
                       alignment: .center)
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgWriteYourReview)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.bold)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(139.0), height: getRelativeHeight(21.0),
                               alignment: .topLeading)
                    HStack {
                        TextField(StringConstants.kLblAddReview,
                                  text: $writeReviewFillViewModel.addreviewText)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(12.0)))
                            .padding()
                    }
                    .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(160.0),
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
                .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(194.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(22.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(611.0),
                   alignment: .center)
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLblWriteReview)
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

struct WriteReviewFillView_Previews: PreviewProvider {
    static var previews: some View {
        WriteReviewFillView()
    }
}
