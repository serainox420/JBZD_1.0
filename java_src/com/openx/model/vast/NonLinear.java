package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class NonLinear extends VASTParserBase {
    private static final String VAST_ADPARAMETERS = "AdParameters";
    private static final String VAST_HTMLRESOURCE = "HTMLResource";
    private static final String VAST_IFRAMERESOUCE = "IFrameResource";
    private static final String VAST_NONLINEAR = "NonLinear";
    private static final String VAST_NONLINEARCLICKTHROUGH = "NonLinearClickThrough";
    private static final String VAST_NONLINEARCLICKTRACKING = "NonLinearClickTracking";
    private static final String VAST_STATICRESOURCE = "StaticResource";
    private static final long serialVersionUID = 2115250490054679224L;
    public AdParameters adParameters;
    public String apiFramework;
    public String expandedHeight;
    public String expandedWidth;
    public String height;
    public HTMLResource htmlResource;
    public IFrameResource iFrameResource;
    public String id;
    public String maintainAspectRatio;
    public String minSuggestedDuration;
    public NonLinearClickThrough nonLinearClickThrough;
    public NonLinearClickTracking nonLinearClickTracking;
    public String scalable;
    public StaticResource staticResource;
    public String width;

    public NonLinear(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "NonLinear");
        this.id = xmlPullParser.getAttributeValue(null, "id");
        this.width = xmlPullParser.getAttributeValue(null, "width");
        this.height = xmlPullParser.getAttributeValue(null, "height");
        this.expandedWidth = xmlPullParser.getAttributeValue(null, "expandedWidth");
        this.expandedHeight = xmlPullParser.getAttributeValue(null, "expandedHeight");
        this.scalable = xmlPullParser.getAttributeValue(null, "scalable");
        this.maintainAspectRatio = xmlPullParser.getAttributeValue(null, "maintainAspectRatio");
        this.minSuggestedDuration = xmlPullParser.getAttributeValue(null, "minSuggestedDuration");
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
                } else if (name != null && name.equals(VAST_ADPARAMETERS)) {
                    xmlPullParser.require(2, null, VAST_ADPARAMETERS);
                    this.adParameters = new AdParameters(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ADPARAMETERS);
                } else if (name != null && name.equals(VAST_NONLINEARCLICKTHROUGH)) {
                    xmlPullParser.require(2, null, VAST_NONLINEARCLICKTHROUGH);
                    this.nonLinearClickThrough = new NonLinearClickThrough(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_NONLINEARCLICKTHROUGH);
                } else if (name != null && name.equals(VAST_NONLINEARCLICKTRACKING)) {
                    xmlPullParser.require(2, null, VAST_NONLINEARCLICKTRACKING);
                    this.nonLinearClickTracking = new NonLinearClickTracking(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_NONLINEARCLICKTRACKING);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
