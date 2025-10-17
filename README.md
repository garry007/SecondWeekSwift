# 🧭 SecondWeekSwift

### A hands-on SwiftUI project for **Week 2** of my learning roadmap — focused on mastering **data flow, MVVM architecture, navigation, and async networking**.

---

## 📱 Overview

**SecondWeekSwift** is a SwiftUI demo app that builds on first-week fundamentals (syntax, closures, stacks) and introduces real app patterns:

| Area | Focus |
|------|-------|
| 🧠 Data Flow | `@State`, `@Binding`, `@ObservedObject`, `@StateObject`, `@AppStorage` |
| 🏗️ Architecture | MVVM pattern (`Model`, `ViewModel`, `View`) |
| 🧭 Navigation | `NavigationStack`, `NavigationLink`, lists, detail views |
| 🌐 Networking | `URLSession` + `async/await` + `Codable` decoding |
| 💾 Persistence | UserDefaults (`@AppStorage`) and simple JSON file caching |
| 🎨 SwiftUI Design | VStack / HStack / ZStack layouts, modifiers, and theming |
| ♿ Accessibility | Dynamic type, semantic colors, basic localization support |

---

## 🧩 Structure

```
SecondWeekSwift/
├── Models/              # Data structures (e.g. Task, Post)
├── ViewModels/          # ObservableObject classes with @Published properties
├── Views/               # SwiftUI screens (List, Detail, Settings)
├── Services/            # Networking + Persistence helpers
├── Assets.xcassets/     # App colors, icons
├── SecondWeekSwiftApp.swift  # @main entry point
└── ContentView.swift         # Initial view shown at launch
```

---

## ⚙️ Features Demonstrated

- ✅ Two-way data binding between parent/child views  
- ✅ MVVM-based To-Do list (add/delete/update)  
- ✅ Async JSON fetch using `URLSession` and `async/await`  
- ✅ Caching last API result locally  
- ✅ Adaptive Light/Dark theme  
- ✅ Basic accessibility & preview support  

---

## 🧠 Learning Goals

- Understand how SwiftUI updates the UI automatically when data changes  
- Practice writing testable ViewModels with `@Published` properties  
- Learn modern async/await syntax for networking  
- Build modular SwiftUI views that reuse common layout patterns  

---

## 🚀 How to Run

1. Clone the repo  
   ```bash
   git clone https://github.com/garry007/SecondWeekSwift.git
   cd SecondWeekSwift
   ```
2. Open `SecondWeekSwift.xcodeproj` in Xcode 15+  
3. Select **iPhone 15 Pro (iOS 17)** simulator  
4. Build & Run (`⌘ R`)

---

## 🔮 Next Steps (Week 3 Goals)

- Core Data or SwiftData integration  
- API error retry and pagination  
- Unit testing for ViewModels  
- SwiftUI animations and transitions  

---

⭐️ *Built by Gurpreet Singh (garry007) — continuing the SwiftUI learning roadmap.*
