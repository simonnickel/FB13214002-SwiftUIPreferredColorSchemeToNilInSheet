//
//  ContentView.swift
//  SwiftUIPreferredColorSchemeToNilInSheet
//
//  Created by Simon Nickel on 29.09.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var showSheet: Bool = false
	@State private var isDark: Bool = false
	
	var body: some View {
		VStack {
			Button {
				showSheet.toggle()
			} label: {
				Text("Show Sheet")
			}
		}
		.sheet(isPresented: $showSheet) {
			
			Toggle(isOn: $isDark, label: {
				Text("Is Dark")
			})
			.preferredColorScheme(isDark ? .dark : nil) // Does not work!
			
		}
		.preferredColorScheme(isDark ? .dark : nil) // Does work!
	}
	
}

#Preview {
    ContentView()
}
