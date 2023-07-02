//
//  Workout.swift
//  ChartProject
//
//  Created by Lama Albadri on 02/07/2023.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()
    var day: String
    var minutes: Double
}


extension Workout {
    static let workouts: [Workout] = [
        .init(day: "Mon", minutes: 20),
        .init(day: "Tue", minutes: 45),
        .init(day: "Wed", minutes: 15),
        .init(day: "Thu", minutes: 35),
        .init(day: "Fri", minutes: 75),
        .init(day: "Sat", minutes: 5),
        .init(day: "Sun", minutes: 10)
    ]
    
    
    static let walkWorkouts: [Workout] = [
        .init(day: "Mon", minutes: 23),
        .init(day: "Tue", minutes: 35),
        .init(day: "Wed", minutes: 55),
        .init(day: "Thu", minutes: 40),
        .init(day: "Fri", minutes: 25),
        .init(day: "Sat", minutes: 18),
        .init(day: "Sun", minutes: 23)
    ]
    
    static let runWorkouts: [Workout] = [
        .init(day: "Mon", minutes: 10),
        .init(day: "Tue", minutes: 3),
        .init(day: "Wed", minutes: 5),
        .init(day: "Thu", minutes: 16),
        .init(day: "Fri", minutes: 28),
        .init(day: "Sat", minutes: 22),
        .init(day: "Sun", minutes: 9)
    ]
}
