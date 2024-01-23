//
//  BackgroundOverlayBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct BackgroundOverlayBootcamp: View {
    @State var data: String = "1"
    var body: some View {
        VStack {
            Circle()
                .fill(.green)
                .frame(width: 100, height: 100, alignment: .center)
            //                .overlay {
            //                    Text("1")
            //                        .font(.largeTitle)
            //                        .foregroundStyle(.white)
            //                }
                .overlay(alignment: .center) {
                    Text(data)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(alignment: .bottomTrailing) {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50)
                }
                .background(alignment: .bottomTrailing) {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150, alignment: .topLeading)

                }
            Button("change data") {
                self.data = "2"
            }
        }
    }
}

#Preview {
    BackgroundOverlayBootcamp()
}

