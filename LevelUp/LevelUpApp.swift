//
//  LevelUpApp.swift
//  LevelUp
//
//  Created by Laura LONG on 10/06/2021.
//

import SwiftUI

@main
struct LevelUpApp: App {
    var body: some Scene {
        WindowGroup {
            GameEndPopUp(player: PLAYER2, game: GAME2)
        }
    }
}
