import UIKit

// we have a list of tracks
let tracks = ["a", "b", "c", "d", "e", "f", "j", "h"]

let selectedTrack = "d"



// first way
var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
    if track == selectedTrack || playlist.count > 0 {
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}

priorTracks
playlist

playlist + priorTracks



// other way

let index = tracks.firstIndex(where: {return $0 == selectedTrack})
let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)

let arr = suffixArray + prefixArray
