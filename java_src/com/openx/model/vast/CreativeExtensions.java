package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class CreativeExtensions extends VASTParserBase {
    public static final String VAST_CREATIVEEXTENSION = "CreativeExtension";
    public static final String VAST_CREATIVEEXTENSIONS = "CreativeExtensions";
    private static final long serialVersionUID = -1969265166600350121L;
    public ArrayList<CreativeExtension> creativeExtenstions = new ArrayList<>();

    public CreativeExtensions(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_CREATIVEEXTENSIONS);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_CREATIVEEXTENSION)) {
                    xmlPullParser.require(2, null, VAST_CREATIVEEXTENSION);
                    this.creativeExtenstions.add(new CreativeExtension(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_CREATIVEEXTENSION);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
