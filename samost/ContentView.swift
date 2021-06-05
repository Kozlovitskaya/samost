//
//  ContentView.swift
//  samost
//
//  Created by user on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var emailStr = ""
    
    @State var pass = ""
    @State var passStr = ""
    
    var body: some View {
        ZStack {
            VStack{
                Image("planeta")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: .bottomTrailing)
                
                
                Text("EMAIL")
                    .font(.custom("Time New Roman", size: 14))
                    .foregroundColor(.black)
                    .frame(width: 330, height: 30, alignment: .leading)
                HStack{
                    Image(systemName: "envelope")
                    
                    TextField("name@email.com", text:$email)
                        .frame(width: 300, height: 30, alignment: .leading)
                }
                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color(UIColor.gray).opacity(1), lineWidth:1))
                Text("PASSWORD")
                    .font(.custom("Time New Roman", size: 14))
                    .foregroundColor(.black)
                    .frame(width: 330, height: 30, alignment: .leading)
                HStack{
                    Image(systemName: "lock")
                    TextField("********", text:$pass)
                        .frame(width: 300, height: 30, alignment: .leading)
                }
                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color(UIColor.gray).opacity(1), lineWidth:1))
                
                Button(action: {
                } , label: {
                    Text ("SIGN UP")
                        .font(.custom("Time New Roman", size: 14))
                        .foregroundColor(.white)
                        .frame(width: 300, height: 40, alignment: .center)
                        .background(Color(.init(displayP3Red: 72/255, green: 128/255, blue: 230/255, alpha: 1)))
                        .cornerRadius(20)
                        .padding(.central)
                })
                
                
                Text("Already have an account? ")
                    .font(.custom("Time New Roman", size: 14))
                    .foregroundColor(.black)
                    .frame(width: 220, height: 20, alignment: .leading)
                    .padding(.central)
                
                Button(action: {} , label: {
                    Text ("Login")
                        .font(.custom("Time New Roman", size: 14))
                        .foregroundColor(.blue)
                    
                })
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
