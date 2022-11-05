package com.openx.model.vast;

import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Icon extends VASTParserBase {
    private static final String VAST_HTMLRESOURCE = "HTMLResource";
    private static final String VAST_ICON = "Icon";
    private static final String VAST_ICONCLICKS = "IconClicks";
    private static final String VAST_ICONVIEWTRACKING = "IconViewTracking";
    private static final String VAST_IFRAMERESOURCE = "IFrameResource";
    private static final String VAST_STATICRESOURCE = "StaticResource";
    private static final long serialVersionUID = -4631334296442009949L;
    public String apiFramework;
    public String duration;
    public String height;
    public HTMLResource htmlResource;
    public IFrameResource iFrameResource;
    public IconClicks iconClicks;
    public IconViewTracking iconViewTracking;
    public String offset;
    public String program;
    public StaticResource staticResource;
    public String width;
    public String xPosition;
    public String yPosition;

    public Icon(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Icon");
        this.program = xmlPullParser.getAttributeValue(null, "program");
        this.width = xmlPullParser.getAttributeValue(null, "width");
        this.height = xmlPullParser.getAttributeValue(null, "height");
        this.xPosition = xmlPullParser.getAttributeValue(null, "xPosition");
        this.yPosition = xmlPullParser.getAttributeValue(null, "yPosition");
        this.duration = xmlPullParser.getAttributeValue(null, VastIconXmlManager.DURATION);
        this.offset = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
        this.apiFramework = xmlPullParser.getAttributeValue(null, "apiFramework");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("StaticResource")) {
                    xmlPullParser.require(2, null, "StaticResource");
                    this.staticResource = new StaticResource(xmlPullParser);
                    xmlPullParser.require(3, null, "StaticResource");
                } else if (name != null && name.equals("IFrameResource")) {
                    xmlPullParser.require(2, null, "IFrameResource");
                    this.iFrameResource = new IFrameResource(xmlPullParser);
                    xmlPullParser.require(3, null, "IFrameResource");
                } else if (name != null && name.equals("HTMLResource")) {
                    xmlPullParser.require(2, null, "HTMLResource");
                    this.htmlResource = new HTMLResource(xmlPullParser);
                    xmlPullParser.require(3, null, "HTMLResource");
                } else if (name != null && name.equals("IconClicks")) {
                    xmlPullParser.require(2, null, "IconClicks");
                    this.iconClicks = new IconClicks(xmlPullParser);
                    xmlPullParser.require(3, null, "IconClicks");
                } else if (name != null && name.equals("IconViewTracking")) {
                    xmlPullParser.require(2, null, "IconViewTracking");
                    this.iconViewTracking = new IconViewTracking(xmlPullParser);
                    xmlPullParser.require(3, null, "IconViewTracking");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
