package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class NonLinearAds extends VASTParserBase {
    public static final String VAST_NONLINEAERADS = "NonLinearAds";
    public static final String VAST_NONLINEAR = "NonLinear";
    public static final String VAST_TRACKINGEVENTS = "TrackingEvents";
    private static final long serialVersionUID = 6777965236322313694L;
    public ArrayList<NonLinear> nonLinearAds = new ArrayList<>();
    public ArrayList<Tracking> trackingEvents;

    public NonLinearAds(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_NONLINEAERADS);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_NONLINEAR)) {
                    xmlPullParser.require(2, null, VAST_NONLINEAR);
                    this.nonLinearAds.add(new NonLinear(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_NONLINEAR);
                } else if (name != null && name.equals("TrackingEvents")) {
                    xmlPullParser.require(2, null, "TrackingEvents");
                    this.trackingEvents = new TrackingEvents(xmlPullParser).trackingEvents;
                    xmlPullParser.require(3, null, "TrackingEvents");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
