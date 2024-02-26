//
//  StateObject_ObservedObject.swift
//  SwiftUIDemo
//
//  Created by Jiaolong on 2024/1/25.
//

import SwiftUI

struct StateObject_ObservedObject: View {
    @State var counter = 0

        var body: some View {
            VStack {
                Text("Counter One is: \(counter)")
                
                Button("Increment Counter") {
                    counter += 1
                }
                
                Text("aaa")
                
                CounterTwoView(viewModel:CounterTwoViewModel())

            }.padding(.bottom)
            
        }
}

#Preview {
    StateObject_ObservedObject()
}

struct CounterTwoView: View {
//    @StateObject var viewModel:CounterTwoViewModel
    @ObservedObject var viewModel:CounterTwoViewModel

    var body: some View {
        VStack {
            Text("Counter Two is: \(viewModel.count)")
            Button("Increment Counter") {
                viewModel.incrementCounter()
            }
        }
    }
}

final class CounterTwoViewModel: ObservableObject {
    @Published var count = 0

    init(count: Int = 0) {
        self.count = count
        print("init")
    }
    
    func incrementCounter() {
        count += 1
    }
}
