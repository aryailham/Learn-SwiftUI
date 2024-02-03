//
//  TransitionBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom, content: {
            VStack(content: {
                Button(action: {
                    self.showView.toggle()
                }, label: {
                    Text("Button")
                })
                Spacer()
            })
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
        })
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
