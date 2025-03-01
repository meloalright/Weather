//
//  ContentView.swift
//  weather
//
//  Created by m3 on 2025/3/2.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var times: [String] = [
        "现在","17时","18时","19时","20时","21时","22时","23时","00时","01时","02时","03时","04时","05时","06时","07时","08时","09时","10时","11时","12时","13时","14时","15时","16时"
    ]
    
    var weathers: [Image] = [
        Image(systemName: "sun.min.fill"),
        Image(systemName: "moon.fill"),
        Image(systemName: "cloud.bolt.rain.fill")
    ]
    
    var weeks = [
        "星期五","星期六","星期日","星期一","星期二","星期三","星期四","星期五","星期六"
    ]
    
    var body: some View {
        ZStack{
            Image("landscape").resizable()
            ScrollView{
                Rectangle().frame(height: 50).foregroundColor(.clear)
                LazyVStack{
                    VStack{
                        Text("杨浦区").font(.title)
                        Text("局部多云")
                        Text("16°").font(.system(size: 75))
                        Text("最高26° 最低14°").bold()
                    }.padding(.top, 50)
                    AQIView()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            ForEach(times, id:\.self){time in
                                
                                HoursView(time: time, weather: weathers[Int.random(in: 0..<3)], temperature: Int.random(in: 15..<27))
                            }
                        }.padding([.trailing,.leading])
                    }
                    Divider().background(Color.white)
                    VStack{
                        ForEach(weeks, id: \.self){week in
                            WeekRowView(week: week, weather: weathers[Int.random(in: 0..<3)], maxTemperature: Int.random(in: 26..<29), minTemperature: Int.random(in: 12..<15))
                        }
                    }
                    Divider().background(Color.white)
                    PartListView()
                    HStack{
                        Text("查看杨浦区的天气").foregroundColor(.white)
                        
                        Link(destination: URL(string: "http://maps.apple.com")!, label: {
                            Text("在“地图”中打开").underline()
                        })
                    }
                    
                    Rectangle().frame(height: 50).foregroundColor(.clear)
                }
            }.foregroundColor(.white)
        }.edgesIgnoringSafeArea(.all)
    }
    
}

#Preview {
    ContentView()
}
