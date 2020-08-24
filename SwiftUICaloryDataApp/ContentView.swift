//
//  ContentView.swift
//  SwiftUICaloryDataApp
//
//  Created by ramil on 24.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var menu: Int = 2
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                if menu == 1 {
                    ArchiveDataView()
                } else if menu == 2 {
                    TodayDataView()
                } else if menu == 3 {
                    CalendarDataView()
                }
                MenuView(width: geometry.size.width, menu: $menu)
                Spacer(minLength: 34)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
