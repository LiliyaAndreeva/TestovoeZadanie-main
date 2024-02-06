//
//  TextDescribtion.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct TextDescribtion: View {
    let size: CGFloat
    
    var body: some View {
        VStack{
            HStack {
                Text("Описание")
                    .font(.system(size: size, weight: .bold, design: .rounded))
                    .padding(.leading, size)
                Spacer()
            }
            .padding(.bottom, 8)
            Text("""
Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.
""")
        }
        .padding(.bottom, size)
    }
}

#Preview {
    TextDescribtion(size: 20)
}
