//
//  Shop.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 04.02.2024.
//

import SwiftUI

struct Shop: View {
    var body: some View {
        GeometryReader{ geo in
            let sizeWidth = geo.size.width
            
            NavigationView {
                ScrollView{
                    VStack{
                        HStack(alignment: .top){
                            TextViewInFrame()
                            Spacer()
                        }
                        
                        Image(.lipa)
                            .resizable()
                            .frame(width: sizeWidth / 1.5 , height: sizeWidth / 1.5)
                        RaitingView(sizeImage: sizeWidth / 20, textSize: 17)
                        TextLipa()
                            .padding(.bottom, sizeWidth / 20)
                        FlagStack(size: sizeWidth / 20)
                        TextDescribtion(size: 20)
                        MainCharacteristic(size: sizeWidth / 20)
                        HStack{
                            TextButton(text: "Все характеристики", size: 18)
                            Spacer()
                        }
                        .padding(.bottom, 20)
                        ReviewsStack(size: 18)
                        GridView()
                        ReviewsButton(size: sizeWidth - sizeWidth / 10)
                        PickerView()
                        CustomPrice(size: sizeWidth / 2.5)
                    }
                    .navigationBarItems(leading:
                                            HStack {
                        Button(action: {
                            return
                        }){ Image(
                            systemName: "arrow.left"
                        )
                        }
                    },
                                        trailing:
                                            NavigtionBarItems()
                    )
                    
                }
                .padding(.bottom, 70)
            }
            
        }
    }
}

#Preview {
    Shop()
}
