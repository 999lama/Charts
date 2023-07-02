//
//  ChartView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI

struct ChartView: View {
    let chart: Chart
    var body: some View {
        VStack {
            Text(chart.name)
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(chart: Chart.data.first!)
    }
}
