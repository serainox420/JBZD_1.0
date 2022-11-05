package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class MediaFiles extends VASTParserBase {
    public static final String VAST_MEDIAFILE = "MediaFile";
    public static final String VAST_MEDIAFILES = "MediaFiles";
    private static final long serialVersionUID = 4279009913920535160L;
    public ArrayList<MediaFile> mediaFiles = new ArrayList<>();

    public MediaFiles(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_MEDIAFILES);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_MEDIAFILE)) {
                    xmlPullParser.require(2, null, VAST_MEDIAFILE);
                    this.mediaFiles.add(new MediaFile(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_MEDIAFILE);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
