//
//  ContentView.swift
//  Publisher
//
//  Created by Abdul Ahad on 27.12.23.
//

import SwiftUI

class ViewModel:ObservableObject{
    @Published var name:String = ""
    @Published var validation:String = ""
    
    init() {
        $name.map{
            print("name is \(self.name)")
            print("value in pipeline is \($0)")

           return $0.isEmpty ? "its empty":"filled"
        }.assign(to:&$validation)
    }
}
struct ContentView: View {
   @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! \(viewModel.name)")
            TextField("name", text: $viewModel.name).textFieldStyle(RoundedBorderTextFieldStyle())
            Text(viewModel.validation)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
