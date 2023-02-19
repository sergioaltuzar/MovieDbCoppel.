//
//  UpcomingMoviesWidget.swift
//  MovieDBCoppel
//
//  Created by Sergio on 2/16/23.
//  Copyright © 2023 Sergio. All rights reserved.
//

import SwiftUI
import WidgetKit

struct UpcomingMoviesWidgetEntryView: View {

    private let gradientColors = [.white,
                                  Color("UpcomingMoviesGradientColor"),
                                  Color("UpcomingMoviesGradientColor")]

    private let backgroundColor = Color("UpcomingMoviesBackgroundColor")

    var entry: Provider.Entry

    var body: some View {
        SmallWidgetView(title: Text("upcomingMoviesSmallWidgetTitle"),
                        iconName: "play",
                        gradientColors: gradientColors,
                        backgroundColor: backgroundColor)
            .widgetURL(AppExtension.url(for: .upcomingMovies))
    }

}

struct UpcomingMoviesWidget: Widget {

    private let kind: String = "UpcomingMoviesWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            UpcomingMoviesWidgetEntryView(entry: entry)
        }
        .configurationDisplayName(Text("upcomingMoviesTitle"))
        .description(Text("upcomingMoviesWidgetDescription"))
        .supportedFamilies([.systemSmall])
    }

}
