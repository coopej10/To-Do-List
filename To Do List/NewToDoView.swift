//
//  NewToDoView.swift
//  To Do List
//
//  Created by Jessica Cooper on 5/4/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .cornerRadius(15)
                .textFieldStyle(.roundedBorder)
                .background(Color(.systemYellow))
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
                    .fontWeight(.medium)
                    
                Button {

                } label: {
                        Text("Save")
                }
                
            }
            
        }
        .padding()
    }
}

#Preview {
    NewToDoView()
}
