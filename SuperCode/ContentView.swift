//
//  ContentView.swift
//  SuperCode
//
//  Created by Aristide BAUCHART on 17/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var petCount = 0
    var body: some View {
        VStack {
            Image(systemName: "macbook")
                .imageScale(.large)
                .font(.system(size: 50))
                .padding()
            
            Text("Welcome to SuperCode")
            
       } .padding()
        
        Button {
            petCount += 1
        } label: {
            Label("Start Coding", systemImage: "macpro.gen3.server")
            
        }
        .contentTransition(.symbolEffect(.replace))
        .font(.largeTitle .bold())
        
        
        .padding()
    }
}

#Preview {
    ContentView()
}
