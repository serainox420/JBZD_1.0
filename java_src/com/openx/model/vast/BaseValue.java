package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class BaseValue extends VASTParserBase {
    private static final long serialVersionUID = -1019766885934891554L;
    public String value;

    public BaseValue(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.value = readText(xmlPullParser);
    }
}
