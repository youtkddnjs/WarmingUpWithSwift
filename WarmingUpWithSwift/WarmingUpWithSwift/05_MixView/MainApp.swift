//
//  MainApp.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/11/24.
//

import SwiftUI

struct MainApp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        TabView{
            
            FirstListView()
                .tabItem {
                        Label("First", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("Main Page 02")
                .tabItem {
                    Label("Sceond", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("Main Page 03")
                .tabItem {
                    Label("Third", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("Main Page 04")
                .tabItem {
                    Label("Fourth", systemImage: "tray.and.arrow.down.fill")
                }
            
//            Text("Main Page 05")
//                .tabItem {
//                    Label("Fith", systemImage: "tray.and.arrow.down.fill")
//                }
            
        } //TabView
        .sheet(isPresented: $showSheet, content: {
            TabView{
                OnBoarding01(onboardingTitle: "input title 01")
                
                OnBoarding01(onboardingTitle: "input title 02")
                
                ZStack{
                    Color.blue.ignoresSafeArea()
                    Text("Onboarding 02")
                }
                
                ZStack{
                    Color.green
                    VStack{
                        Text("Onboarding 03")
                        Button(action: {
                            showSheet = false
                        }, label: {
                            Text("START")
                        })
                    }
                }
            } //TabView
            .tabViewStyle(.page)
        }) //sheet
        .onAppear{ // 페이지가 나타나자 마자
            showSheet = true
        } //onAppear
    } //body
} //MainApp

#Preview {
    MainApp()
}
