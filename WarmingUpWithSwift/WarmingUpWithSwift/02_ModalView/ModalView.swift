//
//  TabView.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/10/24.
//

import SwiftUI

struct ModalView: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack{
            Text("Main Page")
            
            Button(action: {
                showModal = true
//                showModal.toggle()
            }, label: {
                Text("Go to Next Page")
            })
        } //VStack
        .sheet(isPresented: $showModal, content: {
//            Text("This is Modal Page")
            // 두번째 페이지의 isPresented 와 바인당하기위해 showModal 전달
            SecondPage(myisPresented: $showModal)
        })

        
    } // body
}// ModalView

#Preview {
    ModalView()
}
