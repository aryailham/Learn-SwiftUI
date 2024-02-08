//
//  NavigationStackBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Moehammad Ilham on 07/02/24.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = ["apples", "mango", "orange"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text("click me \(fruit)")
                        }
                    }
                    
//                    ForEach(0..<10) { index in
//                        NavigationLink(value: index) {
//                            Text("Click me \(index)")
//                        }
//                    }
                    .navigationTitle("Navigation Stack")
                    .navigationDestination(for: String.self) { fruit in
                        SecondNavView(value: fruit)
                    }
//                    .navigationDestination(for: Int.self) { value in
//                        SecondNavView(value: value)
//                    }
                }
            }
        }
    }
}

struct SecondNavView: View {
    
    let value: String
    
    init(value: String) {
        self.value = value
        print("Init screen \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
