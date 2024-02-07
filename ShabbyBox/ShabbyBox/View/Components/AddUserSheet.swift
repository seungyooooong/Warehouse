//
//  AddUserSheet.swift
//  ShabbyBox
//
//  Created by 최승용 on 2/7/24.
//

import SwiftUI

struct AddUserSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var userViewModel: UserViewModel
    @State var userName: String = ""
    @State var showAlert: Bool = false
    @State var alertText: String = ""
    
    var body: some View {
        HStack {
            TextField("",
                      text: $userName,
                      prompt: Text("Enter a user name").foregroundColor(Color("oppositeColor").opacity(0.8))
            )
                .padding()
                .foregroundColor(Color("oppositeColor"))
                .background(Color("mainColor"))
                .cornerRadius(10)
                .font(.headline)
            Button {
                alertText = userViewModel.validateUserName(userName: userName)
                if alertText == "" {
                    userViewModel.addUser(userName: userName)
                    presentationMode.wrappedValue.dismiss()
                } else {
                    showAlert = true
                }
            } label: {
                Text("Add")
                    .padding(10)
                    .foregroundStyle(Color("mainColor"))
            }
            .buttonStyle(.borderedProminent)
            .accentColor(Color("oppositeColor"))
            .alert(isPresented: $showAlert) {
                Alert(title: Text(alertText))
            }
        }
        .padding()
    }
}

#Preview {
    AddUserSheet(userViewModel: UserViewModel())
}
