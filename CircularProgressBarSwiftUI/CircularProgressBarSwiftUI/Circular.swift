//
//  Circular.swift
//  CircularProgressBarSwiftUI
//
//  Created by Bertuğ Horoz on 16.11.2022.
//

import SwiftUI

struct Circular: View {
    
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader{geometry in
            
            ZStack{
                
                CircularShape().stroke(style: StrokeStyle(lineWidth: lineWidth)).fill(backgroundColor)
                
                CircularShape(percent: percentage).stroke(style: StrokeStyle(lineWidth: lineWidth)).fill(foregroundColor)
                
            }.animation(.easeIn(duration: 1.0), value: percentage).padding(lineWidth)
            
        }
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 20, backgroundColor: .red, foregroundColor: .gray, percentage: 50)
    }
}
