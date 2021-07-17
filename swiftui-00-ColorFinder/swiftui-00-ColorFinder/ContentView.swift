//
//  ContentView.swift
//  swiftui-00-ColorFinder
//
//  Created by Sonny on 2021/7/15.
//

import SwiftUI

struct ContentView: View {
    @State var redValue: Double
    @State var greenValue: Double
    @State var blueValue: Double
    
    
    var body: some View {
        ZStack{
            Color(red: redValue, green: greenValue, blue: blueValue).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                HStack{
                    MyText(color: "R", value: redValue)
                    
                    Spacer()
                    
                    MyText(color: "G", value: greenValue)
                    
                    Spacer()
                    
                    MyText(color: "B", value: blueValue)
                    
                }.offset(x: 0, y: 50)
                
                Spacer()
                
    //            Slider(value: Binding.constant(1))
    //            Slider(value: Binding.constant(1))
    //            Slider(value: Binding.constant(1))
                Slider(value: $redValue)
                Slider(value: $greenValue)
                Slider(value: $blueValue)

            }.frame(width: UIScreen.main.bounds.size.width * 0.7)
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(redValue: 1.0, greenValue: 1.0, blueValue: 1.0)
    }
}

struct MyText: View {
    var color: String
    var value: Double
    
    var body: some View {
        HStack {
            Text(color + ": \(Int(value*255.0))")
                .font(.title)
                .fontWeight(.light)
            Spacer()
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).fixedSize()
    }
}
