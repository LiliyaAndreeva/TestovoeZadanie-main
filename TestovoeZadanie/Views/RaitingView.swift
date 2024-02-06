//
//  RaitingView.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct RaitingView: View {
    let sizeImage: CGFloat
    let textSize: CGFloat
    
    var body: some View {
        HStack(alignment: .center  , spacing: 2){
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: sizeImage, height: sizeImage)
                .foregroundColor(.yellow)
                .padding(.leading, sizeImage)
                
            Text("4.1")
                
                .font(.system(size: textSize, weight: .bold, design: .rounded))
                
            Text("| 19 отзывов")
                .font(.system(size: textSize, weight: .regular, design: .rounded))
                .foregroundColor(.gray)
                
            Spacer()
            ZStack{
                Image(systemName: "flag.fill")
                    .resizable()
                    .frame(width: 30, height: 20)
                    .padding(3)
                    .foregroundColor(.pink)
                Text("-5%")
                    .font(.system(size: textSize, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            }
            .padding(.trailing, 10)
        }
    }
}

#Preview {
    RaitingView(sizeImage: 20, textSize: 17)
}
