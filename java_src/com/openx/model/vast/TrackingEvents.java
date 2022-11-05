package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class TrackingEvents extends VASTParserBase {
    public static final String VAST_TRACKING = "Tracking";
    public static final String VAST_TRACKINGEVENTS = "TrackingEvents";
    private static final long serialVersionUID = -4202862891897911590L;
    public ArrayList<Tracking> trackingEvents = new ArrayList<>();

    public TrackingEvents(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "TrackingEvents");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_TRACKING)) {
                    xmlPullParser.require(2, null, VAST_TRACKING);
                    this.trackingEvents.add(new Tracking(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_TRACKING);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
