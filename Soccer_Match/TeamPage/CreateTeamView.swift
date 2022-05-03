//
//  CreateTeamView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import SwiftUI
import UIKit

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif


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
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var touch: Bool
    @Binding var teamINTRO: String
    @Binding var teamNAME: String
    @Binding var teamLOGO: Image?
    
    //    @Binding var isShowingSheet: Bool
    @State private var SelectLogo: Image = Image(systemName: "camera.fill")
    // 이미지 선택창 선택 여부
    
    @State private var presentsImagePicker = false
    // 카메라 선택 여부
    @State private var onCamera = false
    // 사진 앨범 선택 여부
    @State private var onPhotoLibrary = false
    
    
    
    //    @Binding var teams: [Team]
    
    //    @State var teamName: String = ""
    //    @State var teamIntro: String = ""
    
    // 값이 수정되도 인식되게 만듬
    @State private var selectCity = ""
    
    
    // 지역
    var citys = ["서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기", "강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주"]
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .overlay(
                    Image("BackGround4")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .preferredColorScheme(.dark)
                )
            ZStack{
                VStack() {
                    ZStack() {
                        // 팀로고가 nil이 아니면 let 변수에 teamLOGO를 넣어줌
                        // guard let은 return이 필요 else { return 무언가 } 함수일때 사용 기능은 똑같이 옵셔널 없애고 사용
                        if let teamLOGO = teamLOGO {
                            teamLOGO
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200)
                                .clipShape(Circle())
                        } else {
                            Circle()
                                .frame(width: 200, height: 200)
                                .onTapGesture {
                                    presentsImagePicker = true
                                }
                            VStack{
                            
                                
                            SelectLogo.foregroundColor(.black)
                            
                                Text("로고를 골라주세요")
                                    .scaledFont(name: "GmarketSansTTFMedium", size: 10)
                                    .padding(10)
                                    .background(.white.opacity(0.5))
                                    .cornerRadius(20)
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .padding(.bottom, 10)
                    
                    //                    Text(Logo == nil ? "로고를 골라주세요" : "")
                    // Logo가 비어있을때 : 있을때
//                    if teamLOGO == nil {
//                        ZStack{
//                            Text("로고를 골라주세요")
//                                .scaledFont(name: "GmarketSansTTFMedium", size: 10)
//                                .padding(10)
//                                .background(.white.opacity(0.5))
//                                .cornerRadius(20)
//                                .foregroundColor(.black)
//
//
//                        }
//
//                        Spacer()
//
//                    }
                    //                        HStack{
                    Text("팀 이름")
                        .frame(maxWidth:.infinity, alignment: .bottomLeading)
                        .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                        
                    
                    TextField("TeamName", text: $teamNAME)
                        .padding()
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .foregroundColor(.black)
                      
                    
                    
                    
                    
                    //                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    //                            Button(action: {
                    //                                self.teamName = ""
                    //                            }){
                    //                                if self.teamName.count > 0{
                    //                                    Image(systemName: "multiply.circle.fill")
                    //                                        .foregroundColor(.secondary)
                    //                                        .font(.system(size: 22))
                    //
                    //                                }
                    //
                    //                            }
                    //                        }.padding(.horizontal, 40)
                    
                    //                        HStack{
                    Text("팀 소개")
                        .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                        .frame(maxWidth:.infinity, alignment: .bottomLeading)
                        .padding(.top, 30)
                    TextEditor(text: $teamINTRO)
                        .padding()
                        .frame(maxWidth:.infinity)
                        .frame(maxHeight: 110)
                        .background(.white)
                    //                                .colorMultiply(.white)
                        .foregroundColor(.black)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .cornerRadius(10)
                        .onAppear {
                            UITextView.appearance().backgroundColor = .clear
                        }
                    
                    
                    
                    //                            TextField("TeamName", text: $teamName)
                    //                                .font(.largeTitle)
                    //                                .autocapitalization(.none)
                    //                                .disableAutocorrection(true)
                    //                                .background(RoundedRectangle(cornerRadius: 1).fill(Color.white))
                    //                                .foregroundColor(.black)
                    //                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    //                            Button(action: {
                    //                                self.teamIntro = ""
                    //                            }){
                    //                                if self.teamIntro.count > 0{
                    //                                    Image(systemName: "multiply.circle.fill")
                    //                                        .foregroundColor(.secondary)
                    //                                        .font(.system(size: 22))
                    //
                    //
                    //
                    //                                }
                    //
                    //                            }
                    //                        }.padding(.horizontal, 40)
                    HStack{
                        Text("팀 지역")
                            .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            .frame(maxWidth:.infinity, alignment: .bottomLeading)
                        
                        
                        Picker("", selection: $selectCity){
                            ForEach(0..<citys.count){
                                Text(self.citys[$0])
                            }
                        }.padding(.horizontal, 100)
                            .background(.white)
                            .cornerRadius(10)
                        
                    }
                    .padding(.top,30)
                    Spacer()
                    
                    Button("팀 생성"){
                        if teamNAME.count > 0
                            && teamINTRO.count > 0 && teamLOGO != nil {
                            self.presentationMode.wrappedValue.dismiss()
                            touch.toggle()
                            //                                isShowingSheet.toggle()
                            //                                teams.append(Team(teamName: teamName, teamIntro: teamIntro))
                        }
                    }
                    .foregroundColor(.white)
                    .padding(14)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.bottom, 10)
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
            }
            // 카메라 선택
            //                .sheet(isPresented: $onCamera) {
            //                    ImagePicker(sourceType: .camera){ (pickedImage) in
            //                        Logo = Image(uiImage: pickedImage)
            //
            //
            //                    }
            //                }
            // 사진 앨범 선택
            .sheet(isPresented: $onPhotoLibrary) {
                ImagePicker(sourceType: .photoLibrary) { (pickedImage) in
                    teamLOGO = Image(uiImage: pickedImage)
                    
                    
                }
            }
            .actionSheet(isPresented: $presentsImagePicker) {
                ActionSheet(title: Text("이미지 선택하기"),
                            message: nil,
                            buttons: [
                                //                                    .default(
                                //                                        Text("카메라"),
                                //                                        action:  {onCamera = true}
                                //                                    ),
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
        
        .onTapGesture {
            hideKeyboard()
        }
    }
}
