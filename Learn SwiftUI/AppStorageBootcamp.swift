//
//  AppStorageBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct AppStorageBootcamp: View {
    @State var userName: String = ""
    
    @AppStorage("savedUserName") var savedName: String?
    
    var body: some View {
        VStack(content: {
            Text(savedName ?? "")
                .textSelection(.enabled)
            TextField("Input user name", text: $userName)
                .padding(20)
            Button("Save") {
//                UserDefaults.standard.setValue(userName, forKey: "userName")
                savedName = userName
            }
            .foregroundStyle(.white)
            .padding(20)
            .background(.green)
            .cornerRadius(20)
        })
        .onAppear(perform: {
//            savedName = UserDefaults.standard.string(forKey: "userName")
        })
    }
}

#Preview {
    AppStorageBootcamp()
}
