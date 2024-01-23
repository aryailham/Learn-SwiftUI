//
//  SafeAreaBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
//                    Button(action: {
//                        
//                        
//                    }, label: {
//                        RoundedRectangle(cornerRadius: 25.0)
//                            .fill(.white)
//                            .frame(height: 150)
//                            .shadow(radius: 10)
//                            .padding(20)
//                    })
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(Color.red)
//        .clipped()
        
        
        
//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            // foreground
//            VStack(content: {
//                Text("Placeholder")
//                Spacer()
//            })
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//            .clipped()
//        }
//        Text("Hello, World!")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SafeAreaBootcamp()
}
