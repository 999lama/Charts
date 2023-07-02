//
//  Chart.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI


struct Chart: Identifiable, Hashable {
    
    var name: String
    var icon: Image
    var imageIcon: String
    let id = UUID()
    
    
    static var data: [Chart] {
        [
            .init(name: "Bar Chart", icon: Image("barChart"), imageIcon: "📊"),
            .init(name: "Line Chart", icon: Image("lineChart"), imageIcon: "📈"),
            .init(name: "Area Chart", icon: Image("areaChart"), imageIcon: "📈"),
            .init(name: "Point Chart", icon: Image("areaChart"), imageIcon: "⚪️"),
            .init(name: "Rectangle Chart", icon: Image("areaChart"), imageIcon: "▭"),
            .init(name: "Rule Chart", icon: Image("areaChart"), imageIcon: "📊")
            
        ]
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(imageIcon)
    }
    
    static func == (lhs: Chart, rhs: Chart) -> Bool {
        return lhs.name == rhs.name && lhs.imageIcon == rhs.imageIcon && lhs.icon == rhs.icon
    }
    
}


