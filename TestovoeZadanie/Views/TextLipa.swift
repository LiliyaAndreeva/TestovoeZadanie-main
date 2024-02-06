//
//  TextLipa.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 06.02.2024.
//

import SwiftUI

struct TextLipa: View {
    var body: some View {
        HStack{
            Text("Добавка \"Липа\" \nк чаю 200 г")
                .font(.system(size: 32, weight: .bold, design: .rounded))
            
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    TextLipa()
}
