//
//  AdvantageCard.swift
//  untitled
//
//  Created by Artem on 07.05.2021.
//

import SwiftUI

struct AdvantageCard: View {
    var title: String
    var subTitle: String
    var timestamp: Date
    var removeAdvantage: (String) -> ()
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15.0)
            .fill(Color.white)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 3.5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 3)
            .overlay(
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(title)
                            .font(.title3)
                            .bold()
                            .accentColor(.black)
                        
                        Text(subTitle)
                            .font(.caption)
                            .accentColor(.gray)
                        
                        Spacer()
                        
                        Button(
                            action: {
                                print("Edit pressed!")
                            },
                            label: {
                                Text("Edit advantage")
                                    .font(.caption)
                                    .accentColor(.gray)
                            }
                        )
                    }
                    .frame(alignment: .leading)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text(timestamp, style: .date)
                            .font(.caption)
                            .accentColor(.black)
                            
                        Spacer()
                        
                        Button(
                            action: {
                                removeAdvantage(title)
                            },
                            label: {
                                Text("Remove advantage")
                                    .font(.caption)
                                    .accentColor(.gray)
                            }
                        )
                    }
                    .frame(width: 117)
                    
                }
                .padding(20)
            )
            .frame(width: 350, height: 130)
    }
}

