import SwiftUI

struct TaskDetailView: View {
    @State var task: TaskItem
    @ObservedObject var vm: TaskListViewModel
    var body: some View {
        Form {
            TextField("Title", text: $task.title)
            Toggle("Done", isOn: $task.done)
        }
        .navigationTitle("Task Detail")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Save") {
                    if let idx = vm.tasks.firstIndex(where: { $0.id == task.id }) {
                        vm.tasks[idx] = task
                    }
                }
            }
        }
    }
}

#Preview {
    TaskDetailView(task: TaskItem(title: "Sample"), vm: TaskListViewModel())
}
