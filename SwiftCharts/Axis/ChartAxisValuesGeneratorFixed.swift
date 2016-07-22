//
//  ChartAxisValuesGeneratorFixed.swift
//  SwiftCharts
//
//  Created by ischuetz on 27/06/16.
//  Copyright © 2016 ivanschuetz. All rights reserved.
//

import Foundation

/// Generates a fixed axis values array
public class ChartAxisValuesGeneratorFixed: ChartAxisValuesGenerator {
    
    var values: [Double]
    
    public init(values: [Double]) {
        self.values = values
    }

    public func axisLayerInitialized(layer: ChartAxisLayer) {}
    
    public func generate(axis: ChartAxis) -> [Double] {
        return values.filter{$0 >= axis.firstVisible && $0 <= axis.lastVisible}
    }
}