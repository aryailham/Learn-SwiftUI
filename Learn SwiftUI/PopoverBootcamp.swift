//
//  PopoverBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(.all)
            
            VStack {
                Button(action: {
                    showNewScreen.toggle()
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                        .font(.largeTitle)
                })
                // method 1 - sheet
//                .sheet(isPresented: $showNewScreen, content: {
//                    NewScreen()
//                })
                Spacer()
                // method 2 - transition
                if showNewScreen {
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring)
                        .ignoresSafeArea()
                }
            }
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var presentation
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack {
            ZStack(alignment: .topLeading) {
                Color.purple
                    .ignoresSafeArea(edges: .all)
                Button(action: {
//                    presentation.callAsFunction()
                    showNewScreen.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                })

            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}
