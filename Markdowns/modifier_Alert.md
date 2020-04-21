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

# Alert

## 1. Definition

> Alerts 🚨 convey important information related to the state of your app or the device, and often request **feedback**. An alert consists of <u>a title, an optional message, one or more buttons, and optional text fields</u> for gathering input. Aside from these configurable elements, the visual appearance of an alert is static and **can’t be customized.**

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Alert.gif"/>
  </details>

## 2. Usage 

``` swift
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
```

### Type Methods

There are only 2️⃣ button supported now.

- primaryButton

- secondaryButton

Title, Message and Button's usage are the same as [Action Sheet](https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_ActionSheet.md)

``` swift 
.destructive(Text("example")), // red 🔴 text
.default(Text("example")), // blue 🔵 text
.cancel(Text("example")) // blue 🔵 & bold 𝐁 text
```

## 3. Insights

According to [HIG](https://developer.apple.com/design/human-interface-guidelines/ios/views/alerts/)(human-interface-guidelines) about *Alert*, we should:

- **Minimize alerts**
- **Test the appearance of alerts in both orientations**

  

