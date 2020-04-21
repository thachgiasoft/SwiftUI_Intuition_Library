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

# Accent Color

## 1. Definition

> Accent Color is the theme color of your apps, it can be applied on `Button` & `TabItem` . 
>
> The default accent color is `Color(.systemBlue)`

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_AccentColor.gif"/>
</details>


## 2. Usage 

``` swift
import SwiftUI

struct modifier_AccentColor: View {
    
    @State var showAccentColor: Bool = false
    
    var body: some View {
        
        Button(action: {self.showAccentColor.toggle()})
        {
            ButtonContent2(showAccentColor: $showAccentColor)
        }
        .accentColor(showAccentColor ? Color(.systemYellow) : nil)
    }
}

struct modifier_AccentColor_Previews: PreviewProvider {
    static var previews: some View {
        modifier_AccentColor()
    }
}

struct ButtonContent2: View {
    
    @Binding var showAccentColor: Bool
    
    var body: some View {
        Text(showAccentColor ? "With Accent Color" : "No Accent Color")
            .font(.system(size: 25))
            .padding()
//            .foregroundColor(Color(.systemBlue)) // adaptable in dark mode
            //                .frame(width: 160, height: 60)
            .background(Color(.secondarySystemBackground))  // adaptable in dark mode
            .cornerRadius(20)
            .shadow(color: showAccentColor ? Color(.systemYellow).opacity(0.2) : Color(.systemBlue).opacity(0.2), radius: 10, x: 0, y: 10)
        // adaptable backgroud frame size
    }
}
```

