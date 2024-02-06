//
//  CustomPrice.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct CustomPrice: View {
    
    let size: CGFloat
    
    var body: some View {
       

            HStack{
                VStack{
                    HStack(alignment: .center){
                        HStack{
                            HStack(spacing: 0){
                                Text("55,9 ")
                                    .font(.system(size: 30, weight: .bold, design: .rounded))
                                Text("₽")
                                    .offset(y: -5)
                                Text("/")
                                
                                Text("кг")
                                    .offset(x: 2, y:5)
                            }
                            Spacer()
                        }
                    }
                    
                    HStack{
                        Text("199,0")
                            .foregroundColor(.gray)
                            .strikethrough()
                        Spacer()
                    }
                }
                .padding(.leading,20)
                
                Spacer()
                ZStack(alignment: .center){
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: size  , height: size / 2.9  )
                        .foregroundColor(.colorViews)
                      
                    HStack(alignment: .center ,spacing: size / 4.5 ) {
                        
                        Text("—")
                            .foregroundColor(.white)
                            .font(.system(
                                size: 15,
                                weight: .bold,
                                design: .rounded
                            )
                            )
                        //.padding(.trailing, 20)
                        
                        VStack{
                            Text("1 шт")
                                .font(
                                    .system(
                                        size: 17,
                                        weight: .bold,
                                        design: .rounded
                                    )
                                )
                                .padding(.bottom, 2)
                            Text("120,0р")
                                .opacity(0.8)
                                .font(.system(size: 12))
                        }
                        .foregroundColor(.white)
                        
                        Text("+")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    }
                }
                .padding(.trailing, 20)
            }
        }
    }




#Preview {
    CustomPrice(size: 150)
}

//.frame(width: geo.size.width / 2.5 , height: width / 2.9)
