//
//  WeatherViewModel.swift
//  weather*_44
//
//  Created by cmStudent on 2023/01/13.
//

import SwiftUI

class WeatherViewModel: ObservableObject {
    
    @Published var title = "-_-"
    @Published var descriptionText = "-_-"
    @Published var temp = "-_-"
    @Published var icon = ""
    @Published var feelsLike = "-_-"
    @Published var humidity  = "-_-"
    @Published var name = "-_-"
    @Published var result = "-_-"
    @Published var tempMin = "-_-"
    @Published var tempMax = "-_-"
    @Published var speed = "^_^"
    @Published var pressure = "^_^"
    @Published var lat = "^_^"
    @Published var pop = "^_^"
    @Published var lon = "^_^"
    @Published var tempnight = "-_-"
    @Published var tempDay = "-_-"
    @Published var uvi = "-_-"
    
    
    func akiba() {
        let applicationKey = KeyManager().getValue(key: "WeatherKey") as! String
            guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=35.6983223&lon=139.7730186&exclude=current,minutely,hourly,alerts&appid=\(applicationKey)&lang=ja&units=metric") else {
                return
            }
           
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                if let data = data {
     
                    let decoder = JSONDecoder()
                    guard let decodedResponse = try? decoder.decode(Welcome.self, from: data) else {
                        print("Json decode エラー")
                        return
                    }
                  
                    DispatchQueue.main.async {
                        self.pop = "\(decodedResponse.daily[0].pop * 100)%"
                        self.tempMax = "\(decodedResponse.daily[0].temp.max)°C"
                        self.icon = decodedResponse.daily[0].weather[0].icon
                        self.descriptionText = decodedResponse.daily[0].weather.first?.description ?? ""
                        self.tempMin = "\(decodedResponse.daily[0].temp.min)°C"
                        self.tempnight = "\(decodedResponse.daily[0].temp.night)°C"
                        self.tempDay = "\(decodedResponse.daily[0].temp.day)°C"
                        self.uvi = "\(decodedResponse.daily[0].uvi)"
                        self.humidity = "\(decodedResponse.daily[0].humidity)%"
                        self.pressure = "\(decodedResponse.daily[0].pressure)hpa"
                    }
                } else {
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
                }
            }.resume()
        }
    

