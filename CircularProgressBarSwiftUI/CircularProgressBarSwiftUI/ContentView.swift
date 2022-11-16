//
//  ContentView.swift
//  CircularProgressBarSwiftUI
//
//  Created by Bertuğ Horoz on 16.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    
    var body: some View {
        
        ZStack{
            Circular(lineWidth: 40, backgroundColor: .blue.opacity(0.3), foregroundColor: .blue, percentage: firstCirclePercentage)
                .frame(width: 400, height: 400).onTapGesture {
                    if self.firstCirclePercentage == 0 {
                        firstCirclePercentage = 50
                    }else{
                        self.firstCirclePercentage = 0
                    }
                }
            Circular(lineWidth: 40, backgroundColor: .red.opacity(0.3), foregroundColor: .red, percentage: secondCirclePercentage)
                .frame(width: 300, height: 300).onTapGesture {
                    if self.secondCirclePercentage == 0 {
                        secondCirclePercentage = 75
                    }else{
                        self.secondCirclePercentage = 0
                    }
                }
            Circular(lineWidth: 40, backgroundColor: .green.opacity(0.3), foregroundColor: .green, percentage: thirdCirclePercentage)
                .frame(width: 200, height: 200).onTapGesture {
                    if self.thirdCirclePercentage == 0 {
                        thirdCirclePercentage = 180
                    }else{
                        self.thirdCirclePercentage = 0
                    }
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
