//
//  TextfieldBootcamp.swift
//  Learn SwiftUI
//
//  Created by Arya Ilham on 03/02/24.
//

import SwiftUI

struct TextfieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataToShow: [String] = []
    var body: some View {
        VStack(content: {
            TextField("Insert here", text: $textFieldText)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 30)
            Button(action: {
                addText(newData: textFieldText)
            }, label: {
                Text("Submit data")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            })
            .padding(.horizontal, 30)
            List {
                ForEach(dataToShow, id: \.self) { data in
                    Text(data)
                }
                .onDelete(perform: { indexSet in
                    dataToShow.remove(atOffsets: indexSet)
                })
            }
        })
    }

    func addText(newData: String) {
        guard !newData.isEmpty else { return }
        dataToShow.append(newData)
        textFieldText = ""
    }
}

#Preview {
    TextfieldBootcamp()
}
