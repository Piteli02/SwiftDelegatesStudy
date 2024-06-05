//
//  FileModel.swift
//  SwiftDelegatesStudy
//
//  Created by Caio Gomes Piteli on 05/06/24.
//

import Foundation

struct File: Downloadable {
    var delegate: DownloadManager?
    var fileName: String
    var fileSize: Int
}
