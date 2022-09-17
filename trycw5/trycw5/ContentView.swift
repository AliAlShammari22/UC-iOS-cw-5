//
//  ContentView.swift
//  CW5(2)ALI
//
//  Created by Ali AlShammari on 16/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tall = ""
    @State var weight = ""
    @State var bmi = ""
    @State var stats = ""
    var body: some View {
        VStack{
            Image("ba")
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFit()
                .padding()
            Text("ادخل الطول و الوزن")
                .font(.largeTitle)
            TextField("الطول بالمتر" , text:$tall)
                .multilineTextAlignment(.center)
                .frame(width: 400, height: 50)
            TextField("الوزن بالكيلوجرام" , text:$weight)
                .multilineTextAlignment(.center)
                .frame(width: 400, height: 50)
            Text("احسب")
                .font(.largeTitle)
                .frame(width: 150, height: 50)
                .background(CustomColor.myColor)
                .clipShape(Capsule())
                .onTapGesture {
                    stats = calc(bmi:(Double(bmi) ?? 0),tall:(Double(tall) ?? 0 ),weight:(Double(weight) ?? 0 ))
                }
                .padding()
            HStack{
                Text("\(String(format:"%.2f",(Double(weight) ?? 0) / ((Double(tall) ?? 0) * (Double(tall) ?? 0))))")
                    .font(.largeTitle)
                    .frame(width: 150, height: 50)
                Text(":BMI")
                    .font(.largeTitle)
                    .frame(width: 100, height: 50)
            }
            HStack{
                Text(stats)
                    .font(.largeTitle)
                    .frame(width: 150, height: 50)
                Text("الحالة:")
                    .font(.largeTitle)
                    .frame(width: 100, height: 50)
            }
        }
    }
}
func calc(bmi: Double, tall: Double , weight: Double) -> String{
    if weight / (tall * tall) >= 26 {
        return "سمين"
    }
    else if weight / (tall * tall) >= 21 {
        return "جيد"
    }
    else if weight / (tall * tall) >= 16 {
        return "نحيف"
    }
    else if weight / (tall * tall) >= 1 {
        return "نحيف جدًا"
    }
    else{
        return "سمين"
    }
}
struct CustomColor {
    static let myColor = Color("mycolor")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
