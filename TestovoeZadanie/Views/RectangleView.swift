//
//  RectangleView.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct RectangleView: View {
    let size: CGFloat
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 240, height: 170)
                .foregroundStyle(.white)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 5, x: 10,y: 5
                )
                HStack{
                    Text("Александр В.")
                        .font(
                            .system(
                                size: 17,
                                weight: .bold,
                                design: .rounded
                            )
                        )
                    Spacer()
                }
                HStack{
                    Text("7 мая 2021")
                        .foregroundStyle(.gray)
                    Spacer()
                }
                HStack{
                    StarView(fill: true)
                    StarView(fill: true)
                    StarView(fill: true)
                    StarView(fill: true)
                    StarView(fill: false)
                    Spacer()
                }
                .padding(.bottom, 5)
                HStack{
                    Text(
"""
Хорошая добавка мне очень \n понравилась! Хочу, чтобы все \n добавки были такими!
"""
                    )
                    .font(
                        .system(
                            size: 15,
                            weight: .medium,
                            design: .rounded
                        )
                    )
                    .foregroundStyle(.gray)
                }
                Spacer()
            }
            
        }
        
    }


#Preview {
    RectangleView(size: 20)
}
