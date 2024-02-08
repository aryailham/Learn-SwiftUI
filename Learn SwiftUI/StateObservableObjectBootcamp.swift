//
//  StateObservableObjectBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct UserData: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let age: Int
}

class UserViewModel: ObservableObject {
    @Published var userArray: [UserData] = []
    @Published var isLoading: Bool = false
    
    init() {
        getUser()
    }
    
    func getUser() {
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            for data in 0...15 {
                self.userArray.append(UserData(name: "Nama \(data)", age: data))
            }
            self.isLoading = false
        }
    }
    
    func deleteUser(_ indexSet: IndexSet) {
        userArray.remove(atOffsets: indexSet)
    }
}

struct StateObservableObjectBootcamp: View {
    /*
        pada @StateObject, viewModel tidak akan dipanggil ulang ketika View re-rendered. cocok jika dipakai untuk hold data (contoh seperti viewModel ini
     
        pakai @ObservedObject jika perlu reload ketika view re rendered (dibuka kembali)
     
        @StateObject -> Use this on creation / init
        @ObservedObject -> User this for subviews/passing it on second screen
     */
//    @ObservedObject var viewModel: UserViewModel = UserViewModel()
    @StateObject var viewModel: UserViewModel = UserViewModel()

    var body: some View {
        NavigationView {
            List {

                if self.viewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(viewModel.userArray) { user in
                        NavigationLink {
                            SecondScreen(viewModel: self.viewModel)
                        } label: {
                            HStack(content: {
                                Text(user.name)
                                Spacer()
                                Text("\(user.age)")
                            })
                        }
                    }
                    .onDelete(perform: { indexSet in
                        viewModel.deleteUser(indexSet)
                    })
                }
            }
            .navigationTitle("User list")
//            .onAppear(perform: {
//                viewModel.getUser()
//            })
        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var userViewModel: UserViewModel
    
    init(viewModel: UserViewModel) {
        self.userViewModel = viewModel
    }
    
    var body: some View {
        ZStack(content: {
            Color.green.ignoresSafeArea()
            
            List {
                if self.userViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(userViewModel.userArray) { user in
                        Text(user.name)
                    }
                }
            }
        })
    }
}

#Preview {
    StateObservableObjectBootcamp()
}
