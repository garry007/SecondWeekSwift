import SwiftUI

struct PolishView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Project Polish & Review")
                .font(.title)
            Text("- Custom App Icon\n- Launch Screen\n- Versioning\n- Archive\n- Unit Tests")
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Polish & Review")
    }
}

#Preview {
    PolishView()
}
