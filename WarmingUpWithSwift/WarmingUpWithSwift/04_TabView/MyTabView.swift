//
//  TabView.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/10/24.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        
        TabView {
            ReceivedView()
                .badge(3)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            
            ReceivedView2()
//                .badge(3)
//                .tabItem {
//                    Label("Received", systemImage: "tray.and.arrow.down.fill")
//                }
            
            ReceivedView3()
                .badge(3)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            
            SentView()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            
            AccountView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
            
        } //Tabview
//        .tabViewStyle(.page) 아래 코드와 차이 확인 할 것.
        .tabViewStyle(.page(indexDisplayMode: .always))
    } //body
} //TabView

#Preview {
    MyTabView()
}
