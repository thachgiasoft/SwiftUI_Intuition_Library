//
//  01_ActionSheetView.swift
//  SwiftUI_Intuition_Library
//
//  Created by Jacob Zhang on 2020/3/28.
//  Copyright © 2020 Jacob Zhang. All rights reserved.
//

import SwiftUI

struct ActionSheetView: View {
    // 1.
    @State var showActionSheet: Bool = false
    
    // 2.
    var actionSheet: ActionSheet {
        ActionSheet(title: Text("Are you sure you want to discard your changes?"),
                    message: Text("This cannot be undone."),
                    buttons: [
                        .destructive(Text("Discard Changes")),
                        .default(Text("Save")),
                        .cancel(Text("Keep Editing"))
            ]
        )
    }
    // 3.
    var body: some View {
        
        Button(action: {self.showActionSheet.toggle()})
        {
            ButtonContent()
        }
        .actionSheet(isPresented: $showActionSheet, content: {
            self.actionSheet })
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ActionSheetView()
                .environment(\.colorScheme, .light)
            ActionSheetView()
                .environment(\.colorScheme, .dark)
        }
    }
}

// Subview
struct ButtonContent: View {
    var body: some View {
        Text("    🤹🏻    ")
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
