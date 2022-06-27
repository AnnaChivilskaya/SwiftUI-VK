//
//  ContentView.swift
//  SwiftUI-VK
//
//  Created by Аня on 27.06.2022.
//

import SwiftUI
import Combine


struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo: Bool = true
    
    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { notification in true } ,
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map {  notification in false }
    )
        .removeDuplicates()
    
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .ignoresSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
            }
            
            ScrollView  {
                
                VStack {
                    
                    if shouldShowLogo {
                        Image("logo_vk")
                            .resizable()
                            .frame(maxWidth: 100, maxHeight: 100)
                            .aspectRatio(contentMode: .fit)
                            .padding(.top, 32)
                    }
                    
                    VStack(alignment: .leading) {
                        
                        
                        Text("Телефон или email")
                            .fontWeight(.light)
                            .padding(.top, 10)
                            .foregroundColor(.black)
                            
                        TextField("Логин", text: $login)
                            .frame(maxWidth: 200)
                        
                        Text("Пароль")
                            .fontWeight(.light)
                            .padding(.top, 10)
                            .foregroundColor(.black)
                        
                        TextField("Пароль", text: $password)
                            .frame(maxWidth: 200)
                    }
                    .padding(.top, 20)
                    
                    HStack {
    
                        Button {
                            print("Войти")
                        } label: {
                            Label("Войти", systemImage: "chevron.right")
                        }
                        .foregroundColor(.blue)
                        
                        .disabled(self.login.isEmpty || self.password.isEmpty)
                        .buttonStyle(.automatic)
                        .tint(.blue)
                        
                        Button {
                            
                            print("Забыли пароль?")
                        } label: {
                            Label("Забыли пароль?", systemImage: "")
                        }
                        .disabled(self.login.isEmpty || self.password.isEmpty)
                    }
                    .foregroundColor(.blue)
                    .padding(.top, 20)
                    
                    Text("Впервые Вконтакте?")
                        .fontWeight(.light)
                        .padding(.top, 10)
                        
                    Button {
                        print("Зарегистрироваться")
                    } label: {
                        Label("Зарегистрироваться", systemImage: "")
                    }
                    .foregroundColor(.white)
                    
                    .buttonStyle(.borderedProminent)
                    .tint(.green)
                    .controlSize(.regular)
                    
                    
                    Spacer()
                }
                .padding([.leading, .trailing], 20)
                .frame(maxWidth: 350)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        
        .onReceive(keyboardIsOnPublisher) { isKeyboard in
            withAnimation(Animation.easeOut(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboard
            }
            
            
        }
    }
}



extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
