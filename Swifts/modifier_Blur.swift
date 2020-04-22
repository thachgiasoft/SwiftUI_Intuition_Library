//
//  modifier_Blur.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/22.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct modifier_Blur: View {
    
    @State private var isBlurOn = false
    
    @State private var blurAmount: CGFloat = 0.0
    
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
            .blur(radius: blurAmount*100)
            
            VStack {
                Text("Blur: "+String(Double(blurAmount*100).roundTo(places: 1)))
                    .font(.headline)
                Slider(value: $blurAmount)
            }
            .padding()
            .frame(width: 300)
            .background(BlurBg(style: .systemUltraThinMaterial))
            .cornerRadius(20)
            .shadow(radius: 5, x: 0, y: 5)
            
        }
    }
}

struct modifier_Blur_Previews: PreviewProvider {
    static var previews: some View {
        modifier_Blur()
    }
}

extension Double {
    ///四舍五入 到小数点后某一位
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    ///截断 到小数点后某一位
    func truncate(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return Double(Int(self * divisor)) / divisor
    }
}

