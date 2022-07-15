//
//  MemoSwiftUIApp.swift
//  MemoSwiftUI
//
//  Created by 이다솜 on 2022/07/15.
//

import SwiftUI

@main
struct MemoSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
