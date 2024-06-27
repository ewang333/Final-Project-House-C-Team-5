//
//  SignUp.swift
//  Final Project House C Team 5
//
//  Created by Eileen Wang on 6/25/24.
//

import SwiftUI

struct SignUp: View {
    @State private var name = ""
    @State private var dOB = ""

    var body: some View {
        NavigationStack {
            ZStack{
                VStack {
                    Text("SMART").font(.largeTitle).fontWeight(.bold).foregroundColor(.color3)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    Text("Get Started Today").font(.title3).foregroundColor(.color4).padding(.bottom, 100)
                    
                    Text("NAME").font(.title2).foregroundColor(.color4).padding(.bottom, 10)
                    
                    TextField("John Doe", text: $name).padding(.vertical, 15).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 35)
                        .padding(.horizontal, 20)
                    
                    Text("DATE OF BIRTH").font(.title2).foregroundColor(.color4).padding(.bottom, 10)
                    
                    TextField("01/01/2001", text: $dOB).padding(.vertical, 15).multilineTextAlignment(.center)
                        .font(.title3)
                        .border(Color.black, width: 2)
                        .padding(.bottom, 35)
                        .padding(.horizontal, 20)
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: Home()) {
                        
                        Text("Continue")
                            .padding(.vertical, 20)
                            .padding(.horizontal, 120)
                            .background(Color.color3)
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                        
                    }
                }
             
            }
        }
    }
}

#Preview {
    SignUp()
}
