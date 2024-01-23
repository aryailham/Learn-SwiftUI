//
//  ForeachBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct ForeachBootcamp: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index])")
            }
        }
    }
}

#Preview {
    ForeachBootcamp()
}
