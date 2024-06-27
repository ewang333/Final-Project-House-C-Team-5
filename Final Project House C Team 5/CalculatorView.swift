//
//  CalculatorView.swift
//  Final Project House C Team 5
//
//  Created by Michelle Xie on 6/26/24.
//

import SwiftUI

struct CalculatorView: View {
    @State private var weightInPounds: String = ""
    @State private var heightInInches: String = ""
    @State private var bmi: Double? = nil
    @State private var errorMessage: String? = nil
    var body: some View {
            NavigationStack {
                VStack {
                    NavigationLink(destination: Home()) {
                        Image("home")
                            .resizable()
                            .frame(width: 85.0, height: 90.0)
                    }
                    Text("BMI Calculator")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.color3)
                        .padding()
                    TextField("Enter weight (lbs)", text: $weightInPounds).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                        .keyboardType(.decimalPad)
                    
                    TextField("Enter height (inches)", text: $heightInInches).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                        .keyboardType(.decimalPad)
                        
                    Button(action: calculateBMI) {
                        Text("Calculate BMI")
                            .font(.title2)
                            .padding()
                            .background(Color.color2)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding()
                    if let bmi = bmi {
                        Text("Your BMI is \(bmi, specifier: "%.2f")")
                            .font(.title2)
                            .padding()
                    }
                    if let errorMessage = errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .padding()
                    }
                }
                Image("BMI graph")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                NavigationLink(destination: CaloriesCalculator()) {
                    Text("Click to go to the calories calculator")
                        .fontWeight(.semibold)
                        .foregroundColor(.color3)
                        .padding()
                }
            }
        }
        func calculateBMI() {
            guard let weight = Double(weightInPounds), let height = Double(heightInInches), height > 0 else {
                errorMessage = "Please enter valid values for weight and height."
                bmi = nil
                return
            }
            let heightInMeters = height * 0.0254
            let weightInKg = weight * 0.453592
            errorMessage = nil
            let bmiValue = weightInKg / (heightInMeters * heightInMeters)
            bmi = bmiValue
        }
    }
    
    
    



#Preview {
    CalculatorView()
}
