//
//  SheetsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    @State var title: String = "title for A"
    
    var body: some View {
        ZStack(content: {
            Color.green.ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            })
            .sheet(isPresented: $showSheet, content: {
                // DO NOT ADD CONDITIONAL LOGIC
                SecondView(title: $title)
            })
        })
    }
}

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var title: String
    
    var body: some View {
        ZStack {
            ZStack(alignment: .topLeading, content: {
                Color.red.ignoresSafeArea()
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            })
            Text(title)
        }

    }
}

#Preview {
    SheetsBootcamp()
}
