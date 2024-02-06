//
//  TextView.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct TextViewInFrame: View {
    var body: some View {
        Text("Цена по карте")
            .font(.system(size: 14))
            .padding(6)
            .background(.colorViews)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .foregroundStyle(.white)
            .padding(.leading, 20)
    }
}

#Preview {
    TextViewInFrame()
}
