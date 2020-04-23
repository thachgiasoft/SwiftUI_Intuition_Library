![](https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/README_Assets/GitPage%402x.png)

  <p align="center">
    <a href="https://apple.com"><img src="https://img.shields.io/badge/platforms-iOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20watchOS-green.svg"></a>
    <a href="https://swift.org"><img src="https://img.shields.io/badge/language-Swift 5.1-orange.svg"></a>
    <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library"><img src="https://img.shields.io/github/repo-size/no-more-coding/SwiftUI_Intuition_Library.svg"></a>
    <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/LICENSE"><img src="https://img.shields.io/github/license/no-more-coding/SwiftUI_Intuition_Library.svg"></a>
  </p>

  > Hi, guys! We all know that SwiftUI is getting more and more powerful 🚀, and one of its big features is *Modifier*. However, in Xcode, <u>the library documents 📖 are pretty plain, and sometimes confusing</u> for an inexperienced developer like me 🤯.
  >
  > So I decide to put my best effort 💪🏻 to **visualize** these and share with you guys. I know it's going to be elementary for some pros 🧑🏻‍💻. But every cool stuff is built from these, and you may find some inspirations 👻 from this graphic library.
  >
  > Feel free to make some contributions and polishes. 💙 you Gitters 👍🏻.

  💻 Requirements
  - macOS 15+
  - Xcode 11.0+
  - iOS 13.0+

  🧰 Tools
  - I use [*Gifox*](https://gifox.io) (app) to record ⏺ GIFs 
  

👁‍🗨 Change View in Xcode
<details open>
  <summary>for detail</summary>
  <p align="center">
  <img width="100%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/README_Assets/ChangeView.png"/>
</details>

# Action Sheet

## 1. Definition

> An action sheet is a specific style of [**alert**](https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_ActionSheet.md) that appears in response to a control or action, and presents a set of **<u>two or more choices</u>** (recommend up to 3️⃣) related to the current context. 

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_ActionSheet.gif"/>
</details>

## 2. Usage 

``` swift
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
        
        Button(action: {self.showActionSheet.toggle() })
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
        Text("🤹🏻 Cancel")
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
```

### Type Methods

``` swift 
.destructive(Text("Discard Changes")), // red 🔴 text
.default(Text("Save")), // blue 🔵 text
.cancel(Text("Keep Editing")) // blue 🔵 & bold 𝐁 text
```

## 3. Insights

According to [HIG](https://developer.apple.com/design/human-interface-guidelines/ios/views/action-sheets/)(human-interface-guidelines) about *Action Sheet*, we should:

- **Provide a Cancel button if it adds clarity**
- **Make destructive choices prominent** (**<u>important</u>** ❗️ when data get involved)
- **Avoid enabling scrolling in an action sheet**

