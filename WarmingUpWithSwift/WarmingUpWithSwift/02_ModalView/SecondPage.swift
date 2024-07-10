//
//  SecondPage.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/10/24.
//

import SwiftUI

struct SecondPage: View {
    
    // Main page 의 showModal과 binding
    @Binding var myisPresented: Bool
    
    var body: some View {
        
        Text("Second Page")
        
        Button(action: {
            myisPresented = false
        }, label: {
            Text("Close")
        })
    } //body
} //SecondPage

#Preview {
    // .constant는 무엇인가?
    SecondPage(myisPresented: .constant(true))
}
