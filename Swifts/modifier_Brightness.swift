//
//  modifier_Brightness.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/23.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct modifier_Brightness: View {
        
    @State private var brightnessAmount: Double = -1
    
    var body: some View {
        ZStack {
            VStack {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    HStack {
                        ForEach(0 ..< 3) { item in
                            Image("SwiftUI_icon")
                                .resizable()
                                .scaledToFill()
                        }
                    }
                }
            }
            .brightness(brightnessAmount)
            
            VStack {
                Text("Brightnes: "+String((brightnessAmount).roundTo(places: 2)))
                    .font(.headline)
                Slider(value: $brightnessAmount, in: -1...1)
            }
            .padding()
            .frame(width: 300)
            .background(BlurBg(style: .systemUltraThinMaterial))
            .cornerRadius(20)
            .shadow(radius: 5, x: 0, y: 5)
        }
    }
}

struct modifier_Brightness_Previews: PreviewProvider {
    static var previews: some View {
        modifier_Brightness()
    }
}
