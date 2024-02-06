//
//  ContentView.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 04.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State var selected = "1"
    
    let tabs = ["Главная", "Каталог", "Корзина", "Профиль"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View {
        
                ZStack(alignment: .bottom) {
                    TabView(selection: $selected) {
                        
                        Shop()
                            .tag("Главная")
                        Text("Каталог")
                            .tag("Каталог")
                        Text("Корзина")
                            .tag("Корзина")
                        Text("Профиль")
                            .tag("Профиль")
                    }
                    HStack{
                        ForEach(tabs, id: \.self) {
                            tab in
                            TabBarItem(tab: tab, selected: $selected)
                        }
                    }
                    .padding(.top, 10)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                }
        }
    
    
    struct TabBarItem: View {
        @State var tab: String
        @Binding var selected: String
        
        var body: some View {
            ZStack {
                Button {
                    selected = tab
                } label: {
                    VStack{
                        Image(tab)
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(selected == tab ? .colorViews : .gray)
                            .accentColor(selected == tab ? .colorViews : .gray)
                        Text(tab)
                            .foregroundStyle(selected == tab ? .colorViews : .gray)
                    }
                }
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    ContentView()
}
