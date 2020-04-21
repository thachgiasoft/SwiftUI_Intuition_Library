//
//  07_PopoverView.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/3/31.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct PopoverView: View {
    // 1.
    @State private var showPopover: Bool = false
    // 2.
    var body: some View {
        VStack {
            Button("Show Popover") {
                self.showPopover = true
            }
            .popover(
//                attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds),
                isPresented: self.$showPopover,
                arrowEdge: .bottom
//                , content: @escaping () -> Content) -> some View where Content : View
            )
            { ButtonContent4() }
        }
    }
}


struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}

// Subview
struct ButtonContent4: View {
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
