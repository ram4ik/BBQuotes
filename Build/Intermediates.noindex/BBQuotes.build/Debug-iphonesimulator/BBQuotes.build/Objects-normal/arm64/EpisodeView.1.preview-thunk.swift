import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/ribragimov/Downloads/BBQuotes/BBQuotes/EpisodeView.swift", line: 1)
//
//  EpisodeView.swift
//  BBQuotes
//
//  Created by Ramill Ibragimov on 7/8/25.
//

import SwiftUI

struct EpisodeView: View {
    let episode: Episode

    var body: some View {
        VStack(alignment: .leading) {
            Text(episode.title)
                .font(.largeTitle)

            Text(episode.seasonEpisode)
                .font(.title2)

            AsyncImage(url: episode.image) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(.rect(cornerRadius: __designTimeInteger("#70317_0", fallback: 15)))
            } placeholder: {
                ProgressView()
            }

            Text(episode.synopsis)
                .font(.title3)
                .minimumScaleFactor(__designTimeFloat("#70317_1", fallback: 0.5))
                .padding(.bottom)

            Text("Written By: \(episode.writtenBy)")

            Text("Directed By: \(episode.directedBy)")

            Text("Aired: \(episode.airDate)")

        }
        .padding()
        .foregroundStyle(.white)
        .background(.black.opacity(__designTimeFloat("#70317_2", fallback: 0.6)))
        .clipShape(.rect(cornerRadius: __designTimeInteger("#70317_3", fallback: 25)))
        .padding(.horizontal)
    }
}

#Preview {
    EpisodeView(episode: ViewModel().episode)
}
