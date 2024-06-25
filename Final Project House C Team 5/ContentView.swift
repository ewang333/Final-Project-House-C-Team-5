//
//  ContentView.swift
//  Final Project House C Team 5
//
//  Created by Eileen Wang on 6/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("Logo").resizable().frame(width: 500).cornerRadius(5).padding(100)

                Spacer(minLength: 10)
                
                NavigationLink(destination: SignUp()) {
                    Text("Get Started").fontWeight(.bold).foregroundColor(.green).background().foregroundColor(.green)
                    }
                    
                    
                }
            }
        }
    }

#Preview {
    ContentView()
}
