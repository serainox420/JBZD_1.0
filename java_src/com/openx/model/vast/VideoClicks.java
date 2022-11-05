package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class VideoClicks extends VASTParserBase {
    private static final String VAST_CLICKTHROUGH = "ClickThrough";
    private static final String VAST_CLICKTRACKING = "ClickTracking";
    private static final String VAST_CUSTOMCLICK = "CustomClick";
    private static final String VAST_VIDEOCLICKS = "VideoClicks";
    private static final long serialVersionUID = -5748301156010837083L;
    public ClickThrough clickThrough;
    public ArrayList<ClickTracking> clickTrackings = new ArrayList<>();
    public ArrayList<CustomClick> customClicks = new ArrayList<>();

    public VideoClicks(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_VIDEOCLICKS);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_CLICKTHROUGH)) {
                    xmlPullParser.require(2, null, VAST_CLICKTHROUGH);
                    this.clickThrough = new ClickThrough(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_CLICKTHROUGH);
                } else if (name != null && name.equals(VAST_CLICKTRACKING)) {
                    xmlPullParser.require(2, null, VAST_CLICKTRACKING);
                    this.clickTrackings.add(new ClickTracking(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_CLICKTRACKING);
                } else if (name != null && name.equals(VAST_CUSTOMCLICK)) {
                    xmlPullParser.require(2, null, VAST_CUSTOMCLICK);
                    this.customClicks.add(new CustomClick(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_CUSTOMCLICK);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
