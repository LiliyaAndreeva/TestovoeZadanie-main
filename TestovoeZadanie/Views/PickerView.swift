//
//  PickerView.swift
//  TestovoeZadanie
//
//  Created by Лилия Андреева on 05.02.2024.
//

import SwiftUI

struct PickerView: View {
    @State private var selectionSide: SideOfPicker = .pieces
    
    var body: some View {
        VStack{
            Picker("Choose", selection: $selectionSide) {
                ForEach(SideOfPicker.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}

enum SideOfPicker: String, CaseIterable {
    case pieces = "Шт"
    case kilograms = "Кг"
}

#Preview {
    PickerView()
}
