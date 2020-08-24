//
//  MenuView.swift
//  SwiftUICaloryDataApp
//
//  Created by ramil on 24.08.2020.
//

import SwiftUI

struct MenuView: View {
    var width: CGFloat
    
    @Binding var menu: Int
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Rectangle()
                    .frame(width: width - 60, height: 90)
                    .foregroundColor(.clear)
                
                RoundedRectangle(cornerRadius: 65)
                    .frame(width: width - 60, height: 65)
                    .foregroundColor(.gray)
                    .opacity(0.1)
                
                HStack {
                    Spacer()
                    Button(action: {
                        menu = 1
                    }, label: {
                        Menu(imageName: "archivebox.circle")
                    })
                    Spacer()
                    Button(action: {
                        menu = 2
                    }, label: {
                        Menu(imageName: "plus.circle")
                            .scaleEffect(1.3)
                    })
                    Spacer()
                    Button(action: {
                        menu = 3
                    }, label: {
                        Menu(imageName: "calendar.badge.clock")
                    })
                    Spacer()
                }.offset(y: -12)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(width: 375, menu: .constant(2))
    }
}
