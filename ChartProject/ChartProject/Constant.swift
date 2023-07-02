//
//  Constant.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import Foundation
import SwiftUI
import Charts

struct Constant {
    
    struct ChartInterpolationMethod: Hashable {
        
        let name: String
        let type: InterpolationMethod
        
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(name)
        }
        
        static func == (lhs: Constant.ChartInterpolationMethod, rhs: Constant.ChartInterpolationMethod) -> Bool {
            return lhs.name == rhs.name
        }
    }
    
    struct ChartBarStyle: Hashable {
        let name: String
        let color: Color
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(name)
            hasher.combine(color)
        }
    }
    
    struct ChartLineCap: Hashable {
        
        let name: String
        let type: CGLineCap
        
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(name)
        }
        
        static func == (lhs: Constant.ChartLineCap, rhs: Constant.ChartLineCap) -> Bool {
            return lhs.name == rhs.name
        }
    }
    
    struct ChartLineJoin: Hashable {
        
        let name: String
        let type: CGLineJoin
        
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(name)
        }
        
        static func == (lhs: Constant.ChartLineJoin, rhs: Constant.ChartLineJoin) -> Bool {
            return lhs.name == rhs.name
        }
    }
    
    
    struct ChartAnnotationPosition: Hashable {
        
        let name: String
        let type: AnnotationPosition
        
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(name)
        }
        
        static func == (lhs: Constant.ChartAnnotationPosition, rhs: Constant.ChartAnnotationPosition) -> Bool {
            return lhs.name == rhs.name
        }
    }
    
    struct ChartSymbolShape: Hashable {
        
        let name: String
        let type: BasicChartSymbolShape
        
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(name)
        }
        
        static func == (lhs: Constant.ChartSymbolShape, rhs: Constant.ChartSymbolShape) -> Bool {
            return lhs.name == rhs.name
        }
    }

    
}

extension Constant {
    
    static let charBarColors: [ChartBarStyle] = [
        .init(name: "white", color: .white),
        .init(name: "orange", color: .orange),
        .init(name: "pink", color: .pink),
        .init(name: "green", color: .green)]
    
    static let chartInterpolationMethod: [ChartInterpolationMethod] = [
        .init(name: "cardinal", type: .cardinal),
        .init(name: "catmullRom", type: .catmullRom),
        .init(name: "linear", type: .linear),
        .init(name: "monotone", type: .monotone),
        .init(name: "stepCenter", type: .stepCenter),
        .init(name: "stepEnd", type: .stepEnd),
        .init(name: "stepStart", type: .stepStart)
    ]
    
    static let symbolShape: [ChartSymbolShape] = [
        .init(name: "asterisk", type: BasicChartSymbolShape.asterisk),
        .init(name: "circle", type: BasicChartSymbolShape.circle),
        .init(name: "cross", type: BasicChartSymbolShape.cross),
        .init(name: "diamond", type: BasicChartSymbolShape.diamond),
        .init(name: "pentagon", type: BasicChartSymbolShape.pentagon),
        .init(name: "plus", type: BasicChartSymbolShape.plus),
        .init(name: "square", type: BasicChartSymbolShape.square),
        .init(name: "triangle", type: BasicChartSymbolShape.triangle)
    ]
    
    static let annotationPosition: [ChartAnnotationPosition] = [
        .init(name: "top", type: .top),
        .init(name: "automatic", type: .automatic),
        .init(name: "bottom", type: .bottom),
        .init(name: "bottomLeading", type: .bottomLeading),
        .init(name: "bottomTrailing", type: .bottomTrailing),
        .init(name: "topLeading", type: .topLeading),
        .init(name: "topTrailing", type: .topTrailing),
        .init(name: "overlay", type: .overlay),
        .init(name: "trailing", type: .trailing),
        .init(name: "leading", type: .leading)
    ]
    
    static let lineCapTypes: [ChartLineCap] = [
        .init(name: "butt", type: CGLineCap.butt),
        .init(name: "round", type: CGLineCap.round),
        .init(name: "square", type: CGLineCap.square)
    ]
    
    static let lineJoinTypes: [ChartLineJoin] = [
        .init(name: "miter", type: CGLineJoin.miter),
        .init(name: "round", type: CGLineJoin.round),
        .init(name: "bevel", type: CGLineJoin.bevel)
        
    ]
}
