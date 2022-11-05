package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class BaseId extends VASTParserBase {
    private static final long serialVersionUID = -6362108994716194889L;
    public String id;
    public String value;

    public BaseId(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.id = xmlPullParser.getAttributeValue(null, "id");
        this.value = readText(xmlPullParser);
    }
}
