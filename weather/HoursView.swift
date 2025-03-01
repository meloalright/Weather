//
//  WeekRowView.swift
//  weather
//
//  Created by m3 on 2025/3/2.
//

import SwiftUI

struct HoursView: View {
    
    var time: String
    
    var weather: Image
    
    var temperature: Int
    
    var body: some View {
        VStack{
            
            Text(time).padding(.bottom, 5)
            Spacer()
            weather
            Spacer()
            Text("\(temperature)°")
        }.padding(.horizontal, 2)
    }
}
