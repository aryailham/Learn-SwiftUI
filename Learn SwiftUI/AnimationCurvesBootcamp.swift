//
//  AnimationCurvesBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct AnimationCurvesBootcamp: View {
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                    self.isAnimating.toggle()
            }, label: {
                Text("Please click this button")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .foregroundStyle(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.green)
                    }
            })
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
                .animation(.linear, value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
                .animation(.easeIn, value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
                .animation(.easeInOut, value: isAnimating)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
                .animation(.easeOut, value: isAnimating)

        }
    }
}

#Preview {
    AnimationCurvesBootcamp()
}
