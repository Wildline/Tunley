//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    // Detail properties
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int

 
}



// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Track{
    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "The Weekend",
                      artistName: "SZA",
                      artworkUrl100: URL(string:"https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/9c/ba/98/9cba98ea-e091-1058-fb14-4631085f8066/886446548432.jpg/100x100bb.jpg")!,
                     collectionName:"Ctrl",
                     primaryGenreName:"R&B/Soul",
              releaseDate: Date(),
                     trackTimeMillis: 272194),
        
        
        Track(trackName: "Love Galore (feat. Travis Scott)",
                      artistName: "SZA",
                      artworkUrl100: URL(string:"https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/9c/ba/98/9cba98ea-e091-1058-fb14-4631085f8066/886446548432.jpg/100x100bb.jpg")!,
                      collectionName: "Ctrl",
                      primaryGenreName: "R&B/Soul",
                      releaseDate: Date(),
                      trackTimeMillis: 275085),
        Track(trackName: "The Other Side",
                      artistName: "SZA & Justin Timberlake",
                      artworkUrl100: URL(string:"https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/c2/51/84/c2518439-d810-7f1f-c9ff-396c9fa7d266/886448132882.jpg/100x100bb.jpg")!,
                     collectionName: "TROLLS World Tour (Original Motion Picture Soundtrack)",
                     primaryGenreName: "Soundtrack",
              releaseDate: Date( ),
                     trackTimeMillis: 188188),
        
        
    ]
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
