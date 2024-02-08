//
//  ListBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "Mango",
        "Apples",
        "Banana",
        "Peach"
    ]
    
    @State var veggies: [String] = [
        "Tomato",
        "Potato",
        "Carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onMove(perform: { indices, newOffset in
                        move(fromOffSets: indices, toOffSets: newOffset)
                    })
                    .onDelete(perform: { indexSet in
                        delete(indexSet: indexSet)
                    })
                } header: {
                    Text("Fruits")
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veg in
                        Text(veg)
                    }
                } header: {
                    Text("Veggies")
                }

            }
            .tint(.purple)
            .navigationTitle("List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        add()
                    }
                }
            }
        }.tint(.red)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(fromOffSets: IndexSet, toOffSets: Int) {
        fruits.move(fromOffsets: fromOffSets, toOffset: toOffSets)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
