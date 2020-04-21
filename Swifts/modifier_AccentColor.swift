//
//  modifier_AccentColor.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/21.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct modifier_AccentColor: View {
    
    @State var showAccentColor: Bool = false
    
    var body: some View {
        
        Button(action: {self.showAccentColor.toggle()})
        {
            ButtonContent2(showAccentColor: $showAccentColor)
        }
        .accentColor(showAccentColor ? Color(.systemYellow) : nil)
    }
}

struct modifier_AccentColor_Previews: PreviewProvider {
    static var previews: some View {
        modifier_AccentColor()
    }
}

struct ButtonContent2: View {
    
    @Binding var showAccentColor: Bool
    
    var body: some View {
        Text(showAccentColor ? "With Accent Color" : "No Accent Color")
            .font(.system(size: 25))
            .padding()
//            .foregroundColor(Color(.systemBlue)) // adaptable in dark mode
            //                .frame(width: 160, height: 60)
            .background(Color(.secondarySystemBackground))  // adaptable in dark mode
            .cornerRadius(20)
            .shadow(color: showAccentColor ? Color(.systemYellow).opacity(0.2) : Color(.systemBlue).opacity(0.2), radius: 10, x: 0, y: 10)
        // adaptable backgroud frame size
    }
}
