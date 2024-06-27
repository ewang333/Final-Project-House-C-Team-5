//
//  ContentView.swift
//  resources-susan
//
//  Created by Scholar on 6/26/24.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    
                    NavigationLink(destination: Home()) {
                        Image("home")
                            .resizable()
                            .frame(width: 85.0, height: 90.0)                    }
                    Spacer()
                    
                    Text("Resources")
                        .font(.largeTitle)
                    
                    Spacer()
                        .frame(width: 7.0, height: 40.0)
                    
                    Text("Nutrition Recommendations")
                        .padding(.all, 17.0)
                        .background(Color.color2)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .light, design: .default))
                        .fontWeight(.bold)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                    
                    VStack{
                        Link(destination: URL(string: "https://www.heart.org/en/healthy-living/healthy-eating/eat-smart/nutrition-basics/aha-diet-and-lifestyle-recommendations")!) {
                            Text("American Health Association")
                            .foregroundColor(Color.black)}
                        
                        Link(destination: URL(string: "https://www.nutrition.gov")!) {
                            Text("Nutrition.gov")
                            .foregroundColor(Color.black)}
                        
                        
                        Link(destination: URL(string: "https://www.heart.org/en/healthy-living/healthy-eating/eat-smart/nutrition-basics/aha-diet-and-lifestyle-recommendations")!) {
                            Text("National Instutitues of Health")
                            .foregroundColor(Color.black)}
                        
                        Spacer()
                        
                        VStack{
                            Text("              Fad Diets              ")
                                .padding(.all, 17.0)
                                .background(Color.color2)
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .light, design: .default))
                                .fontWeight(.bold)
                                .cornerRadius(10)
                                .shadow(radius: 1)
                            VStack{
                                Link(destination: URL(string: "https://www.mayoclinichealthsystem.org/hometown-health/speaking-of-health/dont-fall-for-a-fad-diet")!) {
                                    Text("Mayo Clinic of Health")
                                    .foregroundColor(Color.black)}
                                
                                Link(destination: URL(string: "https://www.sciencedirect.com/science/article/pii/S2666149723000312")!) {
                                    Text("Affect on Oral Health")
                                    .foregroundColor(Color.black)}
                                
                                Link(destination: URL(string: "https://www.sciencedirect.com/science/article/pii/S2666149723000312")!) {
                                    Text("The Association of UK Dietitians")
                                    .foregroundColor(Color.black)}
                                
                                Spacer()
                                
                                VStack{
                                    Text("              Fitness              ")
                                        .padding(.all, 17.0)
                                        .background(Color.color2)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .light, design: .default))
                                        .fontWeight(.bold)
                                        .cornerRadius(10)
                                        .shadow(radius: 1)
                                    VStack{
                                        Link(destination: URL(string: "https://www.who.int/news-room/fact-sheets/detail/physical-activity")!) {
                                            Text("World Health Organization")
                                                .foregroundColor(Color.black)
                                            .lineLimit(nil)}
                                        
                                        Link(destination: URL(string: "https://niddk.nih.gov/health-information/weight-management/staying-active-at-any-size")!) {
                                            Text("National Institutes of Health")
                                            .foregroundColor(Color.black)}
                                        
                                        Link(destination: URL(string: "https://www.health.harvard.edu/topics/exercise-and-fitness")!) {
                                            Text("Harvard Health")
                                            .foregroundColor(Color.black)}
                                    }
                                }
                                Spacer()
                                VStack{
                                    Text("     Body Systems      ")
                                        .padding(.all, 17.0)
                                        .background(Color.color2)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .light, design: .default))
                                        .fontWeight(.bold)
                                        .cornerRadius(10)
                                        .shadow(radius: 1)
                                    
                                    VStack{
                                        Link(destination: URL(string: "https://www.health.harvard.edu/blog/heart-rate-variability-new-way-track-well-2017112212789")!) {
                                            Text("Harvard Health")
                                            .foregroundColor(Color.black)}
                                        
                                        Link(destination: URL(string: "https://www.scientificamerican.com/article/how-to-keep-muscles-strong-as-you-age/")!) {
                                            Text("Scientific American")
                                            .foregroundColor(Color.black)}
                                        
                                        Link(destination: URL(string: "https://my.clevelandclinic.org/health/body/21196-immune-system")!) {
                                            Text("Cleaveland Clinic")
                                            .foregroundColor(Color.black)}
                                    }
                                }
                                VStack{
                                    Text("Common Disorders")
                                        .padding(.all, 17.0)
                                        .background(Color.color2)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .light, design: .default))
                                        .fontWeight(.bold)
                                        .cornerRadius(10)
                                        .shadow(radius: 1)
                                    
                                    VStack{
                                        Link(destination: URL(string: "https://www.nami.org/about-mental-illness/mental-health-conditions/")!) {
                                            Text("National Alliance on Mental Illness")
                                            .foregroundColor(Color.black)}
                                        
                                        Link(destination: URL(string: "https://www.who.int/news-room/fact-sheets/detail/mental-health-of-older-adults")!) {
                                            Text("World Health Association")
                                            .foregroundColor(Color.black)}
                                        
                                        Link(destination: URL(string: "https://www.hopkinsmedicine.org/health/wellness-and-prevention/what-are-common-symptoms-of-autoimmune-disease")!) {
                                            Text("Johns Hopkins Medicine")
                                            .foregroundColor(Color.black)}
                                    }
                                }
                                
                                
                            }
                        }
                        
                    }
                }
                .padding()
            }
        }
    }
}
#Preview {
    ResourcesView()
}

