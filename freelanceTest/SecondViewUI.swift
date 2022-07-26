//
//  SecondViewUI.swift
//  freelanceTest
//
//  Created by Djinsolobzik on 26.02.2022.
//

import SwiftUI
import UIKit
struct SecondViewUI: View {
    @State private var showingAlert = false
    @Binding var rootPresenting: Bool
    @State var duration = 30
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("Осталось: \(duration) сек.").onReceive(timer) { timerOne in
                
                duration -= 1
                if duration == 0 {
                    
                    timer.upstream.connect().cancel()
                    showingAlert = true
                    
                }
            }.alert("Время истекло", isPresented: $showingAlert) {
                Button("ОК") { rootPresenting = false}
                
                
            }
        }
        
        
    }
    
}




