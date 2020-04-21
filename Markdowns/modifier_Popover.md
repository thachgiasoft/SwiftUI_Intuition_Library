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
  - and [*EZGIF*](https://ezgif.com/combine) (web) to combine 🧲 them

👁‍🗨 Change View in Xcode
<details open>
  <summary>for detail</summary>
  <p align="center">
  <img width="100%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/README_Assets/ChangeView.png"/>
</details>

# Popover (2/4)

## 1. Definition

> A popover is a transient view that appears above other content onscreen when you tap a control or in an area. 

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Popover.gif"/>
</details>

## 2. Usage 

``` swift
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
```

### Type Methods

There are 4️⃣ parameters  in *popover* .

- attachmentAnchor ❓

- isPresented 

controls show

- arrowEdge

controls the **arrow direction** which it points (and the *popover* is on the **opposite**) 

- content ❓


## 3. Insights

According to [HIG](https://developer.apple.com/design/human-interface-guidelines/ios/views/popovers/)(human-interface-guidelines) about *popover*, we should:

- **Avoid** displaying popovers **on iPhones**. 

Generally, popovers should be reserved for use in iPad apps. In iPhone apps, utilize all available screen space by presenting information in a full-screen modal view, rather than in a popover. (See *sheet*)

- **Avoid** making a popover **too big**. 

A popover shouldn’t take over the entire screen. Make it only big enough to display its contents and point to the place it came from. Be aware that the system might adjust the size of a popover to ensure it fits well onscreen.
