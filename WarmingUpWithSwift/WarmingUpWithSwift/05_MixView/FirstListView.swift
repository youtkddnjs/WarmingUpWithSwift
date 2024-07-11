//
//  FirstListView.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/11/24.
//

import SwiftUI

struct FirstListView: View {
    var body: some View {
        NavigationStack{
            List {
                
                NavigationLink{
                    Text("This is Main Sub Page 01")
                } label:{
                    Text("Main Sub Page 01")
                }
                
                NavigationLink{
                    Text("This is Main Sub Page 02")
                } label:{
                    Text("Main Sub Page 02")
                }
                
                NavigationLink{
                    Text("This is Main Sub Page 03")
                } label:{
                    Text("Main Sub Page 03")
                }
            }
        }
        
    }
}

#Preview {
    FirstListView()
}
