//
//  ChartView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI

struct ChartView: View {
    let chart: ChartModel
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [.cyan, .purple, .indigo], center: .center, startRadius: 0, endRadius: 250).ignoresSafeArea()
            switch chart.chartType {
            case .lineChart:
                LineMarkView(chart: chart)
            default:
                Text("no chart yet").foregroundColor(.white)
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(chart: ChartModel.data.first!)
    }
}
