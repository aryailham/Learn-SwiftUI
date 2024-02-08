//
//  ListSwipeActionBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
//                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
//                        Button("Archive") {
//                            
//                        }
//                        .tint(.blue)
////                        Button("Save") {
////                            
////                        }
////                        .tint(.green)
////                        Button("Junk") {
////                            
////                        }
////                        .tint(.yellow)
//                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                    }
            }
            .onDelete(perform: { indexSet in
                
            })
        }
    }
}

#Preview {
    ListSwipeActionBootcamp()
}
