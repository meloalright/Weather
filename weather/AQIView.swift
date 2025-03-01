//
//  AQIView.swift
//  weather
//
//  Created by m3 on 2025/3/2.
//

import SwiftUI

struct AQIView: View {
    var body: some View {
        HStack {
            Text("AQI").font(.caption2)
            Text("23")
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.white]), startPoint: .leading, endPoint: .trailing).frame(height: 10).cornerRadius(25)
                HStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 50).stroke(lineWidth: 1.75).fill().frame(width: 10, height: 10).foregroundColor(.black).shadow(color: .white, radius: 1, x: 0.0, y: 0.0)
                    Spacer()
                    Spacer()
                }
            }
            Text("优")
        }.padding()
        
        Divider().background(Color.white)
    }
}

struct AQIView_Previews: PreviewProvider {
    static var previews: some View {
        AQIView()
    }
}
