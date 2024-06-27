//
//  HealthJournalView.swift
//  Final Project House C Team 5
//
//  Created by Michelle Xie on 6/26/24.
//

import SwiftUI

struct HealthJournalView: View {
    @State private var AvgBPM = ""
    @State private var TimeExercised = ""
    @State private var TypeExercise = ""
    @State private var PersonalReflection = ""
    @State private var Message = ""
    var body: some View {
        NavigationStack {
            VStack{
                ScrollView {
                    NavigationLink(destination: Home()) {
                        Image("home")
                            .resizable()
                            .frame(width: 85.0, height: 90.0)
                    }
                    Text("Health Journal").font(.largeTitle).fontWeight(.bold).foregroundColor(.color4).padding(.bottom, 15)
                    
                    Text(Date.now, format: .dateTime.day().month().year()).padding()
                        .background(Color.color2)
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("Average BPM").font(.title2).foregroundColor(.color4).padding(.top, 10).padding(.bottom, 10)
                    
                    TextField("Beats per Minute", text: $AvgBPM).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    Text("Time Exercised").font(.title2).foregroundColor(.color4).padding(.bottom, 10)
                    
                    TextField("In hours", text: $TimeExercised).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    Text("Type of Exercise").font(.title2).foregroundColor(.color4).padding(.bottom, 10)
                    
                    TextField("Swimming, tennis, gymnastics, yoga, running, etc", text: $TypeExercise).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    Text("Personal Reflection").font(.title2).foregroundColor(.color4).padding(.bottom, 10)
                    
                    TextField("This is your own personal space", text: $PersonalReflection, axis: Axis.vertical).padding(.vertical, 15).padding(.horizontal, 10).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    
                    Button("Submit"){
                        Message = "Thank you for journaling! Today, your average BPM is \(AvgBPM), and you exercised for \(TimeExercised) hours! You're doing great! Keep up the good work! "
                    }
                    .font(.title2).padding(.vertical, 10).padding(.horizontal, 20).background(Color.color3).foregroundColor(.white)
                    
                    .padding(.bottom, 10)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                }
            }
        }
    }
}

#Preview {
    HealthJournalView()
}
