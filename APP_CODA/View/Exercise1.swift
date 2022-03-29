//
//  Exercise1.swift
//  APP_CODA
//
//  Created by Manish  Sharma on 08/03/22.
//

import SwiftUI

struct Exercise1: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack {
            Text("Instant developer")
                .foregroundColor(.white)
                .font(.largeTitle)
            Text("Get help from experts in 15 mins")
                .foregroundColor(.white)
                .font(.subheadline)
            
            HStack {
                Image("student")
                    .resizable()
                    .scaledToFit()
                Image("tutor")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 70)
            Text("Need help with coding problems? Register!")
                .foregroundColor(.white)
                .font(.subheadline)
            Spacer()
            
            if verticalSizeClass == .compact {
                hSignUpButtonGroup()
            } else {
                vSignUpButtonGroup()
            }
        }
        .background {
            Image("background")
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct vSignUpButtonGroup: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Sign Up")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.indigo)
                    .cornerRadius(10)
            }
            Button {
                
            } label: {
                Text("Log In")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
        }.padding()
    }
}

struct hSignUpButtonGroup: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Sign Up")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.indigo)
                    .cornerRadius(10)
            }
            Button {
                
            } label: {
                Text("Log In")
                    .frame(width: 200)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
        }.padding()
    }
}


struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Exercise1()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                .previewDisplayName("iPhone 12 Pro")
            
            Exercise1()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
            
        }
    }
}

