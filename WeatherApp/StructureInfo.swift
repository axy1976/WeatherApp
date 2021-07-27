//
//  StructureInfo.swift
//  WeatherApp
//
//  Created by Akshay Jangir on 22/07/21.
//  Copyright © 2021 Akshay Jangir. All rights reserved.
//

import Foundation
class StructureInfo:Decodable{
    var location: Weather
    var current: Current
}
class Weather:Decodable
{
    var name = ""
    var region = ""
    var country = ""
    var tz_id = ""
    var localtime = ""
}

class Current:Decodable{
    var last_updated = ""
    var is_day:Int
    var temp_c:Float
    var temp_f :Float
    var condition: Condition
    var wind_mph:Float
    var wind_kph:Float
    var pressure_mb:Int
    var pressure_in:Float
    var humidity:Int
    var cloud:Int
    var uv:Float
}

class Condition:Decodable
{
    var text = ""
    var icon = ""
    var code:Int
}
