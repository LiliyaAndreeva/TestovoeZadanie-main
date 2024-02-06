//
//  GridView.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct GridView: View {
    private var data: [Int] = Array(1...2)
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 170))]
    
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: adaptiveColumns,  spacing: 20) {
                HStack{
                    ForEach((1...2), id: \.self) {
                        number in
                        ZStack{
                            Rectangle()
                                .frame(width: 240, height: 170)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .shadow(color: .gray.opacity(0.3), radius: 5
                                )
                            
                            VStack{
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
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                Stars()
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
                                    .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                            
                            .padding()
                            
                        }
                        .padding(.leading)
                    }
                }
                
            }
            .padding(.bottom, 20)
        }
    }
}
        
struct StarView: View {
    @State var fill = true
    
    var body: some View {
        Image(systemName:"star.fill")
            .foregroundColor(fill ? .yellow : .gray)
            .frame(width: 10,height: 10)
            .padding(2)
    }
        
}
        
struct Stars: View {
    var body: some View {
        HStack{
            StarView(fill: true)
            StarView(fill: true)
            StarView(fill: true)
            StarView(fill: true)
            StarView(fill: false)
            Spacer()
        }
        .padding(.bottom, 5)
    }
}
 

#Preview {
    GridView()
}

