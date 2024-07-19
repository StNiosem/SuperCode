//
//  ContentView.swift
//  SuperCode
//
//  Created by Aristide BAUCHART on 17/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isClicked = false

    
    var body: some View {
        
        
        VStack {
            Image(systemName: isClicked ? "checkmark" : "macbook")
                .imageScale(.large)
                .font(.system(size: 50))
                .padding()
            
            Text("Welcome to SuperCode")
            
       }
        .contentTransition(.symbolEffect(.replace))
        .padding()
        
        
        Button {
            withAnimation {
                isClicked.toggle()
            }
        } label: {
            Label("Start Coding", systemImage: isClicked ? "server.rack" : "macpro.gen3.server")
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
                
        }
        
        .contentTransition(.symbolEffect(.replace))
        .font(.largeTitle .bold())
        
        
        .padding()
    }
}

#Preview {
    ContentView()
}
