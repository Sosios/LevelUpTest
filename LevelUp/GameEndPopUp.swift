//
//  GemeEndPopUp.swift
//  LevelUp
//
//  Created by Mac n°26 on 11/06/2021.
//

import SwiftUI

struct GameEndPopUp: View {
    let player : Player
    let game: Game
    var body: some View {
        if player.achievedGame.contains(game){
            ZStack{
                BackgroundRectangle(color: "vert")
                VStack{
                    
                    Spacer()
                    
                    Text("Félicitations")
                        .font(Font.custom("Revalia", size: 39))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 3, y: 3)
                    Spacer()
                    
                    Image("trophy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth:.infinity)
                        .padding(.horizontal,50)
                    Spacer()
                    
                    HStack{
                        Text("Tu a gagné \(game.nbEtoile)")
                            .font(Font.custom("Revalia",size:35))
                        Image("ptsEtoile")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 3, y: 3)
                    
                    Spacer()
                    
                    Button(){}label:{
                        Text("Génial")
                            .font(Font.custom("Revalia", size: 25))
                            .foregroundColor(.white)
                            .padding(.vertical,15)
                            .padding(.horizontal,70)
                            .background(Color("violet"))
                            .cornerRadius(35)
                    }.shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 3, y: 3)
                    Spacer()
                }.padding(15)
                
            }
        }else{
            ZStack{
                BackgroundRectangle(color:"rouge")
                VStack{
                    
                    Spacer()
                    
                    Text("Courage !")
                        .font(Font.custom("Revalia", size: 39))
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 3, y: 3)
                    Spacer()
                    
                    Image("trophy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth:.infinity)
                        .padding(.horizontal,50)
                    Spacer()
                    
                    HStack{
                        Text("Tu y es presque")
                            .font(Font.custom("Revalia",size:35))
                    }.shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 3, y: 3)
                    
                    Spacer()
                    
                    Button(){}label:{
                        Text("C'est reparti !")
                            .font(Font.custom("Revalia", size: 25))
                            .foregroundColor(.white)
                            .padding(.vertical,15)
                            .padding(.horizontal,70)
                            .background(Color("violet"))
                            .cornerRadius(35)
                    }.shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 7, x: 3, y: 3)
                    Spacer()
                }.padding(15)
                    
            }
        }
    }
}

struct GameEndPopUp_Previews: PreviewProvider {
    static var previews: some View {
        GameEndPopUp(player: PLAYER2, game: GAME1)
    }
}
