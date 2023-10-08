//
//  ContentView.swift
//  weather-app-swift-ui
//
//  Created by Adil Elhaci on 8.10.2023.
//

import SwiftUI

struct MainScreen: View {
    
    @State private var isNight = false
    var body: some View {
        ZStack {
        
            BackgroundColor(isNight: isNight)
            VStack{
                
                PageTitle(title:"Cupertino, CA")
                TodayWeatherInfo(
                imageName:"cloud.sun.fill",
               temperature: "76°")
                Spacer()
                HStack(spacing:24){
                    DayWeatherItemView(dayName:"TUE", imageName: "cloud.sun.fill", temperature:"70°")
                    DayWeatherItemView(dayName:"WEN", imageName: "sun.max.fill", temperature:"76°")
                    DayWeatherItemView(dayName:"THU", imageName: "cloud.rain.fill", temperature:"66°")
                    DayWeatherItemView(dayName:"FRI", imageName: "wind.snow", temperature:"50°")
                    DayWeatherItemView(dayName:"FRI", imageName: "snowflake", temperature:"50°")
                    
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                    
                }label: {
                    ChangeDayButton(title: "Change Day Time", backgoundColor: Color.white, textColor: .blue)
                }
                Spacer()
                
                

            }
        }
       
    }
}

#Preview {
    MainScreen()
}
