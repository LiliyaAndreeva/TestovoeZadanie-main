//
//  SparView.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 04.02.2024.
//

import SwiftUI


struct SparView: View {
    var sparSize: CGFloat
    
    var body: some View {
        Image("Главная")
        .resizable()
        .frame(width: sparSize, height: sparSize)
        .clipShape(Circle())
        
        
    }
}

#Preview {
    SparView(sparSize: 50)
}

