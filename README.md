![](https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/README_Assets/GitPage%402x.png)

<p align="center">
  <a href="https://apple.com"><img src="https://img.shields.io/badge/platforms-iOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20watchOS-green.svg"></a>
  <a href="https://swift.org"><img src="https://img.shields.io/badge/language-Swift 5.1-orange.svg"></a>
  <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library"><img src="https://img.shields.io/github/repo-size/no-more-coding/SwiftUI_Intuition_Library.svg"></a>
  <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/LICENSE"><img src="https://img.shields.io/github/license/no-more-coding/SwiftUI_Intuition_Library.svg"></a>
</p>

> 大家好，从 WWDC 2019 我们知道了 Apple 对于 **SwiftUI** 的重视以及整合其生态链 ⌚️ 📱 💻 的决心。对于我们开发者 🧑🏻‍💻 而言，SwiftUI 的<u>直观，高效和便捷以及可修饰性的 Coding</u> 🚀 更是值得我们开心 👏🏻，国内包括一些像 **BATJ** 的大厂也在积极布局 💪🏻。
>
> 但是，Xcode中关于SwiftUI的 Library 文件 📖 依然非常**抽象且苍白**，要记住所有的修饰效果对于开发者们是一件<u>十分痛苦</u>的事情。
>
> 我决定将其所有的**修饰效果**进一步**视觉化，实例化 🤹🏻。**还包括其使用的**扩展方法** 💬 以及**注意事项** ❗️（HIG）。
>
> 可能对于一些 <u>Pro 选手</u> 🎩 来说这个 Repo 相当基础，但是对于原生控件的熟练掌控一定能让你**事半功倍**，而且更多的视觉化效果也许还能助你激发新的**灵感** 🙌🏻。
>
> 当然对于<u>初阶开发者</u> 👶🏻 来说就更重要了，我曾尝试过好几门 tutorial，但是学完之后仅仅就会开发 tutorial-alike 的 app，**nothing more**！。我承认我现在还是beginner，但是我觉得这是走向进阶 🧗🏻 的必由之路 。
>
> 
>
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

<p align="center">
<span id="Text_D">👩🏻‍💻👩🏼‍💻👩‍💻👩🏽‍💻👩🏾‍💻👩🏿‍💻🧑🏻‍💻🧑🏼‍💻🧑‍💻🧑🏽‍💻🧑🏾‍💻🧑🏿‍💻👨🏻‍💻👨🏼‍💻👨‍💻👨🏽‍💻👨🏾‍💻👨🏿‍💻👩🏻‍💻👩🏼‍💻👩‍💻👩🏽‍💻👩🏾‍💻👩🏿‍💻🧑🏻‍💻🧑🏼‍💻🧑‍💻🧑🏽‍💻🧑🏾‍💻🧑🏿‍💻👨🏻‍💻👨🏼‍💻👨‍💻👨🏽‍💻👨🏾‍💻👨🏿‍💻</span>

## Controls

### Action Sheet 

> An action sheet is a specific style of [**alert**](https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_Alert.md) that appears in response to a control or action, and presents a set of **<u>two or more choices</u>** (recommend up to 3️⃣) related to the current context. 

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_ActionSheet.gif"/>
</details>

<p align="center">
for more details, go to <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_ActionSheet.md" target="_blank">modifier_ActionSheet.md</a>


------

###  Alert 

> Alerts 🚨 convey important information related to the state of your app or the device, and often request **feedback**. An alert consists of <u>a title, an optional message, one or more buttons, and optional text fields</u> for gathering input. Aside from these configurable elements, the visual appearance of an alert is static and **can’t be customized.**

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Alert.gif"/>
  </details>

<p align="center">
for more details, go to <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_Alert.md" target=“_blank”>modifier_Alert.md</a>


------

### Context Menu (1/4)

> A container for views that you present as a menu items in a contextual menu in response to the standard system gesture (long press).

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_ContextMenu.gif"/>
</details>

<p align="center">
for more details, go to <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_ContextMenu.md" target=“_blank”>modifier_ContextMenu.md</a> (🙏🏻 need <b>HELP</b> here)


------

- [ ] Control Size
- [ ] Focusable 
- [ ] Item Provider 

### Popover (2/4)

> A popover is a transient view that appears above other content onscreen when you tap a control or in an area. 

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Popover.gif"/>
</details>

<p align="center">
for more details, go to <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_Popover.md" target=“_blank”>modifier_Popover</a>


------

### Sheet (2/3)

> A sheet is a **fullscreen "*popover*"** which appears from bottom with beautiful native transition. 

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Sheet.gif"/>
</details>

<p align="center">
for more details, go to <a href="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/Markdowns/modifier_Sheet.md" target=“_blank”>08_SheetView</a>


------

- [ ] Status Bar Hidden 
- [ ] Tab Item
- [ ] Touch Bar 
- [ ] Touch Bar Customization Label 
- [ ] Touch Bar Item Presence
- [ ] Touch Bar Item Principal 

