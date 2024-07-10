//
//  AddPage.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/10/24.
//

import SwiftUI

struct AddPage: View {
    
    @Binding var addPagePresented: Bool
    @Binding var titles: [String]
    @Binding var descriptions: [String]
    
    @State var insertTitle: String = ""
    @State var insertDescriptions: String = ""
    
    var body: some View {
        
        VStack{
            
            TextField("Inset Title", text: $insertTitle)
                .padding(30)
            
            TextField("Inset insertDescriptions", text: $insertDescriptions)
                .padding(30)
            
            HStack{
                Button(action: {
                    titles.append(insertTitle)
                    descriptions.append(insertDescriptions)
                    insertTitle = ""
                    insertDescriptions = ""
                    addPagePresented = false
                }, label: {
                    Text("Add and Save ")
                })
                .padding(30)
                
                
                Button(action: {
                    addPagePresented = false
                }, label: {
                    Text("Cancle")
                })
                .padding(30)
            } //HStack
        }
    
    } //body
} //AddPage

#Preview {
    AddPage(addPagePresented: .constant(true), titles: .constant([]), descriptions: .constant([]))
}
