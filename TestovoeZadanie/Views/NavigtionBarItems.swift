//
//  NavigtionBarItems.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 06.02.2024.
//

import SwiftUI

struct NavigtionBarItems: View {
    var body: some View {
        HStack(
            alignment: .firstTextBaseline,
            spacing: 0
        ) {
            Button(action: {
                return
            })
            {
                Image(systemName: "list.bullet.rectangle.portrait"
                )
            }
            
            
            Button(action: {
                return
            }){ Image(
                systemName: "square.and.arrow.up"
            )
            }
            
            Button(action: {
                return
            }){ Image(
                systemName: "heart"
            )
            }
        }
    }
}

#Preview {
    NavigtionBarItems()
}
