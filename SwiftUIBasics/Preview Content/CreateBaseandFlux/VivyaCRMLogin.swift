//
//  VivyaCRMLogin.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 17/12/24.
//

import SwiftUI

struct VivyaCRMLogin: View {
    
    @State private var animateCircle = false
    @State private var isChecked = false
    @State private var isIPad = UIDevice.current.userInterfaceIdiom == .pad
    @State private var offset: CGFloat = 0
    @FocusState private var isTextFieldFocused: Bool
   
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ScrollView {
            ScrollViewReader{ proxy in
                VStack {
                    headerView
                    Spacer().frame(height: isIPad ? 100 : 30)
                    formView
                        .offset(x: animateCircle ? 0 : 800, y: animateCircle ? 0 : 800)
                        .animation(.easeOut(duration: 1.5), value: animateCircle)
                }
                .onAppear {animateCircle = true}
                .onAppear(perform: addKeyboardObservers)
                .onDisappear(perform: removeKeyboardObservers)
                //.offset(y: -offset)
            }
            
        }.scrollIndicators(ScrollIndicatorVisibility.hidden, axes: .vertical)
    }
    
    // MARK: - Header View
    private var headerView: some View {
        ZStack {
            Rectangle()
                .fill(isTextFieldFocused ? Color(#colorLiteral(red: 0.3155861497, green: 0.1523542702, blue: 0.5989382267, alpha: 1)) : Color.clear)
                .ignoresSafeArea()
            Text("Vivya CRM")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .opacity(animateCircle ? 1 : 0)
                .animation(.easeIn(duration: 1.5).delay(0.5), value: animateCircle)
                .animation(.easeInOut(duration: 1.0), value: isTextFieldFocused)
                .opacity(isTextFieldFocused ? 1 : 0)
            
            ZStack {
                Circle()
                    .fill(Color(#colorLiteral(red: 0.3155861497, green: 0.1523542702, blue: 0.5989382267, alpha: 1)))
                    .padding(.top, isIPad ? -600 : -300)
                    .offset(y: animateCircle ? 0 : -1000)
                    .padding(.leading, isIPad ? animateCircle ? -370 : -1000 : animateCircle ? -200 : -1000)
                    .padding(.trailing, isIPad ? -200 : isTextFieldFocused ? -100 :-100)
                
                Text("Vivya CRM")
                    .fontWeight(.bold)
                    .font(.system(size: 45))
                    .foregroundColor(.white)
                    .opacity(animateCircle ? 1 : 0)
                    .animation(.easeIn(duration: 1.5).delay(0.5), value: animateCircle)
            }
            .opacity(isTextFieldFocused ? 0 : 1)
            .animation(.easeOut(duration: 1.5), value: animateCircle)
        }
        .frame(width: UIScreen.main.bounds.width, height: isTextFieldFocused ? UIScreen.main.bounds.height / 8 : UIScreen.main.bounds.height / 2)
        .animation(.easeInOut(duration: 0.5), value: isTextFieldFocused)
    }
    
    // MARK: - Form View
    private var formView: some View {
        VStack {
            VStack(spacing: 15) {
                Text("Log In To Your Account")
                    .fontWeight(.bold)
                    .font(.custom("AvenirNext-Regular", size: 20))
                Text("Enter your credentials to jump in and begin your adventure")
                    .multilineTextAlignment(.center)
                    .font(.custom("AvenirNext-Regular", size: 13))
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.horizontal, 30)
            
            Spacer().frame(height: 20)
            
            credentialsForm
            
            Spacer().frame(height: 25)
            
            loginButton
            
            Spacer().frame(height: 25)
        }
        .animation(.easeInOut, value: isTextFieldFocused)
        .padding(.horizontal, isIPad ? 150 : 40)
    }
    
    // MARK: - Credentials Form
    private var credentialsForm: some View {
        VStack(spacing: 10) {
            Group {
                labeledTextField(label: "Registered Mail ID", text: .constant(""))
                labeledSecureField(label: "Password", text: .constant(""))
            }
            
            HStack {
                checkboxView
                Text("Remember Password")
                    .font(.custom("AvenirNext-Regular", size: 10))
                Spacer()
                Text("Forgot Password?")
                    .foregroundColor(.red)
                    .font(.custom("AvenirNext-Regular", size: 10))
            }
        }
    }
    
    // MARK: - Labeled Text Field
    private func labeledTextField(label: String, text: Binding<String>) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label)
                .fontWeight(.bold)
                .font(.custom("AvenirNext-Regular", size: 15))
            TextField("", text: text)
                .padding(8)
                .focused($isTextFieldFocused)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
            
        }
    }
    
    // MARK: - Labeled Secure Field
    private func labeledSecureField(label: String, text: Binding<String>) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(label)
                .fontWeight(.bold)
                .font(.custom("AvenirNext-Regular", size: 15))
            SecureField("", text: text)
                .padding(8)
                .focused($isTextFieldFocused)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .overlay {
                    HStack {
                        Spacer()
                        Image("padlock")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.trailing, 8)
                    }
                }
        }
    }
    
    // MARK: - Checkbox View
    private var checkboxView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(#colorLiteral(red: 0.3137254902, green: 0.1529411765, blue: 0.6, alpha: 1)), lineWidth: 1.2)
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .onTapGesture {
                    isChecked.toggle()
                }
        }
        .frame(width: 15, height: 15)
        .padding(.horizontal, 2)
    }
    
    // MARK: - Login Button
    private var loginButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 0.3137254902, green: 0.1529411765, blue: 0.6, alpha: 1)))
                .frame(height: 60)
            Text("Log in")
                .fontWeight(.bold)
                .font(.custom("AvenirNext-Regular", size: 20))
                .foregroundColor(.white)
        }
    }
    
    private func addKeyboardObservers() {
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
                if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                    let keyboardHeight = keyboardFrame.height
                    offset = isTextFieldFocused ? keyboardHeight  : 0
                }
            }
            
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
                offset = 0
            }
        }
    
    private func removeKeyboardObservers() {
           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
           NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
       }
}

#Preview {
    VivyaCRMLogin()
}
