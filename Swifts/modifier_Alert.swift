//
//  02_AlertView.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/3/30.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct AlertView: View {
       // 1.
       @State private var showAlert = false
       
       // 2.
       var alert: Alert {
           Alert(title: Text("SwiftUI Modifiers Intuition"),
                 message: Text("A new update for AlertView"),
                 primaryButton: .cancel(Text("Close")),
                 secondaryButton: .default(Text("Detail"))
            )
       }
       // 3.
       var body: some View {
           Button(action: {self.showAlert.toggle()})
           {
               ButtonContent2()
           }
           // 4.
           .alert(isPresented: $showAlert, content: { self.alert })
       }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlertView()
                .environment(\.colorScheme, .light)
            AlertView()
                .environment(\.colorScheme, .dark)
        }
    }
}

// Subview
struct ButtonContent2: View {
    var body: some View {
        Text("  🤹🏻  ")
            .font(.system(size: 25))
            .padding()
            .foregroundColor(Color(.systemBlue)) // adaptable in dark mode
            //                .frame(width: 160, height: 60)
            .background(Color(.secondarySystemBackground))  // adaptable in dark mode
            .cornerRadius(20)
            .shadow(color: Color(.systemBlue).opacity(0.4), radius: 10, x: 0, y: 10)
        // adaptable backgroud frame size
    }
}
