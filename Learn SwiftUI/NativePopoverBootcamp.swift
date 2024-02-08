//
//  NativePopoverBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 08/02/24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack(content: {
            Color.gray.ignoresSafeArea()
            
            Button("click") {
                showPopover.toggle()
            }
            .popover(isPresented: $showPopover,attachmentAnchor: .point(.topLeading), content: {
                Text("Hello")
                    .presentationCompactAdaptation(.popover)
            })
        })
    }
    
}

#Preview {
    NativePopoverBootcamp()
}
