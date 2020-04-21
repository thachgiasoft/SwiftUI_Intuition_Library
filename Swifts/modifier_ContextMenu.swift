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
        ButtonContent()
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

