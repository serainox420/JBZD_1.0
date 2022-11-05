package com.openx.model.vast;

import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class MediaFile extends VASTParserBase {
    private static final long serialVersionUID = 3960139800549173762L;
    public String apiFramework;
    public String bitrate;
    public String delivery;
    public String duration;
    public String height;
    public String id;
    public String maxBitrate;
    public String minBitrate;
    public String offset;
    public String type;
    public String value;
    public String width;
    public String xPosition;
    public String yPosition;

    public MediaFile(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.id = xmlPullParser.getAttributeValue(null, "id");
        this.delivery = xmlPullParser.getAttributeValue(null, "delivery");
        this.type = xmlPullParser.getAttributeValue(null, "type");
        this.bitrate = xmlPullParser.getAttributeValue(null, "bitrate");
        this.minBitrate = xmlPullParser.getAttributeValue(null, "minBitrate");
        this.maxBitrate = xmlPullParser.getAttributeValue(null, "maxBitrate");
        this.width = xmlPullParser.getAttributeValue(null, "width");
        this.height = xmlPullParser.getAttributeValue(null, "height");
        this.xPosition = xmlPullParser.getAttributeValue(null, "xPosition");
        this.yPosition = xmlPullParser.getAttributeValue(null, "yPosition");
        this.duration = xmlPullParser.getAttributeValue(null, VastIconXmlManager.DURATION);
        this.offset = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
        this.apiFramework = xmlPullParser.getAttributeValue(null, "apiFramework");
        this.value = readText(xmlPullParser);
    }
}
