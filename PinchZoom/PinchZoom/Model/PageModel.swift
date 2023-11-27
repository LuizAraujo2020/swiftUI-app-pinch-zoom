//
//  PageModel.swift
//  PinchZoom
//
//  Created by Luiz Araujo on 26/11/23.
//

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
