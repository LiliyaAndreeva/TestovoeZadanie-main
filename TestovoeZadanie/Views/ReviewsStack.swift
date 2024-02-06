//
//  ReviewsStack.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct ReviewsStack: View {
    let size: CGFloat
    
    var body: some View {
        HStack{
            Text("Отзывы")
                .font(
                    .system(
                        size: size,
                        weight: .bold,
                        design: .rounded
                    )
                )
                .padding(.leading, size)
            Spacer()
            
            TextButton(text: "Все 152", size: size)
                .padding(.trailing, size)
        }
    }
}

#Preview {
    ReviewsStack(size: 18)
}
