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
            { ButtonContent() }
        }
    }
}


struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}


