//
//  ContentView.swift
//  PlayingWithSwiftUI_Navigation
//
//  Created by Ricky Suprayudi on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var navPath = NavigationPath()
    var body: some View {
        VStack {
            NavigationStack(path: $navPath) {
                NavigationLink("Go To Page 1", value: "page1")
                    .navigationDestination(for: String.self) { destValue in
                        if destValue == "page1" {
                            Page1(navPath: $navPath)
                        } else if destValue == "page2" {
                            Page2(navPath: $navPath)
                        }
                    }
                    .navigationTitle("Main Page")
            }
        }
    }
}

#Preview {
    ContentView()
}
