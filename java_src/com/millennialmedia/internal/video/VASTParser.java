package com.millennialmedia.internal.video;

import android.text.TextUtils;
import android.util.Xml;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.Utils;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastResourceXmlManager;
import com.openx.model.vast.CompanionAds;
import com.openx.model.vast.Creatives;
import com.openx.model.vast.Extensions;
import com.openx.model.vast.Impressions;
import com.openx.model.vast.MediaFiles;
import com.openx.model.vast.TrackingEvents;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class VASTParser {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4272a = VASTParser.class.getSimpleName();

    /* loaded from: classes3.dex */
    public static class InLineAd extends Ad {
    }

    /* loaded from: classes3.dex */
    public enum TrackableEvent {
        creativeView,
        start,
        firstQuartile,
        midpoint,
        thirdQuartile,
        complete,
        closeLinear,
        skip,
        progress
    }

    /* loaded from: classes3.dex */
    public static class Ad {
        public List<Creative> creatives;
        public String error;
        public String id;
        public List<String> impressions = new ArrayList();
        public MMExtension mmExtension;
        public MoatExtension moatExtension;
        public String title;

        Ad() {
        }

        public String toString() {
            return (((((("Ad:[id:" + this.id + ";") + "error:" + this.error + ";") + "impressions:" + this.impressions + ";") + "creatives:" + this.creatives + ";") + "mmExtension:" + this.mmExtension + ";") + "moatExtension:" + this.moatExtension + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class WrapperAd extends Ad {
        public String adTagURI;

        @Override // com.millennialmedia.internal.video.VASTParser.Ad
        public String toString() {
            return (("WrapperAd:[" + super.toString()) + "adTagURI:" + this.adTagURI + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class AdSystem {
        public String name;
        public String version;

        public String toString() {
            return (("AdSystem:[name:" + this.name + ";") + "version:" + this.version + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class Creative {
        public List<CompanionAd> companionAds;
        public String id;
        public LinearAd linearAd;
        public Integer sequence;

        Creative(String str, Integer num) {
            this.id = str;
            this.sequence = num;
        }

        public String toString() {
            return (((("Creative:[id:" + this.id + ";") + "sequence:" + this.sequence + ";") + "linearAd:" + this.linearAd + ";") + "companionAds:" + this.companionAds + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class LinearAd {
        public List<MediaFile> mediaFiles;
        public String skipOffset;
        public final Map<TrackableEvent, List<TrackingEvent>> trackingEvents = new HashMap();
        public VideoClicks videoClicks;

        LinearAd(String str) {
            this.skipOffset = str;
        }

        public String toString() {
            return (((("LinearAd:[skipOffset:" + this.skipOffset + ";") + "mediaFiles:" + this.mediaFiles + ";") + "trackingEvents:" + this.trackingEvents + ";") + "videoClicks:" + this.videoClicks + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class MediaFile {
        public String apiFramework;
        public int bitrate;
        public String contentType;
        public String delivery;
        public int height;
        public boolean maintainAspectRatio;
        public String url;
        public int width;

        MediaFile(String str, String str2, String str3, String str4, int i, int i2, int i3, boolean z) {
            this.url = str;
            this.contentType = str2;
            this.delivery = str3;
            this.apiFramework = str4;
            this.width = i;
            this.height = i2;
            this.bitrate = i3;
            this.maintainAspectRatio = z;
        }

        public String toString() {
            return (((((((("MediaFile:[url:" + this.url + ";") + "contentType:" + this.contentType + ";") + "delivery:" + this.delivery + ";") + "apiFramework:" + this.apiFramework + ";") + "width:" + this.width + ";") + "height:" + this.height + ";") + "bitrate:" + this.bitrate + ";") + "maintainAspectRatio:" + this.maintainAspectRatio + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class TrackingEvent {

        /* renamed from: a  reason: collision with root package name */
        TrackableEvent f4274a;
        public String url;

        TrackingEvent(TrackableEvent trackableEvent, String str) {
            this.f4274a = trackableEvent;
            this.url = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TrackingEvent)) {
                return false;
            }
            TrackingEvent trackingEvent = (TrackingEvent) obj;
            return this.f4274a == trackingEvent.f4274a && this.url.equals(trackingEvent.url);
        }

        public int hashCode() {
            return (this.url.hashCode() * 31) + this.f4274a.hashCode();
        }

        public String toString() {
            return (("TrackingEvent:[event:" + this.f4274a + ";") + "url:" + this.url + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class ProgressEvent extends TrackingEvent {
        public String offset;

        ProgressEvent(String str, String str2) {
            super(TrackableEvent.progress, str);
            this.offset = str2;
        }

        @Override // com.millennialmedia.internal.video.VASTParser.TrackingEvent
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProgressEvent) && super.equals(obj) && this.offset.equals(((ProgressEvent) obj).offset);
        }

        @Override // com.millennialmedia.internal.video.VASTParser.TrackingEvent
        public int hashCode() {
            return (super.hashCode() * 31) + this.offset.hashCode();
        }

        @Override // com.millennialmedia.internal.video.VASTParser.TrackingEvent
        public String toString() {
            return (("ProgressEvent:[" + super.toString() + ";") + "offset:" + this.offset) + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class VideoClicks {
        public String clickThrough;
        public final List<String> clickTrackingUrls = new ArrayList();
        public final List<String> customClickUrls = new ArrayList();

        VideoClicks(String str, List<String> list, List<String> list2) {
            this.clickThrough = str;
            if (list != null) {
                this.clickTrackingUrls.addAll(list);
            }
            if (list2 != null) {
                this.customClickUrls.addAll(list2);
            }
        }

        public String toString() {
            return ((("VideoClicks:[clickThrough:" + this.clickThrough + ";") + "clickTrackingUrls:" + this.clickTrackingUrls + ";") + "customClickUrls:" + this.customClickUrls + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class CompanionAd {
        public Integer assetHeight;
        public Integer assetWidth;
        public String companionClickThrough;
        public List<String> companionClickTracking = new ArrayList();
        public Integer height;
        public boolean hideButtons;
        public WebResource htmlResource;
        public String id;
        public WebResource iframeResource;
        public StaticResource staticResource;
        public Map<TrackableEvent, List<TrackingEvent>> trackingEvents;
        public Integer width;

        CompanionAd(String str, Integer num, Integer num2, Integer num3, Integer num4, boolean z) {
            this.id = str;
            this.width = num;
            this.height = num2;
            this.assetWidth = num3;
            this.assetHeight = num4;
            this.hideButtons = z;
        }

        public String toString() {
            return (((((((((((("CompanionAd:[id:" + this.id + ";") + "width:" + this.width + ";") + "height:" + this.height + ";") + "assetWidth:" + this.assetWidth + ";") + "assetHeight:" + this.assetHeight + ";") + "hideButtons:" + this.hideButtons + ";") + "staticResource:" + this.staticResource + ";") + "htmlResource:" + this.htmlResource + ";") + "iframeResource:" + this.iframeResource + ";") + "companionClickThrough:" + this.companionClickThrough + ";") + "trackingEvents:" + this.trackingEvents + ";") + "companionClickTracking:" + this.companionClickTracking + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class StaticResource {
        public String backgroundColor;
        public String creativeType;
        public String uri;

        StaticResource(String str, String str2, String str3) {
            this.backgroundColor = str2;
            this.creativeType = str;
            this.uri = str3;
        }

        public String toString() {
            return ((("StaticResource:[backgroundColor:" + this.backgroundColor + ";") + "creativeType:" + this.creativeType + ";") + "uri:" + this.uri + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class WebResource {
        public String uri;

        WebResource(String str) {
            this.uri = str;
        }

        public String toString() {
            return "WebResource:[uri:" + this.uri + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class MoatExtension {
        public String level1;
        public String level2;
        public String level3;
        public String level4;
        public String slicer1;
        public String slicer2;

        public String toString() {
            return (((((("MoatExtension:[level1:" + this.level1 + ";") + "level2:" + this.level2 + ";") + "level3:" + this.level3 + ";") + "level4:" + this.level4 + ";") + "slicer1:" + this.slicer1 + ";") + "slicer2:" + this.slicer2 + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class MMExtension {
        public Background background;
        public List<Button> buttons;
        public Overlay overlay;

        MMExtension(Overlay overlay, Background background, List<Button> list) {
            this.overlay = overlay;
            this.background = background;
            this.buttons = list;
        }

        public String toString() {
            return ((("MMExtension:[overlay:" + this.overlay + ";") + "background:" + this.background + ";") + "buttons:" + this.buttons + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class Overlay {
        public boolean hideButtons;
        public String uri;

        Overlay(String str, boolean z) {
            this.uri = str;
            this.hideButtons = z;
        }

        public String toString() {
            return (("Overlay:[uri:" + this.uri + ";") + "hideButtons:" + this.hideButtons + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class Button {
        public ButtonClicks buttonClicks;
        public String name;
        public String offset;
        public int position;
        public StaticResource staticResource;

        public Button(String str, String str2, int i) {
            this.name = str;
            this.offset = str2;
            this.position = i;
        }

        public String toString() {
            return ((((("Button:[name:" + this.name + ";") + "offset:" + this.offset + ";") + "position:" + this.position + ";") + "staticResource:" + this.staticResource + ";") + "buttonClicks:" + this.buttonClicks + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class ButtonClicks {
        public String clickThrough;
        public List<String> clickTrackingUrls;

        public ButtonClicks(String str, List<String> list) {
            this.clickThrough = str;
            this.clickTrackingUrls = list;
        }

        public String toString() {
            return (("ButtonClicks:[clickThrough:" + this.clickThrough + ";") + "clickTrackingUrls:" + this.clickTrackingUrls + ";") + "]";
        }
    }

    /* loaded from: classes3.dex */
    public static class Background {
        public boolean hideButtons;
        public StaticResource staticResource;
        public WebResource webResource;

        Background(boolean z) {
            this.hideButtons = z;
        }

        public String toString() {
            return ((("Background:[hideButtons:" + this.hideButtons + ";") + "staticResource:" + this.staticResource + ";") + "webResource:" + this.webResource + ";") + "]";
        }
    }

    public static Ad parse(String str) throws XmlPullParserException, IOException {
        Ad ad = null;
        if (str == null) {
            MMLog.w(f4272a, "Ad content was null.");
        } else {
            XmlPullParser newPullParser = Xml.newPullParser();
            newPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            newPullParser.setInput(new StringReader(str));
            newPullParser.nextTag();
            if (newPullParser.getName().equals("VAST")) {
                String attributeValue = newPullParser.getAttributeValue("", "version");
                if (!Utils.isEmpty(attributeValue)) {
                    try {
                        if (Integer.parseInt("" + attributeValue.trim().charAt(0)) > 1) {
                            newPullParser.nextTag();
                            ad = a(newPullParser);
                        } else {
                            MMLog.e(f4272a, "Unsupported VAST version = " + attributeValue);
                        }
                    } catch (NumberFormatException e) {
                        MMLog.e(f4272a, "Invalid version format for VAST tag with version = " + attributeValue, e);
                    }
                } else {
                    MMLog.e(f4272a, "VAST version not provided.");
                }
            }
        }
        return ad;
    }

    private static Ad a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Ad ad = null;
        xmlPullParser.require(2, null, com.openx.model.vast.Ad.VAST_AD);
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        while (true) {
            if (xmlPullParser.next() == 3) {
                break;
            } else if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("InLine")) {
                    ad = c(xmlPullParser);
                    break;
                } else if (xmlPullParser.getName().equals("Wrapper")) {
                    ad = b(xmlPullParser);
                    break;
                } else {
                    q(xmlPullParser);
                }
            }
        }
        if (ad != null) {
            ad.id = attributeValue;
        }
        return ad;
    }

    private static WrapperAd b(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Wrapper");
        WrapperAd wrapperAd = new WrapperAd();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("VASTAdTagURI")) {
                    wrapperAd.adTagURI = r(xmlPullParser);
                } else if (xmlPullParser.getName().equals(Creatives.VAST_CREATIVES)) {
                    wrapperAd.creatives = i(xmlPullParser);
                } else if (xmlPullParser.getName().equals(Impressions.VAST_IMPRESSION)) {
                    String r = r(xmlPullParser);
                    if (!Utils.isEmpty(r)) {
                        wrapperAd.impressions.add(r);
                    }
                } else if (xmlPullParser.getName().equals(Extensions.VAST_EXTENSIONS)) {
                    a(xmlPullParser, wrapperAd);
                } else if (xmlPullParser.getName().equals("Error")) {
                    String r2 = r(xmlPullParser);
                    if (!Utils.isEmpty(r2)) {
                        wrapperAd.error = r2;
                    }
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return wrapperAd;
    }

    private static InLineAd c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "InLine");
        InLineAd inLineAd = new InLineAd();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(Creatives.VAST_CREATIVES)) {
                    inLineAd.creatives = i(xmlPullParser);
                } else if (xmlPullParser.getName().equals(Impressions.VAST_IMPRESSION)) {
                    String r = r(xmlPullParser);
                    if (!Utils.isEmpty(r)) {
                        inLineAd.impressions.add(r);
                    }
                } else if (xmlPullParser.getName().equals(Extensions.VAST_EXTENSIONS)) {
                    a(xmlPullParser, inLineAd);
                } else if (xmlPullParser.getName().equals("Error")) {
                    String r2 = r(xmlPullParser);
                    if (!Utils.isEmpty(r2)) {
                        inLineAd.error = r2;
                    }
                } else if (xmlPullParser.getName().equals("AdTitle")) {
                    String r3 = r(xmlPullParser);
                    if (!TextUtils.isEmpty(r3)) {
                        inLineAd.title = r3;
                    }
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return inLineAd;
    }

    private static void a(XmlPullParser xmlPullParser, Ad ad) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, Extensions.VAST_EXTENSIONS);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(Extensions.VAST_EXTENSION)) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "type");
                    if ("MMInteractiveVideo".equals(attributeValue)) {
                        ad.mmExtension = e(xmlPullParser);
                    } else if ("AOLMoat".equals(attributeValue)) {
                        ad.moatExtension = d(xmlPullParser);
                    } else {
                        q(xmlPullParser);
                    }
                } else {
                    q(xmlPullParser);
                }
            }
        }
    }

    private static MoatExtension d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        MoatExtension moatExtension = null;
        xmlPullParser.require(2, null, Extensions.VAST_EXTENSION);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("Moat")) {
                moatExtension = new MoatExtension();
                while (xmlPullParser.next() != 3) {
                    if (xmlPullParser.getEventType() == 2) {
                        if (xmlPullParser.getName().equals("Level1")) {
                            moatExtension.level1 = r(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("Level2")) {
                            moatExtension.level2 = r(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("Level3")) {
                            moatExtension.level3 = r(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("Level4")) {
                            moatExtension.level4 = r(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("Slicer1")) {
                            moatExtension.slicer1 = r(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("Slicer2")) {
                            moatExtension.slicer2 = r(xmlPullParser);
                        }
                    }
                }
            }
        }
        return moatExtension;
    }

    private static MMExtension e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, Extensions.VAST_EXTENSION);
        List<Button> list = null;
        Background background = null;
        Overlay overlay = null;
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Overlay")) {
                    overlay = new Overlay(r(xmlPullParser), a(xmlPullParser.getAttributeValue(null, "hideButtons"), true));
                } else if (xmlPullParser.getName().equals("Background")) {
                    background = f(xmlPullParser);
                } else if (xmlPullParser.getName().equals("Buttons")) {
                    list = g(xmlPullParser);
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return new MMExtension(overlay, background, list);
    }

    private static Background f(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Background");
        Background background = new Background(a(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    background.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), r(xmlPullParser));
                } else if (xmlPullParser.getName().equals("WebResource")) {
                    background.webResource = new WebResource(r(xmlPullParser));
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return background;
    }

    private static List<Button> g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Buttons");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Button")) {
                    arrayList.add(readButton(xmlPullParser));
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    public static Button readButton(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Button");
        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "position");
        int i = 0;
        if (!Utils.isEmpty(attributeValue3)) {
            try {
                i = Integer.parseInt(attributeValue3);
            } catch (NumberFormatException e) {
                MMLog.w(f4272a, "Invalid position: " + attributeValue3 + " for Button.");
            }
        }
        Button button = new Button(attributeValue, attributeValue2, i);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                    button.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), r(xmlPullParser));
                } else if (xmlPullParser.getName().equals("ButtonClicks")) {
                    button.buttonClicks = h(xmlPullParser);
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return button;
    }

    private static ButtonClicks h(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "ButtonClicks");
        ButtonClicks buttonClicks = new ButtonClicks(null, new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ButtonClickThrough")) {
                    buttonClicks.clickThrough = r(xmlPullParser);
                } else if (xmlPullParser.getName().equals("ButtonClickTracking")) {
                    buttonClicks.clickTrackingUrls.add(r(xmlPullParser));
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return buttonClicks;
    }

    private static List<Creative> i(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, Creatives.VAST_CREATIVES);
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Creative")) {
                    arrayList.add(j(xmlPullParser));
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static Creative j(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Integer num = null;
        xmlPullParser.require(2, null, "Creative");
        String attributeValue = xmlPullParser.getAttributeValue(null, "AdID");
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "sequence");
        if (!Utils.isEmpty(attributeValue2)) {
            try {
                num = Integer.decode(attributeValue2);
            } catch (NumberFormatException e) {
                MMLog.w(f4272a, "Invalid sequence number: " + attributeValue2 + " for Creative.");
            }
        }
        Creative creative = new Creative(attributeValue, num);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("Linear")) {
                    creative.linearAd = m(xmlPullParser);
                } else if (xmlPullParser.getName().equals(CompanionAds.VAST_COMPANIONADS)) {
                    creative.companionAds = k(xmlPullParser);
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return creative;
    }

    private static List<CompanionAd> k(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, CompanionAds.VAST_COMPANIONADS);
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(CompanionAds.VAST_COMPANION)) {
                    CompanionAd l = l(xmlPullParser);
                    if (l != null) {
                        arrayList.add(l);
                    }
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static CompanionAd l(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        NumberFormatException e;
        CompanionAd companionAd;
        xmlPullParser.require(2, null, CompanionAds.VAST_COMPANION);
        try {
            companionAd = new CompanionAd(xmlPullParser.getAttributeValue(null, "id"), a(xmlPullParser.getAttributeValue(null, "width")), a(xmlPullParser.getAttributeValue(null, "height")), a(xmlPullParser.getAttributeValue(null, "assetWidth")), a(xmlPullParser.getAttributeValue(null, "assetHeight")), a(xmlPullParser.getAttributeValue(null, "hideButtons"), false));
            while (xmlPullParser.next() != 3) {
                try {
                    if (xmlPullParser.getEventType() == 2) {
                        if (xmlPullParser.getName().equals(VastResourceXmlManager.STATIC_RESOURCE)) {
                            companionAd.staticResource = new StaticResource(xmlPullParser.getAttributeValue(null, VastResourceXmlManager.CREATIVE_TYPE), xmlPullParser.getAttributeValue(null, "backgroundColor"), r(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.HTML_RESOURCE)) {
                            companionAd.htmlResource = new WebResource(r(xmlPullParser));
                        } else if (xmlPullParser.getName().equals(VastResourceXmlManager.IFRAME_RESOURCE)) {
                            companionAd.iframeResource = new WebResource(r(xmlPullParser));
                        } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                            companionAd.trackingEvents = o(xmlPullParser);
                        } else if (xmlPullParser.getName().equals("CompanionClickTracking")) {
                            String r = r(xmlPullParser);
                            if (!Utils.isEmpty(r)) {
                                companionAd.companionClickTracking.add(r);
                            }
                        } else if (xmlPullParser.getName().equals("CompanionClickThrough")) {
                            String r2 = r(xmlPullParser);
                            if (!Utils.isEmpty(r2)) {
                                companionAd.companionClickThrough = r2;
                            }
                        } else {
                            q(xmlPullParser);
                        }
                    }
                } catch (NumberFormatException e2) {
                    e = e2;
                    MMLog.e(f4272a, "Syntax error in Companion element; skipping.", e);
                    return companionAd;
                }
            }
        } catch (NumberFormatException e3) {
            e = e3;
            companionAd = null;
        }
        return companionAd;
    }

    private static LinearAd m(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Linear");
        LinearAd linearAd = new LinearAd(xmlPullParser.getAttributeValue(null, "skipoffset"));
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(MediaFiles.VAST_MEDIAFILES)) {
                    linearAd.mediaFiles = p(xmlPullParser);
                } else if (xmlPullParser.getName().equals("TrackingEvents")) {
                    linearAd.trackingEvents.putAll(o(xmlPullParser));
                } else if (xmlPullParser.getName().equals("VideoClicks")) {
                    linearAd.videoClicks = n(xmlPullParser);
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return linearAd;
    }

    private static VideoClicks n(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "VideoClicks");
        VideoClicks videoClicks = new VideoClicks(null, new ArrayList(), new ArrayList());
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("ClickThrough")) {
                    videoClicks.clickThrough = r(xmlPullParser);
                } else if (xmlPullParser.getName().equals("ClickTracking")) {
                    videoClicks.clickTrackingUrls.add(r(xmlPullParser));
                } else if (xmlPullParser.getName().equals("CustomClick")) {
                    videoClicks.customClickUrls.add(r(xmlPullParser));
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return videoClicks;
    }

    private static Map<TrackableEvent, List<TrackingEvent>> o(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ProgressEvent trackingEvent;
        xmlPullParser.require(2, null, "TrackingEvents");
        HashMap hashMap = new HashMap();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(TrackingEvents.VAST_TRACKING)) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "event");
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
                    String r = r(xmlPullParser);
                    if (!Utils.isEmpty(attributeValue)) {
                        try {
                            TrackableEvent valueOf = TrackableEvent.valueOf(attributeValue.trim());
                            if (TrackableEvent.progress.equals(valueOf)) {
                                trackingEvent = new ProgressEvent(r, attributeValue2);
                            } else {
                                trackingEvent = new TrackingEvent(valueOf, r);
                            }
                            List list = (List) hashMap.get(valueOf);
                            if (list == null) {
                                list = new ArrayList();
                                hashMap.put(valueOf, list);
                            }
                            list.add(trackingEvent);
                        } catch (IllegalArgumentException e) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(f4272a, "Unsupported VAST event type: " + attributeValue);
                            }
                        }
                    }
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return hashMap;
    }

    private static List<MediaFile> p(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, MediaFiles.VAST_MEDIAFILES);
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals(MediaFiles.VAST_MEDIAFILE)) {
                    try {
                        arrayList.add(new MediaFile(r(xmlPullParser), xmlPullParser.getAttributeValue(null, "type"), xmlPullParser.getAttributeValue(null, "delivery"), xmlPullParser.getAttributeValue(null, "apiFramework"), a(xmlPullParser.getAttributeValue(null, "width"), 0), a(xmlPullParser.getAttributeValue(null, "height"), 0), a(xmlPullParser.getAttributeValue(null, "bitrate"), 0), Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "maintainAspectRatio"))));
                    } catch (NumberFormatException e) {
                        MMLog.e(f4272a, "Skipping malformed MediaFile element in VAST response.", e);
                    }
                } else {
                    q(xmlPullParser);
                }
            }
        }
        return arrayList;
    }

    private static void q(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i = 1;
        while (i != 0) {
            switch (xmlPullParser.next()) {
                case 2:
                    i++;
                    break;
                case 3:
                    i--;
                    break;
            }
        }
    }

    private static boolean a(String str, boolean z) {
        return str == null ? z : Boolean.parseBoolean(str);
    }

    private static Integer a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return Integer.valueOf(str);
    }

    private static int a(String str, int i) {
        return TextUtils.isEmpty(str) ? i : Integer.parseInt(str);
    }

    private static String r(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String nextText = xmlPullParser.nextText();
        return nextText != null ? nextText.trim() : nextText;
    }
}
