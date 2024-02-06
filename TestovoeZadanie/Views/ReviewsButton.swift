//
//  ReviewsButton.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct ReviewsButton: View {
    var size: CGFloat
    
    var body: some View {

      Button(action: {
                return
            }){ Text("Оставить отзыв")
                    .font(
                        .system(
                            size: 20,
                            weight: .bold,
                            design: .rounded
                        )
                    )
                    .padding(.vertical)
            }
            .frame(width: size, height: size / 10)
            .overlay(
                RoundedRectangle(cornerRadius: 60)
                    .stroke(.colorViews, lineWidth: 3)
            )
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 20))
        }
    }


#Preview {
    ReviewsButton(size: 240)
}
// let sizeWidth = geo.size.width
//sizeWidth - 40, height: sizeWidth / 10
