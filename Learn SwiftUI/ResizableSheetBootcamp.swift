//
//  ResizableSheetBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Moehammad Ilham on 07/02/24.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        Button("Click me") {
            isPresented.toggle()
        }
        .sheet(isPresented: $isPresented, content: {
            SecondScreenView()
                .presentationDetents([.medium])
        })
    }
}

struct SecondScreenView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text("Hello world")
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
