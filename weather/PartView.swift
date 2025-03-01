//
//  PartVie.swift
//  weather
//
//  Created by m3 on 2025/3/2.
//


import SwiftUI

struct PartView: View {
    var title: String
    var text: String
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(title).font(.caption2).foregroundColor(Color(red: 175/255, green: 180/255, blue: 185/255))
                Text(text).font(.title2).foregroundColor(.white)
                
            }.background(Color.clear)
            Spacer()
            
        }
        
    }
}

struct PartView_Previews: PreviewProvider {
    static var previews: some View {
        PartView(title: "日出", text: "05:44")
    }
}
