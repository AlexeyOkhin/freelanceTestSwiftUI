//
//  ContentView.swift
//  freelanceTest
//
//  Created by Djinsolobzik on 26.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var rootPresenting: Bool = false
    var body: some View {
        NavigationView{
            
            ZStack {
                Color.red.edgesIgnoringSafeArea(.all)
                VStack{
                    Text("текст на экране №1")
                        .padding()
                    NavigationLink(destination: SecondViewUI(rootPresenting: $rootPresenting), isActive: $rootPresenting) {
                        
                        Text("Далее")
                        
                    }
                }
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
