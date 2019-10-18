//
//  RefreshButton.swift
//  wallabag
//
//  Created by Marinel Maxime on 18/10/2019.
//

import SwiftUI

struct RefreshButton: View {
    @EnvironmentObject var appSync: AppSync
    var body: some View {
        Button(
            action: {
                self.appSync.requestSync()
            },
            label: {
                Image(systemName: "arrow.counterclockwise")
            }
        ).disabled(appSync.inProgress)
    }
}

struct RefreshButton_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButton()
    }
}