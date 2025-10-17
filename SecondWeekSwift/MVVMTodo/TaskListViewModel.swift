import Foundation
import SwiftUI

final class TaskListViewModel: ObservableObject {
    @Published var tasks: [TaskItem] = []
    func add(_ title: String) {
        tasks.append(TaskItem(title: title))
    }
    func delete(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
    func toggle(_ task: TaskItem) {
        if let idx = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[idx].done.toggle()
        }
    }
}
