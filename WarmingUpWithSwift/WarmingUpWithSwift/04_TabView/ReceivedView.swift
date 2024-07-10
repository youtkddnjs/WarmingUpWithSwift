//
//  ReceivedView.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/10/24.
//

import SwiftUI

struct ReceivedView: View {
    var body: some View {
        ZStack{
            // Color.red 아래 코드와 차이 확인 할 것.
            Color.gray.ignoresSafeArea()
            Text("ReceivedView")
        }        
    }
}

struct ReceivedView2: View {
    var body: some View {
        ZStack{
            // Color.red 아래 코드와 차이 확인 할 것.
            Color.yellow.ignoresSafeArea()
            
            VStack{
                Text("ReceivedView")
                
                Button(action: {
                    
                }, label: {
                    Text("Continue 1")
                })
            }
            
        }
    }
}

struct ReceivedView3: View {
    var body: some View {
        ZStack{
            // Color.red 아래 코드와 차이 확인 할 것.
            Color.purple.ignoresSafeArea()
            Text("ReceivedView")
        }
    }
}

#Preview {
    ReceivedView()
}