[🔝](#Text_D)

## Effect

### Accent Color 

> Accent Color is the theme color of your apps, it can be applied on `Button` & `TabItem` . 
>
> The default accent color is `Color(.systemBlue)`

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_AccentColor.gif"/>
</details>
---

### Blend Mode 

> Sets the blend mode for compositing the view with **overlapping** views.

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_BlendMode.gif"/>
</details>
---

### Blur 

> `.blur()`Applies a Gaussian blur to the **view**.
>
> If you want to apply it to **backgrounde**, you have to add few more code. See  `struct BlurBg`

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Blur.gif"/>
</details>

### Border 

> `.border()` is always a **rectangle**, and draws border **inside** its frame.
>
> `.stroke()` can be **shaped**, and draws border **right in** its frame.
>
> `.strokeBorder()` can be **shaped**, and draws border **inside** its frame.

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Border.gif"/>
</details>

- [ ] Brightness 

- [ ] Clip Shape

- [ ] Clipped

- [ ] Invert

- [ ] Color Multiply 

- [ ] Color Scheme 

- [ ] Compositing Group 

- [ ] Content Shape 

- [ ] Contrast 

- [ ] Corner Radius 

- [ ] Drawing Group 

- [ ] Foreground Color 

- [ ] Grayscale 

- [ ] Hue Rotation 

- [ ] Luminance to Alpha 

- [ ] Mask

- [ ] Opacity 

- [ ] Preferred Color Scheme 

- [ ] Projection 

- [ ] Rotation 3D

- [ ] Rotation 

- [ ] Saturation 

- [ ] Scale 

- [ ] Shadow 

- [ ] Transform 

[🔝](#Text_D)

## Layout

- [ ] Alignment Guide 

- [ ] Anchor Preference 

- [ ] Aspect Ratio

- [ ] Background 

- [ ] Background preference Value 

- [ ] Coordinate Space 

- [ ] Default Wheel Picker Item Height 

- [ ] Edge Ignoring Safe Area 

- [ ] Fixed Size 

- [ ] Frame 

- [ ] Hidden 

- [ ] Horizontal Ratio Group Layout 

- [ ] Label Hidden 

- [ ] Layout Priority

- [ ] Overlay 

- [ ] Overlay Preference Value

- [ ] Padding 

- [ ] Position 

- [ ] Scaled to Fill

- [ ] Scaled to Fit

- [ ] Transform Anchor Preference 

- [ ] Z index 

[🔝](#Text_D)

## Text

- [ ] Allows Tightening 

- [ ] Autocapitalization 

- [ ] Baseline Offset 

- [ ] Bold 

- [ ] Disable Autocorrection

- [ ] Flips for Right to Left 

- [ ] Font 

- [ ] Font Weight 

- [ ] Italic 

- [ ] Kerning 

- [ ] Keyboard Type 

- [ ] Line Limit 

- [ ] Line Spacing

- [ ] Minimum Scale Factor 

- [ ] Multiline Text Alignment

- [ ] Strikethrough 

- [ ] Text Content Type 

- [ ] Tracking

- [ ] Truncation Mode 

- [ ] Underline 

[🔝](#Text_D)

## Image

- [ ] Antialiased

- [ ] Symbol Image Scale 

- [ ] Interpolation 

- [ ] Image Rendering Mode 

- [ ] Image Resizable 

[🔝](#Text_D)

## List

- [ ] Delete Disabled 

- [ ] List Row Background 

- [ ] List Row Insets

- [ ] List Row Platter Color 

- [ ] Move Disabled 

- [ ] On Delete

- [ ] On Insert

- [ ] On Move 

[🔝](#Text_D)

## Navigation Bar

- [ ] Navigation Bar Back Button Hidden

- [ ] Navigation Bar Hidden

- [ ] Navigation Bar Items

- [ ] Navigation Bar Title

[🔝](#Text_D)

## Style

- [ ] Button Style

- [ ] Date Picker Style

- [ ] List Style

- [ ] Menu Button Style

- [ ] Navigation View Style

- [ ] Picker Style

- [ ] Text Field Style

- [ ] Toggle Style

[🔝](#Text_D)

## Modifiers

- [ ] Action

- [ ] Adjustable Action

- [ ] Element

- [ ] Scroll Action

- [ ] Activation Point

- [ ] Add Traits

- [ ] Hidden

- [ ] Hint

- [ ] Identifier

- [ ] Label

- [ ] Remove Traits

- [ ] Sort Priority

- [ ] Value

[🔝](#Text_D)

## Events

- [ ] Digital Crown Rotation

- [ ] On Appear

- [ ] On Command

- [ ] On Copy Command

- [ ] On Cut Command

- [ ] On Delete Command

- [ ] On Disappear

- [ ] On Drag

- [ ] On Drop

- [ ] On Exit Command

- [ ] On Hover

- [ ] On Move Command

- [ ] On Paste Command

- [ ] On Play Pause Command

- [ ] On Preference Change

- [ ] On Receive

[🔝](#Text_D)

## Gestures

- [ ] Drag Gesture

- [ ] Exclusive Gesture

- [ ] Gesture

- [ ] High Priority Gesture

- [ ] Magnification Gesture

- [ ] On Long Press Gesture

- [ ] On Tap Gesture

- [ ] Rotation Gesture

- [ ] Sequence Gesture

- [ ] Simultaneous Gesture

[🔝](#Text_D)

## Shape

- [ ] Fill

- [ ] Offset

- [ ] Rotation

- [ ] Scale

- [ ] Size

### Stroke

> `.border()` is always a **rectangle**, and draws border **inside** its frame.
>
> `.stroke()` can be **shaped**, and draws border **right in** its frame.
>
> `.strokeBorder()` can be **shaped**, and draws border **inside** its frame.

<details open>
  <summary>Work like this: </summary>
  <p align="center">
  <img width="35%" src="https://github.com/no-more-coding/SwiftUI_Intuition_Library/blob/master/GIFs/modifier_Border.gif"/>
</details>

### Stroke Border

👆🏻

- [ ] Transform

- [ ] Trim

[🔝](#Text_D)

## Other

- [ ] Allows Hit Testing

- [ ] Animation

- [ ] Disabled

- [ ] Environment

- [ ] Environment Object

- [ ] Equatable

- [ ] Id

- [ ] Preference

- [ ] Tag

- [ ] Transaction

- [ ] Transform Environment

- [ ] Transform Preference

- [ ] Transition

[🔝](#Text_D)