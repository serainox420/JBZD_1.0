package com.openx.model.vast;

import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Pricing extends VASTParserBase {
    private static final long serialVersionUID = 1815419450753986803L;
    public String currency;
    public String model;
    public String value;

    public Pricing(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.model = xmlPullParser.getAttributeValue(null, PubMaticConstants.MODEL_PARAM);
        this.currency = xmlPullParser.getAttributeValue(null, "currency");
        this.value = readText(xmlPullParser);
    }
}
