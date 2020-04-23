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

# Blend Mode

## 1. Definition

> Sets the blend mode for compositing the view with **overlapping** views.

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_BlendMode.gif"/>
</details>


## 2. Usage 

``` swift
import SwiftUI
import Grid

struct modifier_BlendMode: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                Grid(effectArray, id: \.self) { effect in
                    ExtractedView(effect: effect)
                }
                .padding()
            }
                .gridStyle(
                ModularGridStyle(columns: .min(170), rows: .min(170), spacing: 15))
            .navigationBarTitle("BlendMode", displayMode: .automatic)
        }
    }
}

struct modifier_BlendMode_Previews: PreviewProvider {
    static var previews: some View {
        modifier_BlendMode().previewDevice("iPhone 11")
    }
}


struct ExtractedView: View {
    
    var effect: Effect
    
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .overlay(
                Image("IMG_7220")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 180, alignment: .bottom)
                    .clipped()
                    .overlay(
                        VStack {
                            Image("SwiftUI_icon")
                                .resizable()
                                .scaledToFill()
//MARK: Applies HERE
                            .blendMode(effect.effect)
                    })
                    .overlay(Text(effect.effectText)
                        .font(.subheadline)
                        .padding(EdgeInsets(top: 2, leading: 10, bottom: 2, trailing: 10))                        .background(BlurBg())
                        .cornerRadius(10)
                        .offset(y: 68)
                )
                    
                
        )
            .cornerRadius(30)
//
        
    }
}

//MARK: 模糊背景
struct BlurBg: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct Effect: Hashable {
    var effect: BlendMode
    var effectText: String
}

let effectArray: Array = [
    Effect(effect: BlendMode.color, effectText: "color"),
    Effect(effect: BlendMode.colorBurn, effectText: "colorBurn"),
    Effect(effect: BlendMode.colorDodge, effectText: "colorDodge"),
    Effect(effect: BlendMode.darken, effectText: "darken"),
    Effect(effect: BlendMode.destinationOut, effectText: "destinationOut"),
    Effect(effect: BlendMode.destinationOver, effectText: "destinationOver"),
    Effect(effect: BlendMode.difference, effectText: "difference"),
    Effect(effect: BlendMode.exclusion, effectText: "exclusion"),
    Effect(effect: BlendMode.hardLight, effectText: "hardLight"),
    Effect(effect: BlendMode.saturation, effectText: "hue"),
    Effect(effect: BlendMode.lighten, effectText: "lighten"),
    Effect(effect: BlendMode.luminosity, effectText: "luminosity"),
    Effect(effect: BlendMode.multiply, effectText: "multiply"),
    Effect(effect: BlendMode.normal, effectText: "normal"),
    Effect(effect: BlendMode.overlay, effectText: "overlay"),
    Effect(effect: BlendMode.plusDarker, effectText: "plusDarker"),
    Effect(effect: BlendMode.plusLighter, effectText: "plusLighter"),
    Effect(effect: BlendMode.saturation, effectText: "saturation"),
    Effect(effect: BlendMode.screen, effectText: "screen"),
    Effect(effect: BlendMode.softLight, effectText: "softLight"),
    Effect(effect: BlendMode.sourceAtop, effectText: "sourceAtop")
    ]
```


