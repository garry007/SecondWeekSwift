// Day 13: Accessibility & Theming Demo
// Implements adaptive colors and accessibility modifiers
import SwiftUI

struct ThemingAccessibilityView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Adaptive Colors")
                .foregroundColor(.primary)
                .font(.title)
                .accessibilityLabel("Adaptive Colors Title")
            Image(systemName: "paintpalette.fill")
                .font(.system(size: 60))
                .foregroundColor(.accentColor)
                .accessibilityLabel("Palette Icon")
            Text("Try switching between Light and Dark mode!")
                .accessibilityHint("This text adapts to theme.")
        }
        .padding()
        .background(Color(.systemBackground))
        .navigationTitle("Theming & Accessibility")
    }
}

#Preview {
    ThemingAccessibilityView()
}
