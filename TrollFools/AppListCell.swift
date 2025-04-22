//
//  AppListCell.swift
//  TrollFools
//
//  Created by 82Flex on 2024/10/30.
//

import CocoaLumberjackSwift
import SwiftUI

struct AppListCell: View {
    @EnvironmentObject var appList: AppListModel

    @StateObject var app: App

    // 移除所有与 isAdvertisement 相关的代码
    var body: some View {
        HStack(spacing: 12) {
            // ...原有代码...
            VStack(alignment: .leading, spacing: 2) {
                // ...原有代码...
                if #available(iOS 15, *) {
                    Text(highlightedId)
                        .font(.subheadline)
                        .lineLimit(1) // 移除 app.isAdvertisement ? 2 : 1
                } else {
                    Text(app.id)
                        .font(.subheadline)
                        .lineLimit(1) // 移除 app.isAdvertisement ? 2 : 1
                }
            }
            // ...移除广告标识判断...
        }
        .contextMenu {
            if !appList.isSelectorMode { // 移除 !app.isAdvertisement
                cellContextMenuWrapper
            }
        }
    }
}
