//
//  modifier_Contrast.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/23.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct modifier_Contrast: View {
    @State private var contrastAmount: Double = 1
    
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
            }.contrast(contrastAmount)
            
            
            VStack {
                Text("contrast: "+String((contrastAmount).roundTo(places: 2)))
                    .font(.headline)
                Slider(value: $contrastAmount, in: -5...5)
            }
            .padding()
            .frame(width: 300)
            .background(BlurBg(style: .systemUltraThinMaterial))
            .cornerRadius(20)
            .shadow(radius: 5, x: 0, y: 5)
        }
    }
}

struct modifier_Contrast_Previews: PreviewProvider {
    static var previews: some View {
        modifier_Contrast()
    }
}
