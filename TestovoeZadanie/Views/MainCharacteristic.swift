//
//  MainCharacteristic.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct MainCharacteristic: View {
    let size: CGFloat
    
    var body: some View {
        VStack{
            HStack{
                Text("Основные характеристики")
                    .font(
                        .system(
                            size: size,
                            weight: .bold,
                            design: .rounded
                        )
                    )
                    .padding(.leading, size)
                Spacer()
            }
            HStack{
                Text("Производство")
                    .padding(.leading, size - 2)
                Text("........")
                Text("Россия,Краснодарский край")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(2)
                    .padding(.trailing, size)
                    .offset(x: 0, y: 10)
            }
            .padding(.bottom, size)
            HStack{
                Text("Энергетическая ценность, ккал/100г")
                    .padding(.leading, size - 3)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .offset(x: 0, y: 10)
                Text("..................")
                Text("25 ккал, 105\n кДж")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(3)
                    .padding(.trailing, size)
                    .offset(x: 0, y: 10)
            }
            .padding(.bottom, size)
            HStack{
                Text("Жиры/100г")
                    .padding(.leading, size - 3)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                Text("...............................................")
                Text("0.1 г")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(3)
                    .padding(.trailing, size)
            }
            .padding(.bottom, size)
            HStack{
                Text("Белки/100 г")
                    .padding(.leading, size - 3)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                Text("..............................................")
                Text("1,3 г")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(3)
                    .padding(.trailing, size)
            }
            .padding(.bottom, size)
            HStack{
                Text("Углеводы/100г")
                    .padding(.leading, size - 3)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
                Text("........................................")
                Text("3.3 г")
                    .multilineTextAlignment(.trailing)
                    .lineLimit(3)
                    .padding(.trailing, size)
            }
            .padding(.bottom, size)
        }
    }
}

#Preview {
    MainCharacteristic(size: 20)
}
