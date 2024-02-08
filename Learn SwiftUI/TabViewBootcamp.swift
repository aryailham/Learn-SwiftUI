//
//  TabViewBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some View {
        TabView(selection: .constant(1),
                content:  {
            FirstTabViewPage().tabItem {
                Image(systemName: "house.fill")
                Text("Tab 1")
            }.tag(1)
            SecondTabViewPage().tabItem {
                Image(systemName: "person.fill")
                Text("Tab 2")
            }.tag(2)
        })
        .tint(.blue)
        .background(.white)
    }
}
///
struct FirstTabViewPage: View {
    var body: some View {
        ZStack(content: {
            Color.red.ignoresSafeArea()
        })
    }
}

struct SecondTabViewPage: View {
    var body: some View {
        ZStack(content: {
            Color.green.ignoresSafeArea()
        })
    }
}

#Preview {
    TabViewBootcamp()
}
