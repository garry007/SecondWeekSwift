import SwiftUI

struct TaskListView: View {
    @StateObject private var vm = TaskListViewModel()
    @State private var newTask = ""
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.tasks) { task in
                    NavigationLink(destination: TaskDetailView(task: task, vm: vm)) {
                        HStack {
                            Text(task.title)
                            Spacer()
                            if task.done {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                    .swipeActions {
                        Button(role: .destructive) {
                            if let idx = vm.tasks.firstIndex(where: { $0.id == task.id }) {
                                vm.tasks.remove(at: idx)
                            }
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                        Button {
                            vm.toggle(task)
                        } label: {
                            Label("Toggle", systemImage: "checkmark")
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        if !newTask.isEmpty {
                            vm.add(newTask)
                            newTask = ""
                        }
                    }
                }
            }
            .navigationTitle("To-Do List")
            VStack {
                TextField("New Task", text: $newTask)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
        }
    }
}

#Preview {
    TaskListView()
}
