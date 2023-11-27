//
//  ControlImageView.swift
//  PinchZoom
//
//  Created by Luiz Araujo on 26/11/23.
//

import SwiftUI

struct ControlImageView: View {
    let icon: String

    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview {
    ControlImageView(icon: "minus.magnifyingglass")
}
