//
//  AboutNyaView.swift
//  Ksign
//
//  Created by Nagata Asami on 23/5/25.
//

import SwiftUI
import NimbleViews
import NimbleJSON
import NukeUI

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
				_credit(
					name: "Abbas Mousawi",
					photoUrl: URL(string: "https://f.top4top.io/p_3915l09s51.jpg")
				)
			}
		}
	}
}

// MARK: - Extension: view
extension AboutNyaView {
	@ViewBuilder
	private func _credit(
		name: String,
		photoUrl: URL?
	) -> some View {
		HStack(spacing: 12) {
			if let photoUrl {
				LazyImage(url: photoUrl) { state in
					if let image = state.image {
						image
							.appIconStyle(size: 46, isCircle: true)
					} else {
						Circle()
							.fill(Color(uiColor: .secondarySystemBackground))
							.frame(width: 46, height: 46)
					}
				}
			}

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