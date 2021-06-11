//
//  BackgroundRectangle.swift
//  LevelUp
//
//  Created by Mac n°26 on 11/06/2021.
//

import SwiftUI

struct BackgroundRectangle: View {
    var color: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color(color))
        RoundedRectangle(cornerRadius: 25)
            .strokeBorder(Color("orPopUp"),lineWidth: 10)
    }
    }
}

struct BackgroundRectangle_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRectangle(color: "vert")
    }
}
