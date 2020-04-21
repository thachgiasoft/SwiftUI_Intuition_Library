//
//  03_ContextMenuView.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/3/30.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        ButtonContent3()
            // 1.
            .contextMenu {
                // 2.
                Button(action: {}) {
                    Text("Share")
                    Image(systemName: "square.and.arrow.up")
                }
                // 3.
                Button(action: {}) {
                    Text("Favorite")
                    Image(systemName: "heart")
                }
                // 4.
                Button(action: {}) {
                    Text("More...")
                }
                // 5.
                Button(action: {}) {
                    Text("Delete")
                        .foregroundColor(Color.red)
                    Image(systemName: "trash")
                        .foregroundColor(Color.red)
                }
                .foregroundColor(Color.red)
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}

// Subview
struct ButtonContent3: View {
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
