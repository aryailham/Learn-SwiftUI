//
//  AnimationBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 01/02/24.
//

import SwiftUI

struct AnimationBootcamp: View {

    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button {
                withAnimation(.default) {
                    self.isAnimated.toggle()
                }
            } label: {
                Text("Please click this button")
                    .foregroundStyle(.white)
                    .padding()
            }.background {
                Color.green
                    .frame(minWidth: 10, minHeight: 50)
                    .cornerRadius(20)
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
