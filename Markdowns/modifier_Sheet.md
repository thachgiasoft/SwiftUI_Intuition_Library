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

# Sheet

## 1. Definition

> A sheet is a **fullscreen "*popover*"** which appears from bottom with beautiful native transition. 

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Sheet.gif"/>
</details>

## 2. Usage 

``` swift
import SwiftUI

struct SheetView: View {
    // 1.
    @State private var showSheet: Bool = false
    // 2.
    var body: some View {
        Button(action: {
            self.showSheet.toggle()
        }) {
            HStack {
                Text("Show Sheet")
                Image(systemName: "questionmark.circle.fill")
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50, alignment: .center)
            .background(Color(#colorLiteral(red: 0.8627130389, green: 0.4345924854, blue: 0.2768485844, alpha: 1)).opacity(0.88))
            .cornerRadius(20)
            .shadow(color: Color(#colorLiteral(red: 0.8627130389, green: 0.4345924854, blue: 0.2768485844, alpha: 1)).opacity(1), radius: 10, x: 0, y: 10)
        }
        // 3.
        .sheet(isPresented: $showSheet, content: {Text("🤹🏻").font(.system(size: 100))})
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
```

### Type Methods

There are 3️⃣ parameters  in *sheet* .

```
isPresented
```

A `Binding` to whether the sheet is presented.

```
onDismiss ❓
```

A closure executed when the sheet dismisses.

```
content
```

A closure returning the content of the sheet.


## 3. Insights

- A good component for **short user input on phones**

eg. sign up 

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Sheet.png"/>
</details>

