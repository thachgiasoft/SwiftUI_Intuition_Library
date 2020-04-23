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

# Context Menu (1/4)

## 1. Definition

> A container for views that you present as a menu items in a contextual menu in response to the standard system gesture (long press).

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_ContextMenu.gif"/>
</details>

## 2. Usage 

``` swift
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
```

### Type Methods

There are 2️⃣ types supported in *menu* now.

- Text()

- Image()

⁉️ I have done a lot of research and still cannot deal with the 3️⃣ other function ( <u>***separator, heritance, destructive style***</u>) like Apple does. 👇🏻

🙏🏻 Hope some pro could help me out.,

<details open>
  <summary>for detail</summary>
  <p align="center">
  <img width="100%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/README_Assets/ContextMenu.png"/>
</details>

## 3. Insights

According to [What's New in iOS Design, WWDC 2019](https://developer.apple.com/videos/play/wwdc2019/808/?time=1406) about *Context (contextual) Menu*, it can:

- **Make people <u>focus on</u> action with <u>a full preview</u> of content**

<details open>
  <summary>for detail</summary>
  <p align="center">
  <img width="100%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/README_Assets/ContextMenu2.png"/>
</details>

- **Be <u>resizeable</u> and applied on all the Apple platform**

<details open>
  <summary>for detail</summary>
  <p align="center">
  <img width="100%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/README_Assets/ContextMenu3.png"/>
</details>


