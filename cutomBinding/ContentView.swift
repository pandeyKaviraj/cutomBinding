//
//  ContentView.swift
//  cutomBinding
//
//  Created by KAVIRAJ PANDEY on 02/10/20.
//  Copyright © 2020 KAVIRAJ PANDEY. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    
    var body: some View {
        //Custom Binding we do use of property observer
        let binding = Binding(get: {self.selection}, set: {self.selection = $0})
    return VStack {
        Picker("Select a number", selection: binding) {
            ForEach(0..<3) {
                Text("Item \($0)")
            }
        }.pickerStyle(SegmentedPickerStyle())
    }
    
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
