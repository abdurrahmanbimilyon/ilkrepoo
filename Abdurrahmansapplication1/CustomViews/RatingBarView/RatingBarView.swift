//
//  RatingBarView.swift
//
//  Created by Dhiwise
//

import SwiftUI

/**
  RatingBarView is lightweight & easy-to-use rating bar view to get and set ratings in SwiftUI.

  # Input Variable: #

 - `selected`: parameter wrapped with "@Binding" helps to show the selected ratings of a ratingbarview.

  - `heightWeightImage`: variable to change height of ratingbar view.

  # Example #
 ```
  RatingBarView(selected: .constant(5), heightWeightImage: 30)

 ```
 */

struct RatingBarView: View {
    @Binding var selected: Int
    var heightWeightImage: CGFloat = 5

    var body: some View {
        HStack(spacing: 1) {
            ForEach(1 ..< 6) { index in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: heightWeightImage, height: heightWeightImage)
                    .foregroundColor(self.selected >= index ? .yellow : .gray)
                    .onTapGesture {
                        self.selected = index
                    }
            }
        }.background(Color.clear)
    }
}

struct RatingBarView_Previews: PreviewProvider {
    static var previews: some View {
        RatingBarView(selected: .constant(2), heightWeightImage: 5.0)
            .previewLayout(PreviewLayout.fixed(width: 300, height: 50))
    }
}
