//
//  BarChart.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI
import Charts

struct BarChart: View {
    let chart: ChartModel
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                TitleView(title: chart.name)
                
                
            }
        }
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart(chart: ChartModel.data.first!)
    }
}
