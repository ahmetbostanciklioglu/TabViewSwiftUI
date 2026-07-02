<div align="center">

# 🧩 TabViewSwiftUI

**A modular, version-adaptive custom tab bar for SwiftUI — one API from iOS 15 to iOS 26.**

![Platform](https://img.shields.io/badge/Platform-iOS%2015%2B-000000?style=flat-square&logo=apple&logoColor=white)
![Swift](https://img.shields.io/badge/Swift-5.9-F05138?style=flat-square&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-0071E3?style=flat-square&logo=swift&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-16-147EFB?style=flat-square&logo=xcode&logoColor=white)
![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/TabViewSwiftUI?style=flat-square&color=6E48AA)
![Last commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/TabViewSwiftUI?style=flat-square&color=4776E6)

</div>

## 📖 Overview

`TabViewSwiftUI` is a drop-in custom tab bar that automatically adapts to the OS version at runtime — it renders the **native iOS 18/26 tab concept** on newer systems and falls back to a **fully custom tab bar** on iOS 15–17. Tabs are described in a single, type-safe `enum`, so adding or reordering tabs is a one-line change. Use it as a starting point in personal or commercial projects.

## ✨ Features

- 🔀 **Version-adaptive** — `CustomTabView` picks the right implementation per OS (`iOS26AndAboveTabView` vs `iOSVersionLessThan18TabView`).
- 🧱 **Enum-driven tabs** — a single `Tabs` enum defines each tab's title, SF Symbol, and content.
- 🎯 **SF Symbols** — crisp, scalable system icons out of the box.
- 🧩 **Modular & reusable** — clean separation under a dedicated `Tabbar/` folder.
- 🌙 **Dark mode ready** — previews and styling tuned for light and dark appearance.

## 📸 Preview

<div align="center">
<img width="1495" alt="TabViewSwiftUI preview 1" src="https://github.com/user-attachments/assets/fe8bb21e-626e-4aed-8da3-ad9ba159e8fd" />
<img width="1495" alt="TabViewSwiftUI preview 2" src="https://github.com/user-attachments/assets/ca5a4de1-4d6c-4442-998e-506a340f1ded" />
<img width="1495" alt="TabViewSwiftUI preview 3" src="https://github.com/user-attachments/assets/085ea230-741d-40c0-a833-96ea89ede6d5" />
<img width="1221" alt="TabViewSwiftUI preview 4" src="https://github.com/user-attachments/assets/2c6e0490-d0fc-4ca3-9324-edf59258e2c5" />
<img width="1495" alt="TabViewSwiftUI preview 5" src="https://github.com/user-attachments/assets/cdd095e6-00ed-4081-bd23-d624148c50b2" />
<img width="1478" alt="TabViewSwiftUI preview 6" src="https://github.com/user-attachments/assets/307e073a-b802-4890-b1e1-3b61384e5193" />
</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/TabViewSwiftUI.git
cd TabViewSwiftUI
open TabViewSwiftUI.xcodeproj
```

Then select a simulator and press **⌘R** to run.

## 🛠️ Usage

Drop `CustomTabView` in as your root view and describe your tabs in the `Tabs` enum:

```swift
struct ContentView: View {
    var body: some View {
        CustomTabView()
    }
}

enum Tabs: CaseIterable {
    case home, favorites, settings, search

    var title: String { /* ... */ }
    var imageName: String { /* SF Symbol name */ }
    var content: String { /* screen content */ }
}
```

## 📋 Requirements

- iOS 15.0+
- Xcode 16+
- Swift 5.9+

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
