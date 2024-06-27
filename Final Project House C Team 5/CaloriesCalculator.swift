//
//  CaloriesCalculator.swift
//  Final Project House C Team 5
//
//  Created by Zhifu Xie on 6/26/24.
//

import SwiftUI

struct CaloriesCalculator: View {
    @State private var carbs = ""
    @State private var fat = ""
    @State private var protein = ""
    @State private var totalCal = ""
    @State private var Message = ""
    @State private var yourCCal: Double? = nil
    @State private var yourFCal: Double? = nil
    @State private var yourPCal: Double? = nil
    @State private var idealCCal1: Double? = nil
    @State private var idealCCal2: Double? = nil
    @State private var idealFCal: Double? = nil
    @State private var idealPCal1: Double? = nil
    @State private var idealPCal2: Double? = nil
    @State private var errorMessage: String? = nil
    
    var body: some View {
        NavigationStack {
            VStack{
                ScrollView {
                    NavigationLink(destination: Home()) {
                        Image("home")
                            .resizable()
                            .frame(width: 85.0, height: 90.0)
                    }
                    Text("Calories Calculator").font(.largeTitle).fontWeight(.bold).foregroundColor(.color4).padding(.bottom, 15)
                    
                    Text("Enter your carbs intake (in grams)").font(.title2).foregroundColor(.color4).padding(.top, 10).padding(.bottom, 10)
                    
                    TextField("", text: $carbs).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    Text("Enter your fat intake (in grams)").font(.title2).foregroundColor(.color4).padding(.top, 10).padding(.bottom, 10)
                    
                    TextField("", text: $fat).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    Text("Enter your protein intake (in grams)").font(.title2).foregroundColor(.color4).padding(.top, 10).padding(.bottom, 10)
                    
                    TextField("", text: $protein).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    Text("Enter your total calorie intake").font(.title2).foregroundColor(.color4).padding(.top, 10).padding(.bottom, 10)
                    
                    TextField("", text: $totalCal).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    Button(action: calculateCal) {
                        Text("Calculate Calories")
                            .font(.title2)
                            .padding()
                            .background(Color.color2)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    if let yourCCal = yourCCal {
                        Text("Your total calories from carbs is \(yourCCal, specifier: "%.2f")")
                            .font(.title2)
                            .padding(10)
                    }
                    if let yourFCal = yourFCal {
                        Text("Your total calories from fats is \(yourFCal, specifier: "%.2f")")
                            .font(.title2)
                            .padding(10)
                    }
                    if let yourPCal = yourPCal {
                        Text("Your total calories from protein is \(yourPCal, specifier: "%.2f")")
                            .font(.title2)
                            .padding(10)
                    }
                    if let idealCCal1 = idealCCal1, let idealCCal2 = idealCCal2 {
                        Text("Based on your total calorie intake, a healthy amount of calories from carbs is about \(idealCCal1, specifier: "%.2f") to \(idealCCal2, specifier: "%.2f")")
                            .font(.title2)
                            .padding(10)
                    }
                    if let idealFCal {
                        Text("Based on your total calorie intake, a healthy amount of calories from fats is about \(idealFCal, specifier: "%.2f")")
                            .font(.title2)
                            .padding(10)
                    }
                    if let idealPCal1 = idealPCal1, let idealPCal2 = idealPCal2 {
                        Text("Based on your total calorie intake, a healthy amount of calories from protein is about \(idealPCal1, specifier: "%.2f") to \(idealPCal2, specifier: "%.2f")")
                            .font(.title2)
                            .padding(10)
                    }
                    if let errorMessage = errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .padding(10)
                    }
                }
                }
            }
            
        }
    func calculateCal() {
        guard let carbG = Double(carbs), let fatG = Double(fat), let proteinG = Double(protein), let calTotal = Double(totalCal), carbG >= 0 && fatG >= 0 && proteinG >= 0 && calTotal >= 0 else {
            errorMessage = "Please enter valid values for your macronutrients intake."
            yourCCal = nil
            return
        }
        let carbCal = carbG * 4
        let fatCal = fatG * 9
        let proteinCal = proteinG * 4
        let iCarbCal1 = calTotal * 0.5
        let iCarbCal2 = calTotal * 0.65
        let iFatCal = calTotal * 0.3
        let iProteinCal1 = calTotal * 0.1
        let iProteinCal2 = calTotal * 0.15
        errorMessage = nil
        yourCCal = carbCal
        yourFCal = fatCal
        yourPCal = proteinCal
        idealCCal1 = iCarbCal1
        idealCCal2 = iCarbCal2
        idealFCal = iFatCal
        idealPCal1 = iProteinCal1
        idealPCal2 = iProteinCal2
    }
}
    
    #Preview {
        CaloriesCalculator()
}

