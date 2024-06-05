//
//  DownloadHandler.swift
//  SwiftDelegatesStudy
//
//  Created by Caio Gomes Piteli on 05/06/24.
//

import Foundation

// Implemented delegate
class DownloadConsole: DownloadDelegate {
    func startDownload(fileName: String) {
        print("Delegate: Download started for \(fileName)")
    }
    
    func downloadProgress(fileName: String, progress: Double) {
        print("Delegate: Download progress for \(fileName): \(progress * 100)%")
    }
    
    func downloadCompleted(fileName: String) {
        print("Delegate: Download completed for \(fileName)")
    }
}
