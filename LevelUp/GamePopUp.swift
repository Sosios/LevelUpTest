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
        ZStack {
            BackgroundRectangle(color: "vert")
            VStack {
                VStack{
                        Image(game.gameImg)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    Spacer()
                        VStack{
                            Text(game.gameName)
                                .font(Font.custom("SFUIDisplay-Light", size: 20))
                                .foregroundColor(.purple)
                                .multilineTextAlignment(.center)
                                .fixedSize(horizontal: false, vertical: true)
                            Spacer().frame(height:10)
                            Text(game.gameShortDescription)
                                .foregroundColor(.white)
                                .font(Font.custom("SFUIDisplay-Regular", size: 20))
                                .multilineTextAlignment(.center)
                                .fixedSize(horizontal: false, vertical: true)
                            Spacer().frame(height:10)
                            VStack {
                                Spacer().frame(maxHeight:.infinity)
                                Text("Points à remporter :").foregroundColor(.white)
                                    .font(Font.custom("SFUIDisplay-Regular", size: 20))
                                Spacer().frame(maxHeight:.infinity)
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
                        Spacer().frame(maxHeight:.infinity)
                        HStack {
                            ForEach(0...game.nbEtoile, id:\.self){_ in
                                Image("ptsEtoile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                
                            }.frame(maxWidth:100,maxHeight: 100)
                        }
                        Spacer().frame(maxHeight:.infinity)
                    }
                }.padding(.horizontal,15)
                
                Rectangle().foregroundColor(Color("orPopUp"))
                    .frame(maxWidth:.infinity,maxHeight:10)
                Button(){}label:{
                    VStack {
                        Text("Commencer à jouer").foregroundColor(.white)
                            .font(Font.custom("SFUIDisplay-Regular", size: 33))
                    }.frame(maxWidth: .infinity, maxHeight: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }.padding(.vertical,20)
        }
            
            
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GamePopUp(game:GAME2)
        
        
    }
}
