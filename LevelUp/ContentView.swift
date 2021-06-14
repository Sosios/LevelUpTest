//
//  ContentView.swift
//  LevelUp
//
//  Created by Laura LONG on 10/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State var pressbutton = false
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                
                Image("essai")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:geometry.size.width)
                VStack{
                    Spacer()
                    Button(action:{ withAnimation(.default){
                            pressbutton.toggle()}}, label: {
                                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/.foregroundColor(.white)
                                    .padding(10)
                                    .padding(.horizontal,50)
                                    
                                    .background(Color.purple)
                                    .cornerRadius(25)
                                    .font(.system(size: 25))
                                
                            })
                    Spacer()
                }
                
                if pressbutton{
                    GamePopUp(game: GAME2)
                        .frame(width: geometry.size.width  * 0.8, height:  geometry.size.height * 0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
                }
            }
            
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
