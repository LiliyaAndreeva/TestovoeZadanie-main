//
//  FlagStack.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct FlagStack: View {
    let size: CGFloat
    
    var body: some View {
        
        HStack{
            Image(.spainFlag)
                .resizable()
                .frame(width: size,height: size)
                .clipShape(Circle())
                .padding(.leading, size)
            Text("Испания, Риоха")
            Spacer()
        }
        .padding(.bottom, 20)
    }
}

#Preview {
    FlagStack(size: 30.0)
}
