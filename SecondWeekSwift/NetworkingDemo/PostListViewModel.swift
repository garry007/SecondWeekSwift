import Foundation
import SwiftUI

@MainActor
final class PostListViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading = false
    @Published var error: String? = nil
    func fetchPosts() async {
        isLoading = true
        error = nil
        do {
            let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
            let (data, _) = try await URLSession.shared.data(from: url)
            posts = try JSONDecoder().decode([Post].self, from: data)
        } catch {
            self.error = error.localizedDescription
        }
        isLoading = false
    }
}
