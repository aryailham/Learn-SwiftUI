//
//  FocusStateBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @FocusState private var shouldUsernameFocused: Bool
    @FocusState private var shouldPasswordFocused: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    var body: some View {
        VStack(content: {
            TextField("Insert name", text: $username)
//                .focused($shouldUsernameFocused)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .padding(.horizontal, 20)
            
            TextField("Insert password", text: $password)
                .focused($shouldPasswordFocused)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .padding(.horizontal, 20)
            
            Button("Toggle focus state") {
                shouldUsernameFocused = username.isEmpty
                shouldPasswordFocused = password.isEmpty
                
                
            }
        })
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                shouldUsernameFocused = true
            }
        })
    }
}

#Preview {
    FocusStateBootcamp()
}
