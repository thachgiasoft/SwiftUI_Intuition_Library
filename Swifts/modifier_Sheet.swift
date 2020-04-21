//
//  08_SheetView.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/4/2.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct SheetView: View {
    // 1.
    @State private var showSheet: Bool = false
    // 2.
    var body: some View {
        Button(action: {
            self.showSheet.toggle()
        }) {
            HStack {
                Text("Show Sheet")
                Image(systemName: "questionmark.circle.fill")
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50, alignment: .center)
            .background(Color(#colorLiteral(red: 0.8627130389, green: 0.4345924854, blue: 0.2768485844, alpha: 1)).opacity(0.88))
            .cornerRadius(20)
            .shadow(color: Color(#colorLiteral(red: 0.8627130389, green: 0.4345924854, blue: 0.2768485844, alpha: 1)).opacity(1), radius: 10, x: 0, y: 10)
        }
        // 3.
        .sheet(isPresented: $showSheet, content: {Text("🤹🏻").font(.system(size: 100))})
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}


