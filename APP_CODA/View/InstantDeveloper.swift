//
//  InstantDeveloper.swift
//  APP_CODA
//
//  Created by Manish  Sharma on 03/03/22.
//

import SwiftUI

struct InstantDeveloper: View {
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundColor(.indigo)
                Text("Get help from experts in 15 minutes")
            }
            HStack(alignment: .bottom, spacing: 10) {
                Image("user1")
                    .resizable()
                    .scaledToFit()
                Image("user2")
                    .resizable()
                    .scaledToFit()
                Image("user3")
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal, 20)
            
            Text("Need help with coding problems? Register!").fontWeight(.light)
                .font(.system(size: 15))
            Spacer()
            if verticalSizeClass == .compact {
                HSignupButtonGroup()
            } else {
                VSignupButtonGroup()
            }
        }
        .padding(.top, 30)
    }
}

struct VSignupButtonGroup: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
        .padding()
    }
}

struct HSignupButtonGroup: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Sign Up")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.indigo)
            .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Log In")
            }
            .frame(width: 200)
            .padding()
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
        }
        .padding()
    }
}


struct InstantDeveloper_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InstantDeveloper()
                    .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                    .previewDisplayName("iPhone 12 Pro")
            InstantDeveloper()
                    .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
                    .previewDisplayName("iPhone 12 Pro")
                    .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

