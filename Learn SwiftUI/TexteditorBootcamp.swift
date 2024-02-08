//
//  TexteditorBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct TexteditorBootcamp: View {
    @State var inputtedText: String = ""
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack {
            Color("backgroundColor", bundle: nil)
            VStack {
                TextEditor(text: $inputtedText)
                    .frame(height: 100)
                    .border(Color.black)
                
                ScrollView {
                    Text(inputtedText)
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    TexteditorBootcamp()
}
