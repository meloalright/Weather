//
//  PartList.swift
//  weather
//
//  Created by m3 on 2025/3/2.
//


import SwiftUI

struct PartListView: View {
    
    struct PartVo: Identifiable{
        var id: String = UUID().uuidString
        var title: String
        var text: String
    }
    
    var partVos :[PartVo] = [PartVo(title: "日出", text: "05:44"),
                             PartVo(title: "日落", text: "20:02"),
                             PartVo(title: "降雨概率", text: "10%"),
                             PartVo(title: "湿度", text: "33%"),
                             PartVo(title: "风", text: "东东南7米/秒"),
                             PartVo(title: "体感温度", text: "36°"),
                             PartVo(title: "降雨量", text: "0毫米"),
                             PartVo(title: "气压", text: "1010百帕"),
                             PartVo(title: "能见度", text: "9.7公里"),
                             PartVo(title: "紫外线指数", text: "1"),]
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(partVos){partVo in
                PartView(title: partVo.title, text: partVo.text)
                Divider().background(Color.white)
            }
        }.padding()
        
        
    }
}

struct PartListView_Previews: PreviewProvider {
    static var previews: some View {
        PartListView()
    }
}
