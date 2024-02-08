//
//  OnAppearBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText: String = "Start text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack(content: {
                    ForEach(1...10, id: \.self) { count in
                        RoundedRectangle(cornerRadius: 16)
                            .frame(height: 200)
                            .padding()
                            .onAppear(perform: {
                                self.count += 1
                            })
                    }
                })
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "on appear text"
                }
            })
            .onDisappear(perform: {
                myText = "disappear text"
            })
            .navigationTitle("On appear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
