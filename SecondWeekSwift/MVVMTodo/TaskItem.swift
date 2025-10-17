import Foundation

struct TaskItem: Identifiable, Codable {
    let id: UUID
    var title: String
    var done: Bool
    init(title: String, done: Bool = false) {
        self.id = UUID()
        self.title = title
        self.done = done
    }
}
