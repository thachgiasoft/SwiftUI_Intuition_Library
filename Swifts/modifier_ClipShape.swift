//
//  modifier_ClipShape.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/23.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct modifier_ClipShape: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Deference\nbetween")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Text("clipShape & clipped")
                    .font(.headline)
            }
            .padding()
            .background(BlurBg(style: .systemUltraThinMaterial))
            .cornerRadius(20)
            .shadow(radius: 5, x: 0, y: 5)
            Spacer()
            VStack {
                Circle()
                    .strokeBorder(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading),
                                  style: StrokeStyle(lineWidth: 7), antialiased: true)
                    .foregroundColor(.clear)
                    .frame(width: 150, height: 150)
                    .overlay(Image("SwiftUI_icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130 , height: 130)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading))
                        .clipShape(Circle())
                        .shadow(radius: 5, x: 0, y: 5)
                )
                Text("clipShape")
            }
            .padding()
            .background(BlurBg(style: .systemUltraThinMaterial))
            .cornerRadius(20)
            .shadow(radius: 5, x: 0, y: 5)
            Spacer()
            VStack {
                Circle()
                    .strokeBorder(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading),
                                  style: StrokeStyle(lineWidth: 7), antialiased: true)
                    .foregroundColor(.clear)
                    .frame(width: 150, height: 150)
                    .overlay(Image("SwiftUI_icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130 , height: 130)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading))
                        .clipped()
                        .shadow(radius: 5, x: 0, y: 5)
                )
                Text("clipped")
            }
            .padding()
            .background(BlurBg(style: .systemUltraThinMaterial))
            .cornerRadius(20)
            .shadow(radius: 5, x: 0, y: 5)
            Spacer()
        }
    }
}

struct modifier_ClipShape_Previews: PreviewProvider {
    static var previews: some View {
        modifier_ClipShape()
    }
}
