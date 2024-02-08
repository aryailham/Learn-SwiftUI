//
//  AsyncImageBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        mainSection
    }
    
    var mainSection: some View {
        VStack(content: {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            } placeholder: {
                ProgressView()
            }
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                case .failure(let error):
                    Text(error.localizedDescription)
                }
            }

            Text("")
        })
    }
}

#Preview {
    AsyncImageBootcamp()
}
