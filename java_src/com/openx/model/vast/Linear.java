package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Linear extends VASTParserBase {
    private static final String VAST_ADPARAMETERS = "AdParameters";
    private static final String VAST_DURATION = "Duration";
    private static final String VAST_ICONS = "Icons";
    private static final String VAST_LINEAR = "Linear";
    private static final String VAST_MEDIAFILES = "MediaFiles";
    private static final String VAST_TRACKINGEVENTS = "TrackingEvents";
    private static final String VAST_VIDEOCLICKS = "VideoClicks";
    private static final long serialVersionUID = 2791941957835843000L;
    public AdParameters adParameters;
    public Duration duration;
    public ArrayList<Icon> icons;
    public ArrayList<MediaFile> mediaFiles;
    public String skipoffset;
    public ArrayList<Tracking> trackingEvents;
    public VideoClicks videoClicks;

    public Linear(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_LINEAR);
        this.skipoffset = xmlPullParser.getAttributeValue(null, "skipoffset");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_ADPARAMETERS)) {
                    xmlPullParser.require(2, null, VAST_ADPARAMETERS);
                    this.adParameters = new AdParameters(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ADPARAMETERS);
                } else if (name != null && name.equals(VAST_DURATION)) {
                    xmlPullParser.require(2, null, VAST_DURATION);
                    this.duration = new Duration(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_DURATION);
                } else if (name != null && name.equals("MediaFiles")) {
                    xmlPullParser.require(2, null, "MediaFiles");
                    this.mediaFiles = new MediaFiles(xmlPullParser).mediaFiles;
                    xmlPullParser.require(3, null, "MediaFiles");
                } else if (name != null && name.equals("TrackingEvents")) {
                    xmlPullParser.require(2, null, "TrackingEvents");
                    this.trackingEvents = new TrackingEvents(xmlPullParser).trackingEvents;
                    xmlPullParser.require(3, null, "TrackingEvents");
                } else if (name != null && name.equals(VAST_VIDEOCLICKS)) {
                    xmlPullParser.require(2, null, VAST_VIDEOCLICKS);
                    this.videoClicks = new VideoClicks(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_VIDEOCLICKS);
                } else if (name != null && name.equals("Icons")) {
                    xmlPullParser.require(2, null, "Icons");
                    this.icons = new Icons(xmlPullParser).icons;
                    xmlPullParser.require(3, null, "Icons");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
