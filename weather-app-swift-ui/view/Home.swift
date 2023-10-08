//
//  ContentView.swift
//  weather-app-swift-ui
//
//  Created by Adil Elhaci on 8.10.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        ZStack {
        
            LinearGradient(colors: [Color.blue,Color.blue.opacity(0.4)], startPoint: .top, endPoint:.bottom)
                .ignoresSafeArea()
            VStack{
                
                Text("C")
                
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    
                Text("Hello, world!")
                
            }
        }
       
    }
}

#Preview {
    MainScreen()
}
