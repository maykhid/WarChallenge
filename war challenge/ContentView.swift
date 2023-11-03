//
//  ContentView.swift
//  war challenge
//
//  Created by Henry Ifebunandu on 11/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    
                    Spacer()
                }
                
                Spacer()
                
               
                
                Button {
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                   playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    if (playerRandom > cpuRandom) {
                        playerScore += 1
                    } else if (cpuRandom > playerRandom){
                        cpuScore += 1
                    }
                    
                    
                } label: {
                    Image("dealbutton")
                }

                
                Spacer()
                
                HStack{
                    Spacer()
                    // player
                    VStack(spacing: 10.0){
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    // cpu
                    VStack(spacing: 10.0){
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            ContentView()
                .previewDevice("iPhone 8 Plus")
        }
    }
}
