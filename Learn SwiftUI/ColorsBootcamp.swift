//
//  ColorsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 18/01/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(
//                    .primary
//                    Color(UIColor.black)
                    Color("customColor")
                )
            .frame(width: 100, height: 100)
            .shadow(color: Color("customColor").opacity(0.3), radius: 10, x: 10, y: 10)
        }
    }
}

#Preview {
    ColorsBootcamp()
}
