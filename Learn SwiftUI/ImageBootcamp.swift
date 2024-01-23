//
//  ImageBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 23/01/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("customImage", bundle: nil)
            .resizable()
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(15.0)
//            .clipShape(.rect(cornerSize: CGSize(width: 15, height: 15)))
    }
}

#Preview {
    ImageBootcamp()
}
