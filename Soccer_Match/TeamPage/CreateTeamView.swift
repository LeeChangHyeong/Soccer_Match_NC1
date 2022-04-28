//
//  CreateTeamView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import SwiftUI
import UIKit


struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    let sourceType: UIImagePickerController.SourceType
    let onPickedImage: (UIImage) -> ()
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let imagePicker: ImagePicker
        
        init(imagePicker: ImagePicker) {
            self.imagePicker = imagePicker
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[.originalImage] as? UIImage else { return }
            self.imagePicker.onPickedImage(image)
            self.imagePicker.presentationMode.wrappedValue.dismiss()
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.imagePicker.presentationMode.wrappedValue.dismiss()
        }
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = context.coordinator
        return imagePickerController
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(imagePicker: self)
    }
}


struct CreateTeamView: View {
    @State private var SelectLogo: Image = Image(systemName: "camera.fill")
    // 이미지 선택창 선택 여부
    @State private var Logo: Image?
    @State private var presentsImagePicker = false
    // 카메라 선택 여부
    @State private var onCamera = false
    // 사진 앨범 선택 여부
    @State private var onPhotoLibrary = false
    
    var body: some View {
        VStack {
            ZStack{
                Image("BackGround4")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .preferredColorScheme(.dark)
                ZStack{
                    VStack() {
                        ZStack() {
                            Circle()
                                .frame(width: 100, height: 100)
                                
                            
                            SelectLogo
                                .foregroundColor(.black)
                        }
                        .padding(.top, 100)
                        .padding(.bottom, 10)
                        
                        //                    Text(Logo == nil ? "로고를 골라주세요" : "")
                        // Logo가 비어있을때 : 있을때
                        if Logo == nil {
                            ZStack{
                            Text("로고를 골라주세요")
                                .font(.custom("GmarketSansTTFMedium", size: 12))
                                .padding(10)
                                .background(.white.opacity(0.5))
                                .cornerRadius(20)
                                .foregroundColor(.black)
                            }
            
                            Spacer()
                                
                        }
                    }
                    
                    if let Logo = Logo {
                        Logo
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    }
                }
                .onTapGesture {
                    presentsImagePicker = true
                }
                // 카메라 선택
                .sheet(isPresented: $onCamera) {
                    ImagePicker(sourceType: .photoLibrary){ (pickedImage) in
                        Logo = Image(uiImage: pickedImage)
                        
                        
                    }
                }
                // 사진 앨범 선택
                .sheet(isPresented: $onPhotoLibrary) {
                    ImagePicker(sourceType: .photoLibrary) { (pickedImage) in
                        Logo = Image(uiImage: pickedImage)
                        
                        
                    }
                }
                .actionSheet(isPresented: $presentsImagePicker) {
                    ActionSheet(title: Text("이미지 선택하기"),
                                message: nil,
                                buttons: [
                                    .default(
                                        Text("카메라"),
                                        action:  {onCamera = true}
                                    ),
                                    .default(
                                        Text("사진 앨범"),
                                        action: {onPhotoLibrary = true}
                                    ),
                                    .cancel(
                                        Text("돌아가기"))
                                ]
                    )
                }
            }
        }
    }
}

struct CreateTeamView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTeamView()
    }
}
