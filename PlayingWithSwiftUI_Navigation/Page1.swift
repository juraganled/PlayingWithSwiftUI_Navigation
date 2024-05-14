//
//  Page1.swift
//  PlayingWithSwiftUI_Navigation
//
//  Created by Ricky Suprayudi on 14/05/24.
//

import SwiftUI

struct Page1: View {
    @Binding var navPath: NavigationPath
    var body: some View {
        VStack {
            Text("This is Page1")
                .padding()
            NavigationLink("Go To Page 2", value: "page2")
                .navigationTitle("Page 1")

        }
    }
}

#Preview {
    Page1(navPath: .constant(NavigationPath()))
}
