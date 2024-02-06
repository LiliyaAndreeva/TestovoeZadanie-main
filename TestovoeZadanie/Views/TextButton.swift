//
//  TextButton.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct TextButton: View {
    var text: String
    let size: CGFloat
    
    var body: some View {
        Text(text)
            .font(
                .system(
                    size: size,
                    weight: .bold,
                    design: .rounded
                )
            )
            .foregroundColor(.colorViews)
            .padding(.leading, size)
    }
}

#Preview {
    TextButton(text: "Все характеристики", size: 18)
}
