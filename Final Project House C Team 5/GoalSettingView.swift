//
//  GoalSettingView.swift
//  Final Project House C Team 5
//
//  Created by Michelle Xie on 6/26/24.
//

import SwiftUI

struct GoalSettingView: View {
    @State private var goals = ""
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20.0) {
                NavigationLink(destination: Home()) {
                    Image("home")
                        .resizable()
                        .frame(width: 85.0, height: 90.0)
                }

                Text("S - SPECIFIC")
                    .font(.largeTitle)

                Text("M - MEASURABLE")
                    .font(.largeTitle)

                Text("A - ACHIEVABLE")
                    .font(.largeTitle)

                Text("R - RELEVANT")
                    .font(.largeTitle)

                Text("T - TIME-BASED")
                    .font(.largeTitle)

                ZStack {
                    VStack(alignment: .center, spacing: 5.0) {
                        Text("Example:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading) // Align to the left

                        Text("I will drink 8 glasses of water everyday (and I will log it) for the next 30 days. I currently drink 4 glasses, so increasing it to 8 is achievable.")
                            .multilineTextAlignment(.center)
                            .font(.title)
                    }
                    .padding()
                    .background(Color.color3)
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                }
                .padding()
                VStack {
                    Text("  ")
                    Text("YOUR GOALS")
                        .font(.largeTitle)
                        .multilineTextAlignment(.trailing)
                    TextField("Type here.", text: $goals, axis: .vertical)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                    
                }
                                }
            }
            .padding()    }
}

#Preview {
    GoalSettingView()
}
