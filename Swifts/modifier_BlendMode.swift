//
//  modifier_BlendMode.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/21.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct modifier_BlendMode: View {
    
    @State private var s_effect = BlendMode.colorDodge

    var effectText: Array = [
          "color"
        , "colorBurn"
        , "colorDodge"
        , "darken"
        , "destinationOut"
        , "destinationOver"
        , "difference"
        , "exclusion"
        , "hardLight"
        , "hue"
        , "lighten"
        , "luminosity"
        , "multiply"
        , "normal"
        , "overlay"
        , "plusDarker"
        , "plusLighter"
        , "saturation"
        , "screen"
        , "softLight"
        , "sourceAtop"
    ]
    
    var effect: Array = [
          BlendMode.color
        , BlendMode.colorBurn
        , BlendMode.colorDodge
        , BlendMode.darken
        , BlendMode.destinationOut
        , BlendMode.destinationOver
        , BlendMode.difference
        , BlendMode.exclusion
        , BlendMode.hardLight
        , BlendMode.hue
        , BlendMode.lighten
        , BlendMode.luminosity
        , BlendMode.multiply
        , BlendMode.normal
        , BlendMode.overlay
        , BlendMode.plusDarker
        , BlendMode.plusLighter
        , BlendMode.saturation
        , BlendMode.screen
        , BlendMode.softLight
        , BlendMode.sourceAtop
    ]
    
    var body: some View {
        VStack {
////            Image("IMG_7220")
////                .resizable()
////                .scaledToFill()
////                .frame(width: UIScreen.main.bounds.width)
////                .overlay(
//                    VStack (spacing: 0){
////                        Spacer().frame(height: 30)
//                        
//                        Picker(selection: $s_effect, label: Text("")) {
//                            ForEach (effect, id: \.self) {effect in
                                Image("SwiftUI_icon")
//                                .frame(width: 300, height: 300)
////                                .offset(y: 50)
//                                .blendMode(effect)
//                            }
//                        }
//                        .frame(maxHeight: .infinity)
//                        .background(BlurBg(style: .systemUltraThinMaterial))
//                    .labelsHidden()
//                    .cornerRadius(20)
////                        Spacer()
//                    }.padding(.horizontal)
//            )
            }
                        .edgesIgnoringSafeArea(.all)
    }

}

struct modifier_BlendMode_Previews: PreviewProvider {
    static var previews: some View {
        modifier_BlendMode()
    }
}

//MARK: 模糊背景
struct BlurBg: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
