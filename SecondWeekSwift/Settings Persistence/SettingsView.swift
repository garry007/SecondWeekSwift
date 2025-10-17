import SwiftUI

struct SettingsView: View {
    @AppStorage("darkMode") private var darkMode = false
    var body: some View {
        Form {
            Toggle("Dark Mode", isOn: $darkMode)
            Text(darkMode ? "Dark mode is ON" : "Light mode is ON")
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
