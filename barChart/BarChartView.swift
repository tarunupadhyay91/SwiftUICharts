//
//  BarChartView.swift
//  barChart
//
//  Created by Tarun Upadhyay on 28/07/25.
//

import SwiftUI
import Charts
struct BarChartView: View {
    let viewModelObj = ViewModel()
    var body: some View {
        
        ScrollView() {
            Text("Bar Chart")
                .fontWeight(.bold)
                .font(.title)
                .underline()
            Chart(viewModelObj.data) { item in
                BarMark(x: .value("", item.months), y: .value("", item.sales))
                    .foregroundStyle(.yellow)
                    .annotation(position: .top) {
                        Text("\(item.sales)")
                            .font(.caption)
                    }
                
                
            }
            .frame(height:300)
            .padding()
            
            Text("Line Chart")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                .underline()
            
            Chart(viewModelObj.data) { item in
                LineMark(x: .value("", item.months), y: .value("", item.sales))
                    .foregroundStyle(.red)
                
                PointMark(
                       x: .value("Month", item.months),
                       y: .value("Revenue", item.sales)
                   )
                .foregroundStyle(.red)
                   .annotation(position: .top) {
                       Text("\(Int(item.sales))")
                           .font(.caption2)
                           .foregroundColor(.primary)
                   }
                
            }
            .frame(height:300)
            .padding()
            
            Text("Area Chart")
                .font(.title)
                .fontWeight(.bold)
                .underline()
                .padding()
            
            Chart(viewModelObj.data) { item in
                AreaMark(
                    x: .value("", item.months),
                    y: .value("", item.sales)
                )
                .foregroundStyle(.blue)
                
                
                PointMark(
                       x: .value("Month", item.months),
                       y: .value("Revenue", item.sales)
                   )
                   .annotation(position: .top) {
                       Text("\(Int(item.sales))")
                           .font(.caption2)
                           .foregroundColor(.primary)
                   }
               
            }
            .frame(height:300)
            .padding()
        }
    }
}

#Preview {
    BarChartView()
}
