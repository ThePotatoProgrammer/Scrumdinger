//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Joshua Baker on 5/4/22.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    // TODO: learn more about this
    static var trailingIcon: Self {
        Self()
    }
}
