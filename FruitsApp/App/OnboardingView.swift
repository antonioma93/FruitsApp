//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Massa Antonio on 25/08/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
		TabView {
			ForEach(0..<5) { item in
				FruitCardView()
			}
		}
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
