//
//  ViewModel.swift
//  barChart
//
//  Created by Tarun Upadhyay on 28/07/25.
//
import SwiftUI

class ViewModel:ObservableObject {
    @Published var data = [
        ModelData(months: "Jan", sales: 150),
        ModelData(months: "Feb", sales: 120),
        ModelData(months: "Mar", sales: 180),
        ModelData(months: "Apr", sales: 90),
        ModelData(months: "May", sales: 150),
        ModelData(months: "June", sales: 120),
        ModelData(months: "July", sales: 180)
    ]
}
