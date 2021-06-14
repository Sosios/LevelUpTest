//
//  SwiftUIView.swift
//  LevelUp
//
//  Created by Mac n°26 on 11/06/2021.
//

import SwiftUI

struct GamePopUp: View {
    let game : Game
    var columns: [GridItem] =
        Array(repeating: .init(.flexible()), count: 3)
    var body: some View {
        GeometryReader{ geometry in
            ZStack {
                BackgroundRectangle(color: "vert")
                    .frame(width: geometry.size.width*0.8, height:geometry.size.height*0.8)
                VStack {
                    VStack{
                        Image(game.gameImg)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(height:geometry.size.height * 0.3)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Spacer()
                        VStack{
                            Text(game.gameName)
                                .font(Font.custom("SFUIDisplay-Regular", size: 20))
                                .foregroundColor(.purple)
                                .multilineTextAlignment(.center)
                            Spacer().frame(height:10)
                            Text(game.gameShortDescription)
                                .foregroundColor(.white)
                                .font(Font.custom("SFUIDisplay-Regular", size: 18))
                                .multilineTextAlignment(.center).fixedSize(horizontal: false, vertical: true)
                            
                            
                            Spacer().frame(height:10)
                            VStack {
                                Spacer()
                                Text("Points à remporter :").foregroundColor(.white)
                                    .font(Font.custom("SFUIDisplay-Regular", size: 18))
                                Spacer()
                                LazyVGrid(columns: columns){
                                    Text("Pro : \(game.nbPtsPro)")
                                    Text("Hygiène : \(game.nbPtsHyg)")
                                    Text("Quo : \(game.nbPtsQuo)")
                                    Text("Sur : \(game.nbPtsSur)")
                                    Text("DevPer : \(game.nbPtsDevPer)")
                                    Text("Pra : \(game.nbPtsPra)")
                                }.foregroundColor(.white)
                                .font(Font.custom("SFUIDisplay-Regular", size: 18))
                                
                            }
                        }.frame(maxWidth:.infinity)
                        VStack {
                            Spacer().frame(height:20)
                            HStack {
                                ForEach(0...game.nbEtoile, id:\.self){_ in
                                    Image("ptsEtoile")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                    
                                }
                            }
                            .frame(maxWidth:.infinity,maxHeight: .infinity)
                            
                            Spacer().frame(maxHeight:20)
                        }
                    }.padding(.horizontal,15)
                    Spacer()
                    Button(){}label:{
                        VStack {
                            Text("Commencer à jouer").foregroundColor(.white)
                                .font(Font.custom("SFUIDisplay-Regular", size: 33))
                        }.frame(maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }
                
            }
        }
        
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GamePopUp(game:GAME2)
        
        
    }
}
