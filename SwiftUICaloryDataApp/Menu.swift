//
//  Menu.swift
//  SwiftUICaloryDataApp
//
//  Created by ramil on 24.08.2020.
//

import SwiftUI

struct Menu: View {
    let imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.gray)
    }
}
