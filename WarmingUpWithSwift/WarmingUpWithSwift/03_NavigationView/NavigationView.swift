//
//  NavigationView.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/10/24.
//

import SwiftUI

struct NavigationView: View {
    
    @State var titles = ["This is Destination", "This is Destination 2", "This is Destination 3"]
    @State var descriptions = ["Move to Destination View", "Move to Destination View 2", "Move to Destination View 3"]
    
    @State var showAddPage: Bool = false
    
    var body: some View {
        
        NavigationStack {
            List{
                
                ForEach(0..<titles.count, id: \.self) { index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }

                } //foreach
                
//                // List 와 NavigationLink가 만나면 우측 화살표가 자동으로 생김
//                NavigationLink {
//                    Text("This is Destination")
//                } label: {
//                    Text("Move to Destination View")
//                }
//                
//                NavigationLink {
//                    Text("This is Destination 2 ")
//                } label: {
//                    Text("Move to Destination View 2")
//                }
            }
            
//            Text("Content")
            .toolbar(content: {
                ToolbarItem {
                    Button(action: {
                        showAddPage = true
                    }, label: {
                        Text("Add Title")
                    })
                } // ToolbarItem
            }) //toolbar
            .sheet(isPresented: $showAddPage, content: {
                AddPage(addPagePresented: $showAddPage, titles: $titles, descriptions: $descriptions)
            })
                .navigationTitle("Navigation")
        }
        
        
        
    } //body
} //NavigationView

#Preview {
    NavigationView()
}
