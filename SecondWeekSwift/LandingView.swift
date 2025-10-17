import SwiftUI

struct Feature: Identifiable {
    let id = UUID()
    let name: String
    let destination: AnyView
}

struct LandingView: View {
    let features: [Feature] = [
        Feature(name: "State Fundamentals (Counter)", destination: AnyView(CounterView())),
        Feature(name: "Settings Persistence", destination: AnyView(SettingsView())),
        Feature(name: "MVVM To-Do List", destination: AnyView(TaskListView())),
        Feature(name: "Networking (Posts)", destination: AnyView(PostListView())),
        Feature(name: "Accessibility & Theming", destination: AnyView(ThemingAccessibilityView())),
        Feature(name: "Polish & Review", destination: AnyView(PolishView()))
    ]
    var body: some View {
        NavigationStack {
            List(features) { feature in
                NavigationLink(feature.name, destination: feature.destination)
            }
            .navigationTitle("Week 2 Roadmap")
        }
    }
}

#Preview {
    LandingView()
}
