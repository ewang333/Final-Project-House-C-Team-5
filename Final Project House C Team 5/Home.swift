//
//  Home.swift
//  Final Project House C Team 5
//
//  Created by Eileen Wang on 6/26/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    Text("Home Page")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.color3)
                    HStack{
                        Text("Health Journal")
                            .fontWeight(.semibold)
                            .padding(5)
                            .foregroundColor(.color4)
                        //Spacer()
                        Text("Goal-Setting")
                            .fontWeight(.semibold)
                            .foregroundColor(.color4)
                            .padding()
                    }
                        HStack{
                            NavigationLink(destination: HealthJournalView()) {
                                Image("HealthJournal")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(15)
                                    .border(Color.black, width: 5)
                                    
                                
                                NavigationLink(destination: GoalSettingView()) {
                                    Image("GoalSetting")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .cornerRadius(15)
                                        .border(Color.black, width: 5)
                                        
                                }
                            }
                        }
                        HStack{
                            NavigationLink(destination: CalculatorView()) {
                                Image("Calculator")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(15)
                                    .border(Color.black, width: 5)
                                    
                                NavigationLink(destination: ResourcesView()) {
                                    Image("Resources")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .cornerRadius(15)
                                        .border(Color.black, width: 5)
                                       
                                }
                            }
                        }
                    HStack{
                        Text("BMI Calculator")
                            .fontWeight(.semibold)
                            .foregroundColor(.color4)
                            .padding(5)
                        Text("Resources")
                            .fontWeight(.semibold)
                            .foregroundColor(.color4)
                            .padding()
                    }
                    }
                }
            }
        }
    }

#Preview {
    ContentView()
}

