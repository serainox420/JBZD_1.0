package com.openx.model.vast;

import com.mopub.mobileads.VastResourceXmlManager;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class StaticResource extends VASTParserBase {
    private static final long serialVersionUID = -4119906383922777798L;
    public String creativeType;
    public String value;

    public StaticResource(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.creativeType = xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE);
        this.value = readText(xmlPullParser);
    }
}
