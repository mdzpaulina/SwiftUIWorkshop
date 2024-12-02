//
//  ContentView.swift
//  prueba
//
//  Created by gdaalumno on 02/12/24.
//

import SwiftUI

struct AuthView: View {
    @State var email = ""
    @State var password = ""
    @FocusState private var focus: String?
    
    var body: some View {
        VStack{
            
        }
        TextField("Email", text: $email)
            .textFieldStyle(RoundedTextFieldStyle())
            .background(Color(uiColor:
                    .secondarySystemBackground), in:
                            RoundedRectangle(cornerRadius:10))
            .border(focus == "emailField" ? .red : .clear)
            .padding()
            .focused($focus, equals: "emailField")
            .textContentType(.emailAdress)
            .keyboardType(.emailAdress)
        SecureField("Contrasena", text: $password)
            .textFieldStyle(RoundedTextFieldStyle())
        
        .padding(16)
    }
}

#Preview {
    AuthView()
}

