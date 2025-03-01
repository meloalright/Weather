//
//  WeekRowView.swift
//  weather
//
//  Created by m3 on 2025/3/2.
//

import SwiftUI

struct WeekRowView: View {
    
    var week: String
    
    var weather: Image
    
    var maxTemperature: Int
    
    var minTemperature: Int
    
    var body: some View {
        HStack{
            
            Text(week).padding(.trailing).padding(.leading)
            Spacer()
            weather
            Spacer()
            Text("\(maxTemperature)°")
            Spacer()
            Text("\(minTemperature)°").foregroundColor(Color(red: 175/255, green: 180/255, blue: 185/255)).padding(.trailing)
            
        }.padding(.vertical, 2)
    }
}
