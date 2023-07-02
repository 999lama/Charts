//
//  Chart.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI

enum ChartType: String {
    
    case barChart = "Bar Chart"
    case lineChart =  "Line Chart"
    case areaChart = "Area Chart"
    case pointChart = "Point Chart"
    case rectangleChart = "Rectangle Chart"
    case ruleChart = "Rule Chart"
    
    static func getName(type: ChartType) -> String {
        return type.rawValue
    }
}

struct ChartModel: Identifiable, Hashable {
    
    var name: String
    var icon: Image
    var imageIcon: String
    var chartType: ChartType
    let id = UUID()
    
    
    static var data: [ChartModel] {
        [
            .init(name: ChartType.getName(type: .barChart), icon: Image("barChart"), imageIcon: "📊", chartType: .barChart),
            .init(name: ChartType.getName(type: .lineChart), icon: Image("lineChart"), imageIcon: "📈", chartType: .lineChart),
            .init(name: ChartType.getName(type: .areaChart), icon: Image("areaChart"), imageIcon: "📈", chartType: .areaChart),
            .init(name: ChartType.getName(type: .pointChart), icon: Image("areaChart"), imageIcon: "⚪️", chartType: .pointChart),
            .init(name: ChartType.getName(type: .rectangleChart), icon: Image("areaChart"), imageIcon: "▭", chartType: .rectangleChart),
            .init(name: ChartType.getName(type: .ruleChart), icon: Image("areaChart"), imageIcon: "📊", chartType: .ruleChart)
            
        ]
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(imageIcon)
    }
    
    static func == (lhs: ChartModel, rhs: ChartModel) -> Bool {
        return lhs.name == rhs.name && lhs.imageIcon == rhs.imageIcon && lhs.icon == rhs.icon
    }
    
}


