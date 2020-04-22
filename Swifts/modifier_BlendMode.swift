//
//  modifier_BlendMode.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/21.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI
import Grid

struct modifier_BlendMode: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                Grid(effectArray, id: \.self) { effect in
                    ExtractedView(effect: effect)
                }
                .padding()
            }
                .gridStyle(
                ModularGridStyle(columns: .min(170), rows: .min(170), spacing: 15))
            .navigationBarTitle("BlendMode", displayMode: .automatic)
        }
    }
}

struct modifier_BlendMode_Previews: PreviewProvider {
    static var previews: some View {
        modifier_BlendMode().previewDevice("iPhone 11")
    }
}


struct ExtractedView: View {
    
    var effect: Effect
    
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .overlay(
                Image("IMG_7220")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180, alignment: .bottom)
                    .clipped()
                    .overlay(
                        VStack {
                            Image("SwiftUI_icon")
                                .resizable()
                                .scaledToFill()
                                //                        .offset(y: 10)
                                .blendMode(effect.effect)
                    })
                    .overlay(Text(effect.effectText)
                        .font(.subheadline)
                        .padding(EdgeInsets(top: 2, leading: 10, bottom: 2, trailing: 10))
                        .background(BlurBg(style: .systemUltraThinMaterial))
                        .cornerRadius(10)
                        .offset(y: 68)
                )
        )
            .cornerRadius(30)
//
        
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

struct Effect: Hashable {
    var effect: BlendMode
    var effectText: String
}

let effectArray: Array = [
    Effect(effect: BlendMode.color, effectText: "color"),
    Effect(effect: BlendMode.colorBurn, effectText: "colorBurn"),
    Effect(effect: BlendMode.colorDodge, effectText: "colorDodge"),
    Effect(effect: BlendMode.darken, effectText: "darken"),
    Effect(effect: BlendMode.destinationOut, effectText: "destinationOut"),
    Effect(effect: BlendMode.destinationOver, effectText: "destinationOver"),
    Effect(effect: BlendMode.difference, effectText: "difference"),
    Effect(effect: BlendMode.exclusion, effectText: "exclusion"),
    Effect(effect: BlendMode.hardLight, effectText: "hardLight"),
    Effect(effect: BlendMode.saturation, effectText: "hue"),
    Effect(effect: BlendMode.lighten, effectText: "lighten"),
    Effect(effect: BlendMode.luminosity, effectText: "luminosity"),
    Effect(effect: BlendMode.multiply, effectText: "multiply"),
    Effect(effect: BlendMode.normal, effectText: "normal"),
    Effect(effect: BlendMode.overlay, effectText: "overlay"),
    Effect(effect: BlendMode.plusDarker, effectText: "plusDarker"),
    Effect(effect: BlendMode.plusLighter, effectText: "plusLighter"),
    Effect(effect: BlendMode.saturation, effectText: "saturation"),
    Effect(effect: BlendMode.screen, effectText: "screen"),
    Effect(effect: BlendMode.softLight, effectText: "softLight"),
    Effect(effect: BlendMode.sourceAtop, effectText: "sourceAtop")
    ]
