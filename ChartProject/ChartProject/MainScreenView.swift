//
//  ContentView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI

@available (iOS 16.0, *)
struct MainScreenView: View {
    
    @State private var data: [ChartModel] = ChartModel.data
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
    }
    
    var body: some View {
        NavigationStack {
            
            HStack {
                List(data, id: \.self) { item in
                    
                    NavigationLink(destination: ChartView(chart: item)) {
                        ChartRow(chart: item)
                    }
                    
                    .listRowBackground(Capsule().fill(Color.white.opacity(0.5))
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10 )
                    )
                    .listRowInsets(.init(top: 10, leading: 20, bottom: 10, trailing: 30))
                    .listRowSeparator(.hidden)
                    
                }
                .environment(\.defaultMinListRowHeight, 40)
                .environment(\.defaultMinListHeaderHeight, 20)
                .scrollContentBackground(.hidden)
                
            }.padding(.top, 40)
            
                .background {
                    RadialGradient(colors: [.cyan, .purple, .indigo], center: .center, startRadius: 0, endRadius: 250).ignoresSafeArea()
                    
                        .navigationTitle("Swift Charts")
                }
        }.accentColor(.white)
    }
}




struct ChartRow: View {
    let chart: ChartModel
    
    var body: some View {
        HStack {
            Text(chart.imageIcon)
            
            //            chart.icon
            //                .resizable()
            //                .frame(width: 40, height: 40)
            //                .padding(.horizontal, 5)
            
            Text(chart.name)
                .bold()
            
        }
        .padding(.horizontal, 5)
        .padding(.vertical, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
