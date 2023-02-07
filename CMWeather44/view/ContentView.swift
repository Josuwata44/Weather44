import SwiftUI

import Foundation

                                                                           
struct ContentView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    @State private var isPresented: Bool = false
    @State var isActive = false
    @State var isActive2 = false
    @State var isActive3 = false
    @State var isActive4 = false
    @State var isActive5 = false
    @State var isActive6 = false
    @State var isActive7 = false
    
    var body: some View {

        NavigationView {
            ZStack {
                Image("sky")
                    .resizable()
                        .frame(width: 500, height: 1500)
                    VStack(spacing: -10){
                        Text("関東の天気")
                            .fontWeight(.bold)
                        HStack {
                            VStack {
        
                        Button(action: {
                            self.isActive = true
                        }) {
                            Image("tokyo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 110, height: 110)
                        }
                            
                            Text("東京秋葉原")
                                    .fontWeight(.bold)
                            
                        NavigationLink(destination: AkibaView(viewModel: WeatherViewModel()), isActive: $isActive) {
                           
                        }
                            }
                            
                            VStack  {
                            
                            Button(action: {
                                self.isActive2 = true
                            }) {
                                Image("saitama")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 110, height: 110)
                            }
                            
                            Text("埼玉県大宮")
                                    .fontWeight(.bold)
                            
                            NavigationLink(destination:  OomiyaView(viewModel: WeatherViewModel()), isActive: $isActive2) {
                            }
                            }
                                
                        }
                            
                            HStack {
                                
                                VStack {
                                Button(action: {
                                    self.isActive3 = true
                                }) {
                                    Image("kanagawa")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110, height: 110)
                                }
                                
                                Text("神奈川県川崎")
                                        .fontWeight(.bold)
                                
                                NavigationLink(destination:  KawasakiView(viewModel: WeatherViewModel()), isActive: $isActive3) {
                                    
                                }
                                }
                                
                                VStack {
                                
                                Button(action: {
                                    self.isActive4 = true
                                }) {
                                    Image("ibaraki")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110, height: 110)
                                }
                                
                                Text("茨城県つくば")
                                        .fontWeight(.bold)
                                
                                NavigationLink(destination: TsukubaView(viewModel: WeatherViewModel()), isActive: $isActive4) {
                                    
                                }
                                }
                            }
                            
                            HStack {
                                
                                VStack {
                                Button(action: {
                                    self.isActive5 = true
                                }) {
                                    Image("gunma")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110, height: 110)
                                }
                                
                                Text("群馬県前橋")
                                        .fontWeight(.bold)
                                
                                NavigationLink(destination: MaebashiView(viewModel: WeatherViewModel()), isActive: $isActive5) {
                                    
                                }
                                }
                                
                                VStack {
                                
                                Button(action: {
                                    self.isActive6 = true
                                }) {
                                    Image("chiba")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110, height: 110)
                                }
                                
                                Text("千葉県船橋")
                                        .fontWeight(.bold)
                                
                                NavigationLink(destination:  ChibaView(viewModel: WeatherViewModel()), isActive: $isActive6) {
                                   
                                }
                                }
                            }
                            
                                Button(action: {
                                    self.isActive7 = true
                                }) {
                                    Image("tochigi")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110, height: 110)
                                }
                        Text("栃木県宇都宮")
                            .fontWeight(.bold)
                                
                                NavigationLink(destination: UstunomiyaView(viewModel: WeatherViewModel()), isActive: $isActive7) {
                                   
                                }
                            }
               
                        }
                    }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: WeatherViewModel())
    }
}
