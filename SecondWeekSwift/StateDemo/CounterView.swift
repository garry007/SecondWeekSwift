import SwiftUI

struct CounterView: View {
    @State private var count = 0
    var body: some View {
        VStack {
            Text("Count: \(count)")
                .font(.title)
            CounterButton(count: $count)
            Spacer()
        }
        .padding()
        .navigationTitle("Counter Demo")
    }
}

struct CounterButton: View {
    @Binding var count: Int
    var body: some View {
        Button("Add") { count += 1 }
            .buttonStyle(.borderedProminent)
    }
}

#Preview {
    CounterView()
}
