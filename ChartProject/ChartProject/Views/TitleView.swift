//
//  TitleView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI

struct TitleView: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .foregroundColor(.white)
            .bold()
            .shadow(radius: 5)
            .padding(.bottom, 10)
        
    }
}
