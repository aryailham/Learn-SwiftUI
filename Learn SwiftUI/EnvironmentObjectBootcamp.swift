//
//  EnvironmentObjectBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 04/02/24.
//

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        for index in 0...10 {
            dataArray.append("number \(index)")
        }
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { data in
                    NavigationLink {
                        DetailView(selectedItem: data)
                    } label: {
                        Text(data)
                    }
                }
            }
            .navigationTitle("EnvironmentObject")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark")
                    })
                }
            })
        }.environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    init(selectedItem: String) {
        self.selectedItem = selectedItem
    }
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .foregroundStyle(.green)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20, content: {
                    ForEach(viewModel.dataArray, id: \.self) { data in
                        Text(data)
                    }
                })
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
}
