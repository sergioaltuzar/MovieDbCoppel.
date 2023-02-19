//
//  SearchMoviesWidget.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import SwiftUI
import WidgetKit

struct SearchMoviesWidgetEntryView: View {

    private let gradientColors = [.white,
                                  Color("SearchMoviesGradientColor"),
                                  Color("SearchMoviesGradientColor")]

    private let backgroundColor = Color("SearchMoviesBackgroundColor")

    var entry: Provider.Entry

    var body: some View {
        SmallWidgetView(title: Text("searchMoviesSmallWidgetTitle"),
                        iconName: "magnifyingglass",
                        gradientColors: gradientColors,
                        backgroundColor: backgroundColor)
            .widgetURL(AppExtension.url(for: .searchMovies))
    }

}

struct SearchMoviesWidget: Widget {

    let kind: String = "SearchMoviesWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            SearchMoviesWidgetEntryView(entry: entry)
        }
        .configurationDisplayName(Text("searchMoviesTitle"))
        .description(Text("searchMoviesWidgetDescription"))
        .supportedFamilies([.systemSmall])
    }

}
