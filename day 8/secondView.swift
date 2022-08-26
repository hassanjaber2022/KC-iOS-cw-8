//
//  secondView.swift
//  day 8
//
//  Created by mac on 26/08/2022.
//

import SwiftUI

struct secondView: View {
    let myC : Color
    let myS : String
    var body: some View {
        ZStack{
            myC.ignoresSafeArea()
        
        VStack{
            Text(myS)
            }
        }
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView(myC: Color.yellow, myS: "Heallo world")
    }
}
