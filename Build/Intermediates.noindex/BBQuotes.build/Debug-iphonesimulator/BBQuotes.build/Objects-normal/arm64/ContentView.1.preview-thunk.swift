import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/ribragimov/Downloads/BBQuotes/BBQuotes/ContentView.swift", line: 1)
//
//  ContentView.swift
//  BBQuotes
//
//  Created by Ramill Ibragimov on 7/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.bbName, systemImage: __designTimeString("#9811_0", fallback: "tortoise")) {
                FetchView(show: Constants.bbName)
            }

            Tab(Constants.bcsName, systemImage: __designTimeString("#9811_1", fallback: "briefcase")) {
                FetchView(show: Constants.bcsName)
            }

            Tab(Constants.ecName, systemImage: __designTimeString("#9811_2", fallback: "car")) {
                FetchView(show: Constants.ecName)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
