package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class AdSystem extends VASTParserBase {
    private static final long serialVersionUID = 8300156537091126492L;
    public String value;
    public String version;

    public AdSystem(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.version = xmlPullParser.getAttributeValue(null, "version");
        this.value = readText(xmlPullParser);
    }
}
