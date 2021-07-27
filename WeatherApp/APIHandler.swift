//
//  APIHandler.swift
//  WeatherApp
//
//  Created by Akshay Jangir on 22/07/21.
//  Copyright © 2021 Akshay Jangir. All rights reserved.
//

import Foundation
class APIHandler {
    static let shared = APIHandler()
    func search_weather(with name:String) -> [StructureInfo] { //Surat
        if let url = URL(string: "https://api.weatherapi.com/v1/current.json?key=a4fca5e52d29494584f145216212207&q=\(name)&aqi=no"){
            do { let data = try Data(contentsOf: url)
             
                let decoder = JSONDecoder()
                do{ let jsonWeather = try decoder.decode(StructureInfo.self, from: data)
                    print(jsonWeather.current.condition.icon)
                    return  [jsonWeather]
                }catch {
                    print(error)
                }
                
            } catch {
                print("Error : Place name is incorrect !")
            }
        }
        return [StructureInfo]()
    }
}
