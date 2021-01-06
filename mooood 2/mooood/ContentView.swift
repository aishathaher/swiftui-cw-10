//
//  ContentView.swift
//  mooood
//
//  Created by عايشة on 04/01/2021.
//

import SwiftUI

struct ContentView: View {
    enum Target:Int, Identifiable  {
        var id: Int {
            rawValue
        }
        case happy, love, LOL
    }
    @State private var selectedTarget:Target? = nil
    
    var body: some View {

        HStack(spacing: 25) {

            Button("😊") {
                selectedTarget = .happy
            }
            
            Button("😍") {
                selectedTarget = .love
            }
            Button("😂") {
                selectedTarget = .LOL
            }
        }
        .sheet(item: $selectedTarget) { (selectedTarget) in
            
            VStack {
                switch selectedTarget {
                case .happy:
                    Text("I feel happy")
                case .love:
                    Text("I feel in love")
                case .LOL:
                    Text("I am happy")
                }
            }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
