//
//  ProfileView.swift
//  ValoGent Ind
//
//  Created by Lenny Indria on 20/05/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("valorant-background")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)

                HStack {
                    Image("agent-fade-portrait")
                        .resizable(resizingMode: .stretch)
                        .padding(.top, 25)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .background(.white)
                        .cornerRadius(50)
                        .shadow(radius: 10)
                        .offset(y: 90)
                }
                
            }
            Spacer()
            
            VStack {
                Text("SaladinFI")
                    .accessibilityLabel("Nama")
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack {
                    Text("Account Information")
                        .font(.headline)
                        .padding([.top, .leading])
                    Spacer()
                }
                
                HStack{
                    Text("Kills")
                        .font(.caption)
                        .fontWeight(.semibold)
                    Text("78")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Text("Deaths")
                        .font(.caption)
                        .fontWeight(.semibold)
                    Text("102")
                        .font(.body)
                        .fontWeight(.light)
                    
                    Text("Assists")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .lineLimit(nil)
                    Text("9")
                        .font(.body)
                        .fontWeight(.light)
                        .lineLimit(1)
                }
                .padding(.vertical)
                
                HStack {
                    VStack {
                        Text("Current Rank")
                            .font(.caption)
                            .fontWeight(.semibold)
                        Image("rank-platinum-icon")
                            .frame(width: 40, height: 40)
                        Text("Platinum 2")
                            .font(.caption)
                            .fontWeight(.thin)
                    }
                    Spacer()
                        .frame(width: 25)
                    Divider()
                        .frame(height: 60.0)
                    Spacer()
                        .frame(width: 25)
                    
                    VStack {
                        Text("Highest Rank")
                            .font(.caption)
                            .fontWeight(.semibold)
                        Image("rank-platinum-icon")
                            .frame(width: 40, height: 40)
                        Text("Platinum 2")
                            .font(.caption)
                            .fontWeight(.thin)
                    }
                }
                
                HStack {
                    Text("Career")
                        .font(.headline)
                        .padding([.top, .leading])
                    Spacer()
                }
                
                HStack(){
                    Image("career-banner-win")
                        .frame(width: 220, height: 120)
                    Image("career-banner-lose")
                        .frame(width: 220, height: 120)
                }
                .padding(.leading, 100.0)
                .frame(width: 350, height: 120)
                .clipped()
                .controlGroupStyle(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
                
            }
            Spacer()
                .frame(height: 120.0)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