func oomiya() {
    let applicationKey = KeyManager().getValue(key: "WeatherKey") as! String
        guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=35.9062039&lon=139.6237359&exclude=current,minutely,hourly,alerts&appid=\(applicationKey)&lang=ja&units=metric") else {
            return
        }
       
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data {
 
                let decoder = JSONDecoder()
                guard let decodedResponse = try? decoder.decode(Welcome.self, from: data) else {
                    print("Json decode エラー")
                    return
                }
              
                DispatchQueue.main.async {
                    self.pop = "\(decodedResponse.daily[0].pop * 100)%"
                    self.tempMax = "\(decodedResponse.daily[0].temp.max)°C"
                    self.icon = decodedResponse.daily[0].weather[0].icon
                    self.descriptionText = decodedResponse.daily[0].weather.first?.description ?? ""
                    self.tempMin = "\(decodedResponse.daily[0].temp.min)°C"
                    self.tempnight = "\(decodedResponse.daily[0].temp.night)°C"
                    self.tempDay = "\(decodedResponse.daily[0].temp.day)°C"
                    self.uvi = "\(decodedResponse.daily[0].uvi)"
                    self.humidity = "\(decodedResponse.daily[0].humidity)%"
                    self.pressure = "\(decodedResponse.daily[0].pressure)hpa"
                }
            } else {
                print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
            }
        }.resume()
    }
    
    func maebashi() {
        let applicationKey = KeyManager().getValue(key: "WeatherKey") as! String
            guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=36.3894&lon=139.0634&exclude=current,minutely,hourly,alerts&appid=\(applicationKey)&lang=ja&units=metric") else {
                return
            }
           
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                if let data = data {
     
                    let decoder = JSONDecoder()
                    guard let decodedResponse = try? decoder.decode(Welcome.self, from: data) else {
                        print("Json decode エラー")
                        return
                    }
                  
                    DispatchQueue.main.async {
                        self.pop = "\(decodedResponse.daily[0].pop * 100)%"
                        self.tempMax = "\(decodedResponse.daily[0].temp.max)°C"
                        self.icon = decodedResponse.daily[0].weather[0].icon
                        self.descriptionText = decodedResponse.daily[0].weather.first?.description ?? ""
                        self.tempMin = "\(decodedResponse.daily[0].temp.min)°C"
                        self.tempnight = "\(decodedResponse.daily[0].temp.night)°C"
                        self.tempDay = "\(decodedResponse.daily[0].temp.day)°C"
                        self.uvi = "\(decodedResponse.daily[0].uvi)"
                        self.humidity = "\(decodedResponse.daily[0].humidity)%"
                        self.pressure = "\(decodedResponse.daily[0].pressure)hpa"
                    }
                } else {
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
                }
            }.resume()
        }
    
    func tskuba() {
        let applicationKey = KeyManager().getValue(key: "WeatherKey") as! String
            guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=36.0834&lon=140.0766&exclude=current,minutely,hourly,alerts&appid=\(applicationKey)&lang=ja&units=metric") else {
                return
            }
           
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                if let data = data {
     
                    let decoder = JSONDecoder()
                    guard let decodedResponse = try? decoder.decode(Welcome.self, from: data) else {
                        print("Json decode エラー")
                        return
                    }
                  
                    DispatchQueue.main.async {
                        self.pop = "\(decodedResponse.daily[0].pop * 100)%"
                        self.tempMax = "\(decodedResponse.daily[0].temp.max)°C"
                        self.icon = decodedResponse.daily[0].weather[0].icon
                        self.descriptionText = decodedResponse.daily[0].weather.first?.description ?? ""
                        self.tempMin = "\(decodedResponse.daily[0].temp.min)°C"
                        self.tempnight = "\(decodedResponse.daily[0].temp.night)°C"
                        self.tempDay = "\(decodedResponse.daily[0].temp.day)°C"
                        self.uvi = "\(decodedResponse.daily[0].uvi)"
                        self.humidity = "\(decodedResponse.daily[0].humidity)%"
                        self.pressure = "\(decodedResponse.daily[0].pressure)hpa"
                    }
                } else {
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
                }
            }.resume()
        }
    
    
    func utsnomiya() {
        let applicationKey = KeyManager().getValue(key: "WeatherKey") as! String
            guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=36.5551&lon=139.8828&exclude=current,minutely,hourly,alerts&appid=\(applicationKey)&lang=ja&units=metric") else {
                return
            }
           
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                if let data = data {
     
                    let decoder = JSONDecoder()
                    guard let decodedResponse = try? decoder.decode(Welcome.self, from: data) else {
                        print("Json decode エラー")
                        return
                    }
                  
                    DispatchQueue.main.async {
                        self.pop = "\(decodedResponse.daily[0].pop * 100)%"
                        self.tempMax = "\(decodedResponse.daily[0].temp.max)°C"
                        self.icon = decodedResponse.daily[0].weather[0].icon
                        self.descriptionText = decodedResponse.daily[0].weather.first?.description ?? ""
                        self.tempMin = "\(decodedResponse.daily[0].temp.min)°C"
                        self.tempnight = "\(decodedResponse.daily[0].temp.night)°C"
                        self.tempDay = "\(decodedResponse.daily[0].temp.day)°C"
                        self.uvi = "\(decodedResponse.daily[0].uvi)"
                        self.humidity = "\(decodedResponse.daily[0].humidity)%"
                        self.pressure = "\(decodedResponse.daily[0].pressure)hpa"
                    }
                } else {
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
                }
            }.resume()
        }
    
    func kawasaki() {
        let applicationKey = KeyManager().getValue(key: "WeatherKey") as! String
            guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=35.5308&lon=139.703&exclude=current,minutely,hourly,alerts&appid=\(applicationKey)&lang=ja&units=metric") else {
                return
            }
           
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                if let data = data {
     
                    let decoder = JSONDecoder()
                    guard let decodedResponse = try? decoder.decode(Welcome.self, from: data) else {
                        print("Json decode エラー")
                        return
                    }
                  
                    DispatchQueue.main.async {
                        self.pop = "\(decodedResponse.daily[0].pop * 100)%"
                        self.tempMax = "\(decodedResponse.daily[0].temp.max)°C"
                        self.icon = decodedResponse.daily[0].weather[0].icon
                        self.descriptionText = decodedResponse.daily[0].weather.first?.description ?? ""
                        self.tempMin = "\(decodedResponse.daily[0].temp.min)°C"
                        self.tempnight = "\(decodedResponse.daily[0].temp.night)°C"
                        self.tempDay = "\(decodedResponse.daily[0].temp.day)°C"
                        self.uvi = "\(decodedResponse.daily[0].uvi)"
                        self.humidity = "\(decodedResponse.daily[0].humidity)%"
                        self.pressure = "\(decodedResponse.daily[0].pressure)hpa"
                    }
                } else {
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
                }
            }.resume()
        }

    
    
    func hunabasi() {
        let applicationKey = KeyManager().getValue(key: "WeatherKey") as! String
            guard let url = URL(string: "https://api.openweathermap.org/data/3.0/onecall?lat=35.6072&lon=140.1062&exclude=current,minutely,hourly,alerts&appid=\(applicationKey)&lang=ja&units=metric") else {
                return
            }
           
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                if let data = data {
     
                    let decoder = JSONDecoder()
                    guard let decodedResponse = try? decoder.decode(Welcome.self, from: data) else {
                        print("Json decode エラー")
                        return
                    }
                  
                    DispatchQueue.main.async {
                        self.pop = "\(decodedResponse.daily[0].pop * 100)%"
                        self.tempMax = "\(decodedResponse.daily[0].temp.max)°C"
                        self.icon = decodedResponse.daily[0].weather[0].icon
                        self.descriptionText = decodedResponse.daily[0].weather.first?.description ?? ""
                        self.tempMin = "\(decodedResponse.daily[0].temp.min)°C"
                        self.tempnight = "\(decodedResponse.daily[0].temp.night)°C"
                        self.tempDay = "\(decodedResponse.daily[0].temp.day)°C"
                        self.uvi = "\(decodedResponse.daily[0].uvi)"
                        self.humidity = "\(decodedResponse.daily[0].humidity)%"
                        self.pressure = "\(decodedResponse.daily[0].pressure)hpa"
                    }
                } else {
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
                }
            }.resume()
        }
}


   
