//
//  SettingsRowView.swift
//  SettingsRowView
//
//  Created by Massa Antonio on 25/08/21.
//

import SwiftUI

struct SettingsRowView: View {
	var name: String
	var content: String? = nil
	var linkLabel: String? = nil
	var linkDestination: String? = nil

    var body: some View {
		VStack {
			Divider().padding(.vertical, 4)
			HStack {
				Text(name).foregroundColor(.gray)
				Spacer()
				if (content != nil) {
					Text(content!)
				} else if (linkLabel != nil && linkDestination != nil) {
					Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
					Image(systemName: "arrow.up.right.circle.fill").foregroundColor(.pink)
				} else {
					EmptyView()
				}
			}
		}
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			SettingsRowView(name: "Developer", content: "Antonio")
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
			SettingsRowView(name: "Website", linkLabel: "My GitHub", linkDestination: "github.com/antonioma93?tab=repositories")
				.preferredColorScheme(.dark)
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
		}
    }
}
