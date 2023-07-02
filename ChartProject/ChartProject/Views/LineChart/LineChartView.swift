//
//  LineChartView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI
import Charts

struct TitleView: View {
    let title: String
    var body: some View {
        Text(title).foregroundColor(.white).font(.system(size: 15).bold())
            .padding(.horizontal, 5)
    }
}
struct LineChartView: View {
    
    //MARK: - properties
    let chart: ChartModel
    private let walkWorkout = Workout.walkWorkouts
    private let lineWidthRange: Range<CGFloat> = 1.0..<20.0
    
    //MARK: -  @State properties
    @State private var selectedColor = Constant.charBarColors.first!
    @State private var selectedInterpolationMethod = Constant.chartInterpolationMethod.first!
    @State private var selectedLineCap =  Constant.lineCapTypes.first!
    @State private var selectedLineJoin =  Constant.lineJoinTypes.first!
    @State private var selectedAnnotationPosition = Constant.annotationPosition.first!
    @State private var selectedSymbolShape = Constant.symbolShape.first!
    @State private var selectedLineWidth: Int = 5
    
    var body: some View {
        ZStack {
            VStack {
                Text(chart.name)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .shadow(radius: 5)
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading, spacing: 15) {
                    TitleView(title: "Choose bar color")
                    Picker("Choose bar color", selection: $selectedColor) {
                        ForEach(Constant.charBarColors, id: \.self) { color in
                            Text(color.name)
                        }
                    }.pickerStyle(.segmented)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        TitleView(title: "Pick the interpolation Method")
                        Picker("Choose interpolation Method", selection: $selectedInterpolationMethod) {
                            ForEach(Constant.chartInterpolationMethod, id: \.self) { interpolationMethod in
                                Text(interpolationMethod.name)
                            }
                        }.background(.white.opacity(0.5)).tint(.black).pickerStyle(.menu)
                    }.padding(.horizontal, 5)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        TitleView(title: "Pick the line cap type")
                        Picker("Choose line cap type", selection: $selectedLineCap) {
                            ForEach(Constant.lineCapTypes, id: \.self) { lineCap  in
                                Text(lineCap.name)
                            }
                        }.background(.white.opacity(0.5)).tint(.black).pickerStyle(.menu)
                    }.padding(.horizontal, 5)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        TitleView(title: "Pick the line join type")
                        Picker("Choose line cap join type", selection: $selectedLineJoin) {
                            ForEach(Constant.lineJoinTypes, id: \.self) { lineCap  in
                                Text(lineCap.name)
                            }
                        }.background(.white.opacity(0.5)).tint(.black).pickerStyle(.menu)
                    }.padding(.horizontal, 5)
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        TitleView(title: "Pick the line width")
                        Picker("Choose line width", selection: $selectedLineWidth) {
                            ForEach(1...19, id: \.self) { width  in
                                Text("\(width)")
                            }
                        }.background(.white.opacity(0.5)).tint(.black).pickerStyle(.menu)
                    }.padding(.horizontal, 5)
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        TitleView(title: "Choose the ⭐️ Annotation Position")
                        Picker("Choose Annotation Position", selection: $selectedAnnotationPosition) {
                            ForEach(Constant.annotationPosition, id: \.self) { position  in
                                Text(position.name)
                            }
                        }.background(.white.opacity(0.5)).tint(.black).pickerStyle(.menu)
                    }.padding(.horizontal, 5)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        TitleView(title: "Choose the symbol shape")
                        Picker("Choose the symbol", selection: $selectedSymbolShape) {
                            ForEach(Constant.symbolShape, id: \.self) { symbol  in
                                Text(symbol.name)
                            }
                        }.background(.white.opacity(0.5)).tint(.black).pickerStyle(.menu)
                    }.padding(.horizontal, 5)
                }
                
                
                Chart {
                    ForEach(walkWorkout) { workout in
                        LineMark(x: .value("Day", workout.day),
                                 y: .value("Work in minutes", workout.minutes))
                        .foregroundStyle(selectedColor.color)
                        .lineStyle(
                            .init(lineWidth: CGFloat(selectedLineWidth),
                                  lineCap: selectedLineCap.type ,
                                  lineJoin: selectedLineJoin.type))
                        .annotation(position: selectedAnnotationPosition.type) {
                            Text("⭐️")
                        }
                        .symbol(selectedSymbolShape.type)
                    }
                    .interpolationMethod(selectedInterpolationMethod.type)
                }.frame(height: 200)
                
                    .environment(\.colorScheme, .dark)
            }
            
        }
    }
    
    
}

struct LineMark_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView(chart: ChartModel.data.first(where: {$0.chartType == .lineChart})!)
    }
}
