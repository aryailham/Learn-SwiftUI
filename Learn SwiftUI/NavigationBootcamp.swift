//
//  NavigationBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Go to pop over") {
                    PopoverBootcamp()
                        .navigationTitle("Pop over page")
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("Test navigation view")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "person.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            })
//            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    NavigationBootcamp()
}
