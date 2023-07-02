//
//  SubtitleView.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import SwiftUI

struct SubtitleView: View {
    let title: String
    var body: some View {
        Text(title).foregroundColor(.white).font(.system(size: 15).bold())
            .padding(.horizontal, 5)
    }
}
