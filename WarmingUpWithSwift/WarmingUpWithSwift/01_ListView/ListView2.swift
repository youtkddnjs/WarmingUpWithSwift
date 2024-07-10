//
//  ListView2.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/9/24.
//

import SwiftUI


struct SettingContent: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
}

struct ListView2: View {
    
    let data: [[SettingContent]] = [
        [SettingContent(title: "스크린타임", systemName: "hourglass", backgroundColor: .blue)],
        [SettingContent(title: "일반", systemName: "gear", backgroundColor: .yellow),
        SettingContent(title: "손쉬운 사용", systemName: "hand.raised.fill", backgroundColor: .red),
        SettingContent(title: "개인정보 보호 및 보안", systemName: "person.crop.circle", backgroundColor: .gray),],
        [SettingContent(title: "암호", systemName: "key.fill", backgroundColor: .purple)]
    ]
    
    var body: some View {
        
        NavigationStack{
            List{
                
                ForEach(data, id: \.self){ section in
                    Section{
                        ForEach(section, id: \.self){ item in
                            Label{
                                Text(item.title)
                            }icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.all, 7)
                                    .background(item.backgroundColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(6)
                            }
                        } // ForEach(section, id: \.self)
                    } //Section
                } //ForEach(data, id: \.self)
                
                
//                Section{
//                
//                    // 축약형
//                    //Label("스크린타임",systemImage: "hourglass")
//                    
//                    Label{
//                        Text("스크린타임")
//                    }icon: {
//                        Image(systemName:"hourglass")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.green)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                } //Section
//                
//                Section{
//                    Label{
//                        Text("일반")
//                    }icon: {
//                        Image(systemName:"gear")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.green)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                    
//                    Label{
//                        Text("손쉬운 사용")
//                    }icon: {
//                        Image(systemName:"hand.raised.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.green)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                    
//                    Label{
//                        Text("개인정보 보호 및 보안")
//                    }icon: {
//                        Image(systemName:"person.crop.circle")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.green)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                } //Section
//                
//                Section{
//                    Label{
//                        Text("암호")
//                    }icon: {
//                        Image(systemName:"key.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20, height: 20)
//                            .padding(.all, 7)
//                            .background(.green)
//                            .foregroundColor(.white)
//                            .cornerRadius(6)
//                    }
//                } //Section
            
                
            }//List
            .navigationTitle("설정")
        }//NavigationStack
        
    } //body
} //ListView2

#Preview {
    ListView2()
}
