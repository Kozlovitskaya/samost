//
//  ContentView.swift
//  samost
//
//  Created by user on 04.06.2021.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct SignInView: View {
    
    @State var email = ""
    @State var pass = ""
    @ObservedObject var userObject = UserObject()
    @Binding var page : Int
    

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
                .autocapitalization(.none)
                
                Text("PASSWORD")
                    .font(.custom("Time New Roman", size: 14))
                    .foregroundColor(.black)
                    .frame(width: 330, height: 30, alignment: .leading)
                
                HStack{
                    Image(systemName: "lock")
                    SecureField("********", text:$pass)
                        .frame(width: 300, height: 30, alignment: .leading)
                }
                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color(UIColor.gray).opacity(1), lineWidth:1))
                .autocapitalization(.none)
                

                Button(action: {

                    userObject.login(email:email, password:pass)
page=2
                }  , label: {
                    Text ("SIGN IN")
                        .font(.custom("Time New Roman", size: 14))
                        .foregroundColor(.white)
                        .frame(width: 300, height: 40, alignment: .center)
                        .background(Color(.init(displayP3Red: 72/255, green: 128/255, blue: 230/255, alpha: 1)))
                        .cornerRadius(20)

                })
            
                Text("Already have an account? ")
                    .font(.custom("Time New Roman", size: 14))
                    .foregroundColor(.black)
                    .frame(width: 220, height: 20, alignment: .leading)

                Button(action: {
                } , label: {
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
        SignInView(page:.constant(1))
        
    }
}
