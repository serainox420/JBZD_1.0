package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Extensions extends VASTParserBase {
    public static final String VAST_EXTENSION = "Extension";
    public static final String VAST_EXTENSIONS = "Extensions";
    private static final long serialVersionUID = -3076427603330436305L;
    public ArrayList<Extension> extensions = new ArrayList<>();

    public Extensions(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_EXTENSIONS);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_EXTENSION)) {
                    xmlPullParser.require(2, null, VAST_EXTENSION);
                    this.extensions.add(new Extension(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_EXTENSION);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
