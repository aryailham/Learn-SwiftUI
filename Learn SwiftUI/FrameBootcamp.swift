//
//  FrameBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(.green)
//            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .frame(width: 100, height: 100)
            .background(.orange)
            .frame(width: 100, height: 200)
            .background(.red)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(.blue)
    }
}

#Preview {
    FrameBootcamp()
}
