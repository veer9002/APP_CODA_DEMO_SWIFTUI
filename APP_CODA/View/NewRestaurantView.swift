//
//  NewRestaurantView.swift
//  APP_CODA
//
//  Created by Manish  Sharma on 25/03/22.
//

import SwiftUI

struct NewRestaurantView: View {
//    @State var restaurantName = ""
    @State private var restaurantImage = UIImage(named: "newphoto")!
    @State private var showPhotoOptions = false
    @State private var photoSource: PhotoSource?
    @Environment(\.dismiss) var dismiss
//    @Environment(\.presentationMode) var presentationMode


    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image(uiImage: restaurantImage)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 200)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                        .padding(.bottom)
                        .onTapGesture {
                            self.showPhotoOptions.toggle()
                        }
                    
                    FormTextField(label: "Name", placeholder: "Fill in the restaurant name", value: .constant(""))
                    FormTextField(label: "Type", placeholder: "Fill in the restaurant type", value: .constant(""))
                    FormTextField(label: "Address", placeholder: "Fill in the restaurant address", value: .constant(""))
                    FormTextField(label: "Phone", placeholder: "Fill in the restaurant phone", value: .constant(""))
                    FormTextView(label: "Description", value: .constant(""), height: 100)
                }
                .padding()
            }
            .navigationTitle("New Restaurant")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                         dismiss()
//                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .accentColor(.primary)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(Color("NavigationBar"))
                }
            }

            .actionSheet(isPresented: $showPhotoOptions) {
                ActionSheet(title: Text("Choose from photo source"),
                            message: nil,
                            buttons: [
                                .default(Text("Camera")) {
                                    self.photoSource = .camera
                                },
                                .default(Text("Photo library")) {
                                    self.photoSource = .photoLibrary
                                },
                                .cancel()
                            ])
            }
            .fullScreenCover(item: $photoSource) { source in
                switch source {
                case .photoLibrary: ImagePicker(sourceType: .photoLibrary, selectedImage: $restaurantImage).ignoresSafeArea()
                case .camera: ImagePicker(sourceType: .camera, selectedImage: $restaurantImage).ignoresSafeArea()
                }
            }
        }
    }
}

struct NewRestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        NewRestaurantView()
        
        FormTextField(label: "Name", placeholder: "Fill in the restaurant name", value: .constant(""))
            .previewLayout(.fixed(width: 300, height: 200))
        
        FormTextView(label: "Description", value: .constant(""))
            .previewLayout(.sizeThatFits)

    }
}
