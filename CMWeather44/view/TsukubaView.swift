//
//  TsukubaView.swift
//  CMWeather44
//
//  Created by cmStudent on 2023/01/17.
//

import SwiftUI

struct TsukubaView: View {
    @ObservedObject var viewModel: WeatherViewModel
    var body: some View {
        
        VStack {
        Text("茨城県 つくば市")
          
        .font(.system(size: 50))
    
        Image(viewModel.icon)
        .resizable()
            .scaledToFit()
            .frame(width: 300.0, height: 120.0)
    
        Text("\(viewModel.descriptionText)")
        .font(.system(size: 22))
    
        Text("降水確率：\(viewModel.pop)")
        .font(.system(size: 22))
    VStack{
        Text("湿度：\(viewModel.humidity)")
        .font(.system(size: 22))
    
        Text("日中温度：\(viewModel.tempDay)")
        .font(.system(size: 22))
    
        Text("最高気温：\(viewModel.tempMax)")
                .font(.system(size: 22))
        Text("最低気温：\(viewModel.tempMin)")
                .font(.system(size: 22))
    
        Text("紫外線：\(viewModel.uvi)")
                .font(.system(size: 22))
        Text("気圧：\(viewModel.pressure)")
                .font(.system(size: 22))
        
        
    }
        }.onAppear(perform: viewModel.tskuba)
    }
}
struct TsukubaView_Previews: PreviewProvider {
    static var previews: some View {
        TsukubaView(viewModel: WeatherViewModel())
    }
}
