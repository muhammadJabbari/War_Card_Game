//
//  ContentView.swift
//  War Card  Game
//
//  Created by Mohammad Jabbari on 9/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("player")
                            .font(.title)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            
        }
    }
    func deal(){
        
        let playerCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue{
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
