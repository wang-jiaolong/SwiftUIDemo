//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Jiaolong on 2024/2/26.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink("StateObject & ObservedObject", destination: StateObject_ObservedObject())
            }
            .navigationTitle("Best Practice")
            .navigationBarTitleDisplayMode(.large)

        }
    }

}

