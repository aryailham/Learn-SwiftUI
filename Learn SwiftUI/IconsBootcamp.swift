//
//  IconsBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Text("Icon Bootcamp")
        Image(systemName: "heart.fill")
//            .font(.system(size: 50))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.red)
            .frame(width: 100, height: 100, alignment: .center)
    }
}
#Preview {
    IconsBootcamp()
}
