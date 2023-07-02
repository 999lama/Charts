//
//  ChartDetailsView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI

struct ChartDetailsView: View {
    let chart: ChartModel
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [.cyan, .purple, .indigo], center: .center, startRadius: 0, endRadius: 250).ignoresSafeArea()
            switch chart.chartType {
            case .lineChart:
                LineChartView(chart: chart)
            default:
                Text("no chart yet").foregroundColor(.white)
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartDetailsView(chart: ChartModel.data.first!)
    }
}
