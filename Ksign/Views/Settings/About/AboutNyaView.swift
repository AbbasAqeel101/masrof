//
//  AboutNyaView.swift
//  Ksign
//
//  Created by Nagata Asami on 23/5/25.
//

import SwiftUI
import NimbleViews
import NimbleJSON

// MARK: - View
struct AboutNyaView: View {
	// MARK: Body
	var body: some View {
		NBList(.localized("About Ofuq")) {
			Section {
				VStack {
					Image("OfuqLogo")
						.appIconStyle(size: 72)

					Text("OFUQ")
						.font(.largeTitle)
						.bold()
						.foregroundStyle(.accent)

					HStack(spacing: 4) {
						Text("Version")
						Text(Bundle.main.version)
					}
					.font(.footnote)
					.foregroundStyle(.secondary)
				}
			}
			.frame(maxWidth: .infinity)
			.listRowBackground(EmptyView())

			NBSection(.localized("Developer")) {
				_credit(name: "Abbas Mousawi")
			}
		}
	}
}

// MARK: - Extension: view
extension AboutNyaView {
	@ViewBuilder
	private func _credit(name: String) -> some View {
		HStack(spacing: 12) {
			Image("DeveloperPhoto")
				.appIconStyle(size: 46, isCircle: true)

			VStack(alignment: .leading, spacing: 2) {
				Text(name)
					.font(.body)
					.bold()
				Text(verbatim: "Developer")
					.font(.footnote)
					.foregroundStyle(.secondary)
			}

			Spacer()
		}
		.padding(.vertical, 4)
	}
}
