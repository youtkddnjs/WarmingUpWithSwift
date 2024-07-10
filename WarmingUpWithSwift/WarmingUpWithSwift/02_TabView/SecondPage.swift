//
//  SecondPage.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/10/24.
//

import SwiftUI

struct SecondPage: View {
    
    // Main page 의 showModal과 binding
    @Binding var isPresented: Bool
    
    var body: some View {
        
        Text("Second Page")
        
        Button(action: {
            isPresented = false
        }, label: {
            Text("Close")
        })
    } //body
} //SecondPage

#Preview {
    // .constant는 무엇인가?
    SecondPage(isPresented: .constant(true))
}
