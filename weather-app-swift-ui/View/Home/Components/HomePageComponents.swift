//
//  HomePageComponents.swift
//  weather-app-swift-ui
//
//  Created by Adil Elhaci on 8.10.2023.
//

import SwiftUI


struct DayWeatherItemView:View{
    
    var dayName:String
    var imageName:String
    var temperature:String
    var body:some View{
        VStack(spacing:12){
            Text(dayName).font(.system(size: 16,weight: .medium,design: .default))               .foregroundColor(.white)

            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                
                .frame(width: 32,height: 32)
            Text(temperature).font(.system(size: 22,weight: .medium,design: .default))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundColor:View{
    var isNight:Bool
    
    var body:some View{
        LinearGradient(colors: [ isNight ? Color.black:Color.blue,isNight ? Color.gray:Color.blue.opacity(0.7)], startPoint: .bottom, endPoint:.top)
            .ignoresSafeArea()
    }
}


struct PageTitle:View{
    
    var title:String
    var body:some View{
        
        Text(title).font(.system(size: 28,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding(.top,16)
    }
}

struct TodayWeatherInfo:View{
    var imageName:String
    var temperature:String
    var body:some View{
        VStack{
            
            Image(systemName:imageName )
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 160,height: 160)
            Text(temperature).font(.system(size: 50,weight: .medium,design: .default))
                .foregroundColor(.white)
        }
        
    }
}


struct ChangeDayButton:View{

    var title:String
    var backgoundColor:Color
    var textColor:Color
    var body:some View{
        
        
        Text(title)
               .frame(width: 280,height: 50)
               
               .background(backgoundColor)
               .cornerRadius(8)
               .foregroundColor(textColor)
               .font(.system(size: 16,weight: .bold))
    }
}
