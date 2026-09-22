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
			NBSection(.localized("Credits")) {
				_credit(
					name: "Abbas Mousawi",
					desc: .localized("Developer"),
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
		name: String?,
		desc: String?,
		photoUrl: URL?
	) -> some View {
		FRIconCellView(
			title: name ?? "",
			subtitle: desc ?? "",
			iconUrl: photoUrl
		)
	}
}
