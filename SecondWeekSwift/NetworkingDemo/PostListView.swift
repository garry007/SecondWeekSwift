import SwiftUI

struct PostListView: View {
    @StateObject private var vm = PostListViewModel()
    var body: some View {
        NavigationStack {
            Group {
                if vm.isLoading {
                    ProgressView("Loading...")
                } else if let error = vm.error {
                    Text("Error: \(error)")
                        .foregroundColor(.red)
                } else {
                    List(vm.posts) { post in
                        NavigationLink(post.title, destination: Text(post.title))
                    }
                }
            }
            .navigationTitle("Posts")
            .task {
                await vm.fetchPosts()
            }
        }
    }
}

#Preview {
    PostListView()
}
