//
//  ListView.swift
//  WarmingUpWithSwift
//
//  Created by sangwon on 7/9/24.
//

import SwiftUI

struct MatchingList: Hashable{
    let title: String
    let titleNum: String
}

struct ListView: View {
    
    @State var titleDataModel = [
        MatchingList(title: "ㄱ", titleNum: "ㄴ"),
        MatchingList(title: "ㄷ", titleNum: "ㄹ"),
        MatchingList(title: "ㅁ", titleNum: "ㅂ"),
        MatchingList(title: "ㅅ", titleNum: "ㅇ"),
        MatchingList(title: "ㅈ", titleNum: "ㅊ"),
        MatchingList(title: "ㅋ", titleNum: "ㅌ")
    ]
    
    @State var titleString: String = ""
    
    var body: some View {
        NavigationStack{
            
            VStack{
                HStack{
                    TextField("Insert String" , text: $titleString)
                    
                    Button(action: {
                        titleDataModel.append(MatchingList(title: titleString, titleNum: "new"))
                        titleString = ""
                    }, label: {
                        Text("Append")
                    })
                    
                }//HStack
                .padding()
                
                List {
                    ForEach(titleDataModel, id: \.self) {name in
                        HStack{
                            Text(name.title)
                            Spacer()
                            Image(systemName: "arrow.right")
                        }
                    }.onDelete{ indexSet in
                        titleDataModel.remove(atOffsets: indexSet)
                    }
                } //List
                .navigationTitle("Title")
            }//VStrack
        } //NavigationStack
    } //body
} //ListView

#Preview {
    ListView()
}
