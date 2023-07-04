//
//  BarChartView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI
import Charts

struct BarChartView: View {
    let markColors: [Color] = [.pink, .purple, .cyan, . indigo, .orange, .red]
    let chart: ChartModel
    
    @State private var selectedAnnotationPosition = Constant.annotationPosition.first!
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            VStack {
                TitleView(title: chart.name)
                
                VStack(alignment: .leading, spacing: 15) {
                    SubtitleView(title: "Choose annotation  🏃🏻‍♀️ position")
                    Picker("Choose annotation position", selection: $selectedAnnotationPosition) {
                        ForEach(Constant.annotationPosition, id: \.self) { position in
                            Text(position.name)
                        }
                    }.background(.white.opacity(0.5)).tint(.black).pickerStyle(.menu)
                }.padding(.horizontal, 5)
                
                Chart(Workout.runWorkouts) { workout in
                    BarMark(x:.value("Day", workout.day),
                            y: .value("workout in minutes", workout.minutes))
                    // 1 make sure to add foreground style to the bar
                    .foregroundStyle(by: .value("Day", workout.day))
                    
                    .annotation(position: selectedAnnotationPosition.type) {
                        Text("🏃🏻‍♀️")
                    }
                } .frame(height: 150)
                
                // 2 apply chart forgoybd scake domain - this will arrange the bar color depend on the array if you remove it the color will set by default
                    .chartForegroundStyleScale(domain: Workout.runWorkouts.compactMap({ workout in
                        workout.day
                    }), range: markColors)
                
            }
        }
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView(chart: ChartModel.data.first!)
    }
}
