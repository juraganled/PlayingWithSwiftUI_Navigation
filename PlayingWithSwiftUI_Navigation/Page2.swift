//
//  Page2.swift
//  PlayingWithSwiftUI_Navigation
//
//  Created by Ricky Suprayudi on 14/05/24.
//

import SwiftUI

struct Page2: View {
    @Binding var navPath: NavigationPath
    var body: some View {
        VStack {
            Text("Page2")
                .navigationTitle("Page 2")

                .padding()
            Button(action: {
//                if navPath.count > 0 {
//                        navPath.removeLast()
//                        print("path remove last")
//                    }
                navPath = NavigationPath()
                print("Go to home")
            }, label: {
                Text("Go to Home")
            })
        }
        
    }
}

#Preview {
    Page2(navPath: .constant(NavigationPath()))
}
