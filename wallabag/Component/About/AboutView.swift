//
//  AboutView.swift
//  wallabag
//
//  Created by Marinel Maxime on 09/10/2019.
//

import SwiftUI

struct AboutView: View {
    @BundleKey("CFBundleShortVersionString")
    var version: String

    @BundleKey("CFBundleVersion")
    var build: String

    var body: some View {
        VStack {
            Text("Wallabag").font(.largeTitle).fontWeight(.bold)
            Text(String(format: "Version %@ build %@".localized, arguments: [version, build]))
            Spacer()
            Text("Report issue:")
            Text("https://github.com/wallabag/ios-app/issues")
            Spacer()
            Text("Made by Maxime Marinel @bourvill")
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
