//
//  FormTextView.swift
//  APP_CODA
//
//  Created by Manish  Sharma on 25/03/22.
//

import SwiftUI

struct FormTextView: View {
    
    let label: String
    @Binding var value: String
    var height: CGFloat = 200.0
    
    var body: some View {

        VStack(alignment: .leading) {
            Text(label.uppercased())
                .font(.system(.headline, design: .rounded))
                .foregroundColor(Color(.darkGray))
            
            TextEditor(text: $value)
                .frame(width: .infinity)
                .frame(height: height)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color(.systemGray5), lineWidth: 1)
                )
                .padding(.top, 10)
            
        }
    }
}

struct FormTextView_Previews: PreviewProvider {
    static var previews: some View {
        FormTextView(label: "Description", value: .constant(""))
            .previewLayout(.sizeThatFits)
    }
}
