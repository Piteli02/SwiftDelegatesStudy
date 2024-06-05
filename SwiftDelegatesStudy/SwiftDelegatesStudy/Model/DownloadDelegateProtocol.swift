//
//  DownloadDelegateProtocol.swift
//  SwiftDelegatesStudy
//
//  Created by Caio Gomes Piteli on 05/06/24.
//

import Foundation

// Define the DownloadDelegate protocol
protocol DownloadDelegate: AnyObject {
    func startDownload(fileName: String)
    func downloadProgress(fileName: String, progress: Double)
    func downloadCompleted(fileName: String)
}
