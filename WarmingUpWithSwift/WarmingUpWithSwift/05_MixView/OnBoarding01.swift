//
//  OnBoarding01.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/11/24.
//

import SwiftUI

struct OnBoarding01: View {
    
    let onboardingTitle: String
    
    var body: some View {
        ZStack{
            Color.blue
            VStack{
                Text("Onboarding 01")
                Text(onboardingTitle)
            }
        }
    }
}

#Preview {
    OnBoarding01(onboardingTitle: "Test Title")
}
