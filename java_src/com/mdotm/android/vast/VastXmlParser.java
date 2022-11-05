package com.mdotm.android.vast;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.ads.AudienceNetworkActivity;
import com.mdotm.android.database.MdotMCacheHandler;
import com.mdotm.android.nativeads.MdotMNativeAd;
import com.mdotm.android.utils.MdotMLogger;
import com.millennialmedia.NativeAd;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastResourceXmlManager;
import com.mopub.mobileads.i;
import com.openx.model.vast.Ad;
import com.openx.model.vast.CompanionAds;
import com.openx.model.vast.Creatives;
import com.openx.model.vast.Impressions;
import com.openx.model.vast.MediaFiles;
import com.openx.model.vast.NonLinearAds;
import com.openx.model.vast.TrackingEvents;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
/* loaded from: classes3.dex */
public class VastXmlParser {
    private final String TAG = "SampleXMLParser";
    public final String TAG_AD = Ad.VAST_AD;
    public final String TAG_ID = "id";
    public final String TAG_AD_TITLE = "AdTitle";
    public final String TAG_DESCRIPTION = "Description";
    public final String TAG_IN_LINE = "InLine";
    public final String TAG_ERROR = "Error";
    public final String TAG_IMPRESSION = Impressions.VAST_IMPRESSION;
    public final String TAG_CREATIVES = Creatives.VAST_CREATIVES;
    public final String TAG_CREATIVE = "Creative";
    public final String TAG_LINEAR = "Linear";
    public final String TAG_COMPANIONADS = CompanionAds.VAST_COMPANIONADS;
    public final String TAG_NATIVE = MdotMCacheHandler.TABLE_NAME_AD_NATIVE;
    public final String TAG_TITLE = "Title";
    public final String TAG_BODY = NativeAd.COMPONENT_ID_BODY;
    public final String TAG_COVER_IMAGE = "CoverImage";
    public final String TAG_CTA = "CallToAction";
    public final String TAG_NATIVE_CLICKS = "NativeClicks";
    public final String TAG_NONLINEAR_ADS = NonLinearAds.VAST_NONLINEAERADS;
    public final String TAG_NONLINEAR = NonLinearAds.VAST_NONLINEAR;
    public final String TAG_STATIC_RESOURCE = VastResourceXmlManager.STATIC_RESOURCE;
    public final String TAG_COMPANION = CompanionAds.VAST_COMPANION;
    public final String TAG_COMPANION_CLICK_THROUGH = "CompanionClickThrough";
    public final String TAG_COMPANION_CLICK_TRACKING = "CompanionClickTracking";
    public final String TAG_HTML_RESOURCE = VastResourceXmlManager.HTML_RESOURCE;
    public final String TAG_HTML_CLICK_TRACKING = "ClickTracking";
    public final String TAG_DURATION = "Duration";
    public final String TAG_TRACKING_EVENTS = "TrackingEvents";
    public final String TAG_TRACKING = TrackingEvents.VAST_TRACKING;
    public final String TAG_EVENT = "event";
    public final String TAG_SKIP_OFFSET = "skipoffset";
    public final String TAG_COUNTER_OFFSET = "counteroffset";
    public final String TAG_COUNTER_STROKE = "counterstroke";
    public final String TAG_COUNTER_SIZE = "countersize";
    public final String TAG_ClOSE_BTN_SIZE = "closebutton";
    public final String TAG_CLOSE_BTN_LOC = "closelocation";
    public final String TAG_OVERLAY_ID = "id";
    public final String TAG_API_FRAMEWORK_ID = "apiFramework";
    public final String TAG_VIDEO_CLICKS = "VideoClicks";
    public final String TAG_CLICK_THROUGH = "ClickThrough";
    public final String TAG_CLICK_TRACKING = "ClickTracking";
    public final String TAG_MEDIA_FILES = MediaFiles.VAST_MEDIAFILES;
    public final String TAG_MEDIA_FILE = MediaFiles.VAST_MEDIAFILE;
    public final String TAG_ICONS = "Icons";
    public final String TAG_ICON = i.ICON;
    public final String TAG_ICON_CLICK = VastIconXmlManager.ICON_CLICKS;
    public final String TAG_ICON_CLICK_TRACKING = VastIconXmlManager.ICON_CLICK_TRACKING;
    public final String TAG_ICON_CLICK_THROUGH = VastIconXmlManager.ICON_CLICK_THROUGH;
    public final String TAG_ICON_VIEW_TRACKING = VastIconXmlManager.ICON_VIEW_TRACKING;
    public final String TAG_ICON_STATIC_RESOURCE = VastResourceXmlManager.STATIC_RESOURCE;
    public final String TAG_TYPE = "type";
    public final String TAG_WIDTH = "width";
    public final String TAG_HEIGHT = "height";
    public final String TAG_PROGRAM = "program";
    public final String TAG_ICON_DURATION = VastIconXmlManager.DURATION;
    public final String TAG_OFFSET = VastIconXmlManager.OFFSET;
    public final String TAG_XPOS = "xPosition";
    public final String TAG_YPOS = "yPosition";
    public final String TAG_VALUE_VIDEO_MP4 = "video/mp4";
    public final String TAG_VALUE_VIDEO_MPEG = "video/mpeg";
    public final String TAG_DELIVERY = "delivery";
    public final String EVENT_START = SASNativeVideoAdElement.TRACKING_EVENT_NAME_START;
    public final String EVENT_CREATIVE_VIEW = SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW;
    public final String EVENT_FIRST_QUARTILE = SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE;
    public final String EVENT_MID_POINT = SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT;
    public final String EVENT_THIRD_QUARTILE = SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE;
    public final String EVENT_MUTE = SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE;
    public final String EVENT_UNMUTE = SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE;
    public final String EVENT_PAUSE = SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE;
    public final String EVENT_RESUME = SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME;
    public final String EVENT_SKIP = SASNativeVideoAdElement.TRACKING_EVENT_NAME_SKIP;
    public final String EVENT_COMPLETE = SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE;
    public final String MEDIA_DELIVERY_TYPE_PROGRESSIVE = "progressive";
    public final String MEDIA_DELIVERY_TYPE_STREAM = "stream";
    private boolean isLinear = false;
    private ArrayList<MdotMNativeAd> mdotMNativeAd = new ArrayList<>();

    public VastAd parseResponse(String str) {
        MdotMLogger.d(this, "The response is :" + str);
        VastAd vastAd = new VastAd();
        if (str == null || str.length() == 0) {
            MdotMLogger.d(this, "The response is : null");
            vastAd.setStatus(0);
        } else {
            vastAd.setStatus(1);
            try {
                DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                newInstance.setCoalescing(true);
                Document parse = newInstance.newDocumentBuilder().parse(new InputSource(new ByteArrayInputStream(str.getBytes(AudienceNetworkActivity.WEBVIEW_ENCODING))));
                parse.getDocumentElement().normalize();
                NodeList elementsByTagName = parse.getElementsByTagName(Ad.VAST_AD);
                if (elementsByTagName != null && elementsByTagName.getLength() > 0) {
                    for (int i = 0; i < elementsByTagName.getLength(); i++) {
                        NodeList childNodes = elementsByTagName.item(i).getChildNodes();
                        if (childNodes != null && childNodes.getLength() > 0) {
                            for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
                                Node item = childNodes.item(i2);
                                if ("InLine".equalsIgnoreCase(item.getNodeName())) {
                                    parseNodeChildren(vastAd, item);
                                }
                            }
                        }
                    }
                }
            } catch (IOException e) {
                vastAd.setStatus(0);
                e.printStackTrace();
            } catch (ParserConfigurationException e2) {
                vastAd.setStatus(0);
                e2.printStackTrace();
            } catch (SAXException e3) {
                vastAd.setStatus(0);
                e3.printStackTrace();
            } catch (Exception e4) {
                vastAd.setStatus(0);
                e4.printStackTrace();
            }
        }
        return vastAd;
    }

    private void parseNodeChildren(VastAd vastAd, Node node) {
        InputStream inputStream;
        Node namedItem;
        InputStream inputStream2;
        vastAd.liniearAndCompanion = false;
        NodeList childNodes = node.getChildNodes();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < childNodes.getLength()) {
                Node item = childNodes.item(i2);
                if ("AdTitle".equalsIgnoreCase(item.getNodeName())) {
                    vastAd.adTitle = item.getFirstChild().getNodeValue();
                    MdotMLogger.d("SampleXMLParser", "ad title = " + vastAd.adTitle);
                } else if ("Description".equalsIgnoreCase(item.getNodeName())) {
                    if (item.getFirstChild() != null) {
                        vastAd.description = item.getFirstChild().getNodeValue();
                    }
                    MdotMLogger.d("SampleXMLParser", "description = " + vastAd.description);
                } else if ("Error".equalsIgnoreCase(item.getNodeName())) {
                    if (item.getFirstChild() instanceof CharacterData) {
                        String trim = ((CharacterData) item.getFirstChild()).getData().trim();
                        vastAd.error.add(trim);
                        MdotMLogger.d("SampleXMLParser", "error = " + trim);
                    }
                } else if (Impressions.VAST_IMPRESSION.equalsIgnoreCase(item.getNodeName())) {
                    if (item.getFirstChild() instanceof CharacterData) {
                        String trim2 = ((CharacterData) item.getFirstChild()).getData().trim();
                        vastAd.impression.add(trim2);
                        MdotMLogger.d("SampleXMLParser", "impression = " + trim2);
                    }
                } else if (Creatives.VAST_CREATIVES.equalsIgnoreCase(item.getNodeName())) {
                    NodeList childNodes2 = item.getChildNodes();
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (i4 < childNodes2.getLength()) {
                            Node item2 = childNodes2.item(i4);
                            if ("Creative".equalsIgnoreCase(item2.getNodeName())) {
                                NodeList childNodes3 = item2.getChildNodes();
                                int i5 = 0;
                                while (true) {
                                    int i6 = i5;
                                    if (i6 >= childNodes3.getLength()) {
                                        break;
                                    }
                                    Node item3 = childNodes3.item(i6);
                                    MdotMLogger.d("SampleXMLParser", "inside creatives name" + item3.getNodeName());
                                    if ("Linear".equalsIgnoreCase(item3.getNodeName())) {
                                        this.isLinear = true;
                                        VastAd.isNonLinear = false;
                                        NamedNodeMap attributes = item3.getAttributes();
                                        LinearAd linearAd = new LinearAd();
                                        linearAd.adType = 1;
                                        Node namedItem2 = attributes.getNamedItem("skipoffset");
                                        if (namedItem2 != null) {
                                            String nodeValue = namedItem2.getNodeValue();
                                            MdotMLogger.d(this, "nodeOffset" + nodeValue);
                                            linearAd.skipOffset = nodeValue;
                                        }
                                        Node namedItem3 = attributes.getNamedItem("counteroffset");
                                        if (namedItem3 != null) {
                                            String nodeValue2 = namedItem3.getNodeValue();
                                            MdotMLogger.d(this, "counter offset" + nodeValue2);
                                            linearAd.counteroffset = nodeValue2;
                                        }
                                        Node namedItem4 = attributes.getNamedItem("countersize");
                                        if (namedItem4 != null) {
                                            String nodeValue3 = namedItem4.getNodeValue();
                                            MdotMLogger.d(this, "counter size" + nodeValue3);
                                            linearAd.countersize = nodeValue3;
                                        }
                                        Node namedItem5 = attributes.getNamedItem("counterstroke");
                                        if (namedItem5 != null) {
                                            String nodeValue4 = namedItem5.getNodeValue();
                                            MdotMLogger.d(this, "nodeOffset" + namedItem5);
                                            linearAd.counterstroke = nodeValue4;
                                        }
                                        Node namedItem6 = attributes.getNamedItem("closebutton");
                                        if (namedItem6 != null) {
                                            String nodeValue5 = namedItem6.getNodeValue();
                                            MdotMLogger.d(this, "closebtn" + nodeValue5);
                                            linearAd.closeBtnSize = nodeValue5;
                                        }
                                        Node namedItem7 = attributes.getNamedItem("closelocation");
                                        if (namedItem7 != null) {
                                            String nodeValue6 = namedItem7.getNodeValue();
                                            MdotMLogger.d(this, "closeLoc" + nodeValue6);
                                            linearAd.closeBtnLocation = nodeValue6;
                                        }
                                        NodeList childNodes4 = item3.getChildNodes();
                                        int i7 = 0;
                                        while (true) {
                                            int i8 = i7;
                                            if (i8 >= childNodes4.getLength()) {
                                                break;
                                            }
                                            Node item4 = childNodes4.item(i8);
                                            if ("Duration".equalsIgnoreCase(item4.getNodeName())) {
                                                linearAd.duration = item4.getFirstChild().getNodeValue();
                                            } else if ("TrackingEvents".equalsIgnoreCase(item4.getNodeName())) {
                                                NodeList childNodes5 = item4.getChildNodes();
                                                LinearAdTrackingEvents linearAdTrackingEvents = new LinearAdTrackingEvents();
                                                for (int i9 = 0; i9 < childNodes5.getLength(); i9++) {
                                                    Node item5 = childNodes5.item(i9);
                                                    if (TrackingEvents.VAST_TRACKING.equalsIgnoreCase(item5.getNodeName())) {
                                                        setLinearTrackingEvent(item5, linearAdTrackingEvents);
                                                    }
                                                }
                                                linearAd.setTrackingEvents(linearAdTrackingEvents);
                                            } else if ("VideoClicks".equalsIgnoreCase(item4.getNodeName())) {
                                                NodeList childNodes6 = item4.getChildNodes();
                                                int i10 = 0;
                                                while (true) {
                                                    int i11 = i10;
                                                    if (i11 < childNodes6.getLength()) {
                                                        Node item6 = childNodes6.item(i11);
                                                        if ("ClickThrough".equalsIgnoreCase(item6.getNodeName())) {
                                                            if (item6.getFirstChild() instanceof CharacterData) {
                                                                String trim3 = ((CharacterData) item6.getFirstChild()).getData().trim();
                                                                linearAd.videoClicks.add(trim3);
                                                                MdotMLogger.d("SampleXMLParser", "TAG_CLICK_THROUGH " + trim3);
                                                            }
                                                        } else if ("ClickTracking".equalsIgnoreCase(item6.getNodeName()) && (item6.getFirstChild() instanceof CharacterData)) {
                                                            String trim4 = ((CharacterData) item6.getFirstChild()).getData().trim();
                                                            linearAd.videoClickTracking.add(trim4);
                                                            MdotMLogger.d("SampleXMLParser", "TAG_CLICK_TRACKING " + trim4);
                                                        }
                                                        i10 = i11 + 1;
                                                    }
                                                }
                                            } else if (MediaFiles.VAST_MEDIAFILES.equalsIgnoreCase(item4.getNodeName())) {
                                                NodeList childNodes7 = item4.getChildNodes();
                                                int i12 = 0;
                                                while (true) {
                                                    int i13 = i12;
                                                    if (i13 < childNodes7.getLength()) {
                                                        Node item7 = childNodes7.item(i13);
                                                        if (MediaFiles.VAST_MEDIAFILE.equalsIgnoreCase(item7.getNodeName())) {
                                                            NamedNodeMap attributes2 = item7.getAttributes();
                                                            Node namedItem8 = attributes2.getNamedItem("type");
                                                            if (("video/mp4".equalsIgnoreCase(namedItem8.getNodeValue()) || "video/mpeg".equalsIgnoreCase(namedItem8.getNodeValue())) && (item7.getFirstChild() instanceof CharacterData)) {
                                                                String trim5 = ((CharacterData) item7.getFirstChild()).getData().trim();
                                                                int mediaDeliveryType = getMediaDeliveryType(attributes2.getNamedItem("delivery"));
                                                                AdResource adResource = new AdResource();
                                                                adResource.delivery = mediaDeliveryType;
                                                                adResource.url = trim5;
                                                                linearAd.adResource = adResource;
                                                            }
                                                        }
                                                        i12 = i13 + 1;
                                                    }
                                                }
                                            } else if ("Icons".equalsIgnoreCase(item4.getNodeName())) {
                                                NodeList childNodes8 = item4.getChildNodes();
                                                int i14 = 0;
                                                while (true) {
                                                    int i15 = i14;
                                                    if (i15 < childNodes8.getLength()) {
                                                        Node item8 = childNodes8.item(i15);
                                                        if (i.ICON.equalsIgnoreCase(item8.getNodeName())) {
                                                            linearAd.icon = new VastIcons();
                                                            NamedNodeMap attributes3 = item8.getAttributes();
                                                            attributes3.getNamedItem("program");
                                                            linearAd.icon.iconWidth = Integer.parseInt(attributes3.getNamedItem("width").getNodeValue());
                                                            linearAd.icon.iconHeight = Integer.parseInt(attributes3.getNamedItem("height").getNodeValue());
                                                            linearAd.icon.iconDuration = attributes3.getNamedItem(VastIconXmlManager.DURATION).getNodeValue();
                                                            linearAd.icon.iconOffset = attributes3.getNamedItem(VastIconXmlManager.OFFSET).getNodeValue();
                                                            linearAd.icon.iconXpos = attributes3.getNamedItem("xPosition").getNodeValue();
                                                            linearAd.icon.iconYpos = attributes3.getNamedItem("yPosition").getNodeValue();
                                                            MdotMLogger.d(this, "Icon Height" + namedItem.getNodeValue());
                                                            NodeList childNodes9 = item8.getChildNodes();
                                                            int i16 = 0;
                                                            while (true) {
                                                                int i17 = i16;
                                                                if (i17 >= childNodes9.getLength()) {
                                                                    break;
                                                                }
                                                                MdotMLogger.d(this, "Icon child size" + childNodes9.item(i17).getNodeName());
                                                                Node item9 = childNodes9.item(i17);
                                                                if (VastResourceXmlManager.STATIC_RESOURCE.equalsIgnoreCase(item9.getNodeName())) {
                                                                    MdotMLogger.d(this, "Icon  has Static Resourece");
                                                                    if (item8.getFirstChild() instanceof CharacterData) {
                                                                        String trim6 = ((CharacterData) item9.getFirstChild()).getData().trim();
                                                                        MdotMLogger.d(this, "Icon resourece" + trim6);
                                                                        linearAd.icon.iconResource = trim6;
                                                                        try {
                                                                            inputStream2 = new URL(trim6).openStream();
                                                                        } catch (MalformedURLException e) {
                                                                            e.printStackTrace();
                                                                            inputStream2 = null;
                                                                        } catch (IOException e2) {
                                                                            e2.printStackTrace();
                                                                            inputStream2 = null;
                                                                        }
                                                                        if (inputStream2 != null) {
                                                                            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream2);
                                                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                                                            decodeStream.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                                                                            linearAd.icon.iconImagebyteArray = byteArrayOutputStream.toByteArray();
                                                                        }
                                                                    }
                                                                }
                                                                if (VastIconXmlManager.ICON_VIEW_TRACKING.equalsIgnoreCase(item9.getNodeName())) {
                                                                    MdotMLogger.d(this, "Icon  has Static Resourece");
                                                                    if (item8.getFirstChild() instanceof CharacterData) {
                                                                        String trim7 = ((CharacterData) item9.getFirstChild()).getData().trim();
                                                                        MdotMLogger.d(this, "Icon TAG_ICON_VIEW_TRACKING" + trim7);
                                                                        linearAd.icon.iconCreativeView.add(trim7);
                                                                    }
                                                                }
                                                                if (VastIconXmlManager.ICON_CLICKS.equalsIgnoreCase(item9.getNodeName())) {
                                                                    NodeList childNodes10 = item9.getChildNodes();
                                                                    int i18 = 0;
                                                                    while (true) {
                                                                        int i19 = i18;
                                                                        if (i19 >= childNodes10.getLength()) {
                                                                            break;
                                                                        }
                                                                        Node item10 = childNodes10.item(i19);
                                                                        if (VastIconXmlManager.ICON_CLICK_THROUGH.equalsIgnoreCase(item10.getNodeName()) && (item10.getFirstChild() instanceof CharacterData)) {
                                                                            String trim8 = ((CharacterData) item10.getFirstChild()).getData().trim();
                                                                            linearAd.icon.iconClickThrough = trim8;
                                                                            MdotMLogger.d(this, "Icon through" + trim8);
                                                                        }
                                                                        if (VastIconXmlManager.ICON_CLICK_TRACKING.equalsIgnoreCase(item10.getNodeName()) && (item10.getFirstChild() instanceof CharacterData)) {
                                                                            String trim9 = ((CharacterData) item10.getFirstChild()).getData().trim();
                                                                            linearAd.icon.iconClickTracking.add(trim9);
                                                                            MdotMLogger.d(this, "Icon tracking" + trim9);
                                                                        }
                                                                        i18 = i19 + 1;
                                                                    }
                                                                }
                                                                i16 = i17 + 1;
                                                            }
                                                        }
                                                        i14 = i15 + 1;
                                                    }
                                                }
                                            }
                                            i7 = i8 + 1;
                                        }
                                        vastAd.vastAds.add(linearAd);
                                    }
                                    if (CompanionAds.VAST_COMPANIONADS.equalsIgnoreCase(item3.getNodeName())) {
                                        MdotMLogger.d(this, "Inside companion static image" + item3.getChildNodes().item(0).getNodeName());
                                        if (this.isLinear) {
                                            MdotMLogger.d(this, "Inside companion static image");
                                            vastAd.liniearAndCompanion = true;
                                            NodeList childNodes11 = item3.getChildNodes();
                                            MdotMLogger.d(this, "Inside companion ad" + childNodes11.getLength());
                                            int i20 = 0;
                                            while (true) {
                                                int i21 = i20;
                                                if (i21 >= childNodes11.getLength()) {
                                                    break;
                                                }
                                                Node item11 = childNodes11.item(i21);
                                                if (CompanionAds.VAST_COMPANION.equalsIgnoreCase(item11.getNodeName())) {
                                                    MdotMLogger.d(this, "Inside companion tag" + item11.getNodeName());
                                                    NodeList childNodes12 = item11.getChildNodes();
                                                    MdotMLogger.d(this, "Inside companion child size " + childNodes12.getLength());
                                                    Companion companion = new Companion();
                                                    companion.companionStaticImageClickThrough = new String();
                                                    companion.companionStaticImageClickTracking = new ArrayList<>();
                                                    companion.companionCreativeViewList = new ArrayList<>();
                                                    int i22 = 0;
                                                    while (true) {
                                                        int i23 = i22;
                                                        if (i23 >= childNodes12.getLength()) {
                                                            break;
                                                        }
                                                        Node item12 = childNodes12.item(i23);
                                                        MdotMLogger.d(this, "Inside companion" + item12.getNodeName());
                                                        if (VastResourceXmlManager.STATIC_RESOURCE.equalsIgnoreCase(item12.getNodeName())) {
                                                            companion.staticResource = null;
                                                            companion.companionImageByteArray = null;
                                                            Companion.htmlResource = null;
                                                            if (item12.getFirstChild() instanceof CharacterData) {
                                                                String trim10 = ((CharacterData) item12.getFirstChild()).getData().trim();
                                                                companion.staticResource = trim10;
                                                                MdotMLogger.d("SampleXMLParser", " inside TAG_STATIC_RESOURCE = " + trim10);
                                                                try {
                                                                    inputStream = new URL(trim10).openStream();
                                                                } catch (MalformedURLException e3) {
                                                                    e3.printStackTrace();
                                                                    inputStream = null;
                                                                } catch (IOException e4) {
                                                                    e4.printStackTrace();
                                                                    inputStream = null;
                                                                }
                                                                if (inputStream != null) {
                                                                    Bitmap decodeStream2 = BitmapFactory.decodeStream(inputStream);
                                                                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                                                    decodeStream2.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
                                                                    companion.companionImageByteArray = byteArrayOutputStream2.toByteArray();
                                                                }
                                                            }
                                                            MdotMLogger.d(this, "staticResource" + item12.getNodeValue());
                                                        } else if (VastResourceXmlManager.HTML_RESOURCE.equalsIgnoreCase(item12.getNodeName())) {
                                                            companion.staticResource = null;
                                                            companion.companionImageByteArray = null;
                                                            Companion.htmlResource = null;
                                                            if (item12.getFirstChild() instanceof CharacterData) {
                                                                String trim11 = ((CharacterData) item12.getFirstChild()).getData().trim();
                                                                Companion.htmlResource = trim11;
                                                                MdotMLogger.d("SampleXMLParser", " inside TAG_HTML_RESOURCE = " + trim11);
                                                            }
                                                            MdotMLogger.d(this, "htmlResource" + item12.getNodeValue());
                                                        } else if ("CompanionClickThrough".equalsIgnoreCase(item12.getNodeName())) {
                                                            if (item12.getFirstChild() instanceof CharacterData) {
                                                                String trim12 = ((CharacterData) item12.getFirstChild()).getData().trim();
                                                                companion.companionStaticImageClickThrough = trim12;
                                                                MdotMLogger.d("SampleXMLParser", " inside TAG_COMPANION_CLICK_THROUGH = " + trim12);
                                                            }
                                                        } else if ("CompanionClickTracking".equalsIgnoreCase(item12.getNodeName())) {
                                                            if (item12.getFirstChild() instanceof CharacterData) {
                                                                String trim13 = ((CharacterData) item12.getFirstChild()).getData().trim();
                                                                MdotMLogger.d("SampleXMLParser", " inside TAG_COMPANION_CLICK_TRACKING = " + trim13);
                                                                companion.companionStaticImageClickTracking.add(trim13);
                                                            }
                                                        } else if ("TrackingEvents".equalsIgnoreCase(item12.getNodeName())) {
                                                            NodeList childNodes13 = item12.getChildNodes();
                                                            MdotMLogger.d("SampleXMLParser", " inside Tracking event");
                                                            int i24 = 0;
                                                            while (true) {
                                                                int i25 = i24;
                                                                if (i25 < childNodes13.getLength()) {
                                                                    Node item13 = childNodes13.item(i25);
                                                                    if (TrackingEvents.VAST_TRACKING.equalsIgnoreCase(item13.getNodeName())) {
                                                                        MdotMLogger.d("SampleXMLParser", " inside Tracking");
                                                                        if (item13.getFirstChild() instanceof CharacterData) {
                                                                            String trim14 = ((CharacterData) item13.getFirstChild()).getData().trim();
                                                                            companion.companionCreativeViewList.add(trim14);
                                                                            MdotMLogger.d("SampleXMLParser", " inside TAG_COMPANION_CLICK_TRACKING = " + trim14);
                                                                        }
                                                                    }
                                                                    i24 = i25 + 1;
                                                                }
                                                            }
                                                        }
                                                        i22 = i23 + 1;
                                                    }
                                                    vastAd.vastAds.add(companion);
                                                }
                                                i20 = i21 + 1;
                                            }
                                        } else {
                                            VastAd.isNonLinear = false;
                                            MdotMLogger.d(this, "Inside companion ad" + item3.getNodeName());
                                            NodeList childNodes14 = item3.getChildNodes();
                                            MdotMLogger.d(this, "Inside companion ad" + childNodes14.getLength());
                                            int i26 = 0;
                                            while (true) {
                                                int i27 = i26;
                                                if (i27 >= childNodes14.getLength()) {
                                                    break;
                                                }
                                                Node item14 = childNodes14.item(i27);
                                                MdotMLogger.d(this, "Inside companion" + item14.getLocalName());
                                                if (CompanionAds.VAST_COMPANION.equalsIgnoreCase(item14.getNodeName())) {
                                                    MdotMLogger.d(this, "Inside companion");
                                                    NodeList childNodes15 = item14.getChildNodes();
                                                    NamedNodeMap attributes4 = item14.getAttributes();
                                                    Companion companion2 = new Companion();
                                                    companion2.adType = 3;
                                                    Node namedItem9 = attributes4.getNamedItem("skipoffset");
                                                    if (namedItem9 != null) {
                                                        companion2.skipOffset = namedItem9.getNodeValue();
                                                        MdotMLogger.d(this, "nodeMap" + namedItem9.getNodeValue());
                                                    }
                                                    Node namedItem10 = attributes4.getNamedItem("closelocation");
                                                    if (namedItem10 != null) {
                                                        MdotMLogger.d(this, "nodeMap" + namedItem10.getNodeValue());
                                                        companion2.closeBtnLocation = namedItem10.getNodeValue();
                                                    }
                                                    Node namedItem11 = attributes4.getNamedItem("closebutton");
                                                    if (namedItem11 != null) {
                                                        companion2.closeBtnSize = namedItem11.getNodeValue();
                                                        MdotMLogger.d(this, "nodeMap" + namedItem11.getNodeValue());
                                                    }
                                                    int i28 = 0;
                                                    while (true) {
                                                        int i29 = i28;
                                                        if (i29 >= childNodes15.getLength()) {
                                                            break;
                                                        }
                                                        Node item15 = childNodes15.item(i29);
                                                        MdotMLogger.d(this, "Inside companion" + item15.getNodeName());
                                                        if (VastResourceXmlManager.HTML_RESOURCE.equalsIgnoreCase(item15.getNodeName())) {
                                                            CharacterData characterData = (CharacterData) item15.getFirstChild();
                                                            MdotMLogger.d(this, "htmlResource " + characterData.getData().trim());
                                                            Companion.htmlResource = characterData.getData().trim();
                                                        }
                                                        if ("ClickTracking".equalsIgnoreCase(item15.getNodeName()) && (item15.getFirstChild() instanceof CharacterData)) {
                                                            String trim15 = ((CharacterData) item15.getFirstChild()).getData().trim();
                                                            companion2.vastHtmlClickTracking.add(trim15);
                                                            MdotMLogger.d("SampleXMLParser", "TAG_CLICK_TRACKING " + trim15);
                                                        }
                                                        i28 = i29 + 1;
                                                    }
                                                }
                                                i26 = i27 + 1;
                                            }
                                        }
                                    }
                                    if (MdotMCacheHandler.TABLE_NAME_AD_NATIVE.equalsIgnoreCase(item3.getNodeName())) {
                                        new MdotMVastNative();
                                        MdotMNativeAd mdotMNativeAd = new MdotMNativeAd();
                                        if (vastAd.impression != null) {
                                            mdotMNativeAd.setNativeImpressionTrackingURL(vastAd.impression);
                                        }
                                        NodeList childNodes16 = item3.getChildNodes();
                                        int i30 = 0;
                                        while (true) {
                                            int i31 = i30;
                                            if (i31 >= childNodes16.getLength()) {
                                                break;
                                            }
                                            Node item16 = childNodes16.item(i31);
                                            MdotMLogger.d(this, "Inside Native" + item16.getNodeName());
                                            if (i.ICON.equalsIgnoreCase(item16.getNodeName()) && (item16.getFirstChild() instanceof CharacterData)) {
                                                String trim16 = ((CharacterData) item16.getFirstChild()).getData().trim();
                                                MdotMLogger.d(this, "Native Icon" + trim16);
                                                mdotMNativeAd.setIcon(trim16);
                                            }
                                            if (NativeAd.COMPONENT_ID_BODY.equalsIgnoreCase(item16.getNodeName()) && (item16.getFirstChild() instanceof CharacterData)) {
                                                String trim17 = ((CharacterData) item16.getFirstChild()).getData().trim();
                                                MdotMLogger.d(this, "Native body" + trim17);
                                                mdotMNativeAd.setBody(trim17);
                                            }
                                            if ("CoverImage".equalsIgnoreCase(item16.getNodeName()) && (item16.getFirstChild() instanceof CharacterData)) {
                                                String trim18 = ((CharacterData) item16.getFirstChild()).getData().trim();
                                                MdotMLogger.d(this, "Native cover" + trim18);
                                                mdotMNativeAd.setCoverImage(trim18);
                                            }
                                            if ("Title".equalsIgnoreCase(item16.getNodeName()) && (item16.getFirstChild() instanceof CharacterData)) {
                                                String trim19 = ((CharacterData) item16.getFirstChild()).getData().trim();
                                                MdotMLogger.d(this, "Native title" + trim19);
                                                mdotMNativeAd.setTitle(trim19);
                                            }
                                            if ("CallToAction".equalsIgnoreCase(item16.getNodeName()) && (item16.getFirstChild() instanceof CharacterData)) {
                                                String trim20 = ((CharacterData) item16.getFirstChild()).getData().trim();
                                                MdotMLogger.d(this, "Native CTA" + trim20);
                                                mdotMNativeAd.setCallToAction(trim20);
                                            }
                                            if ("NativeClicks".equalsIgnoreCase(item16.getNodeName())) {
                                                NodeList childNodes17 = item16.getChildNodes();
                                                int i32 = 0;
                                                while (true) {
                                                    int i33 = i32;
                                                    if (i33 >= childNodes17.getLength()) {
                                                        break;
                                                    }
                                                    Node item17 = childNodes17.item(i33);
                                                    if ("ClickThrough".equalsIgnoreCase(item17.getNodeName()) && (item17.getFirstChild() instanceof CharacterData)) {
                                                        String trim21 = ((CharacterData) item17.getFirstChild()).getData().trim();
                                                        MdotMLogger.d(this, "Native ClickThrough" + trim21);
                                                        mdotMNativeAd.setNativeClickThrough(trim21);
                                                    }
                                                    if ("ClickTracking".equalsIgnoreCase(item17.getNodeName()) && (item17.getFirstChild() instanceof CharacterData)) {
                                                        String trim22 = ((CharacterData) item17.getFirstChild()).getData().trim();
                                                        MdotMLogger.d(this, "Native ClickTracking" + trim22);
                                                        mdotMNativeAd.setNativeClickTrackingURL(trim22);
                                                    }
                                                    i32 = i33 + 1;
                                                }
                                            }
                                            i30 = i31 + 1;
                                        }
                                        mdotMNativeAd.setAdType(4);
                                        this.mdotMNativeAd.add(mdotMNativeAd);
                                        vastAd.vastAds.add(mdotMNativeAd);
                                    }
                                    i5 = i6 + 1;
                                }
                            }
                            i3 = i4 + 1;
                        }
                    }
                }
                i = i2 + 1;
            } else {
                MdotMLogger.d(this, " child parsing done" + vastAd);
                return;
            }
        }
    }

    private void setLinearTrackingEvent(Node node, LinearAdTrackingEvents linearAdTrackingEvents) {
        String nodeValue = node.getAttributes().getNamedItem("event").getNodeValue();
        if (node.getFirstChild() instanceof CharacterData) {
            String trim = ((CharacterData) node.getFirstChild()).getData().trim();
            if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
                linearAdTrackingEvents.start.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW)) {
                linearAdTrackingEvents.creativeView.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE)) {
                linearAdTrackingEvents.firstQuartile.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT)) {
                linearAdTrackingEvents.midPoint.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE)) {
                linearAdTrackingEvents.thirdQuartile.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE)) {
                linearAdTrackingEvents.complete.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE)) {
                linearAdTrackingEvents.mute.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE)) {
                linearAdTrackingEvents.unMute.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE)) {
                linearAdTrackingEvents.pause.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME)) {
                linearAdTrackingEvents.resume.add(trim);
            } else if (nodeValue.equalsIgnoreCase(SASNativeVideoAdElement.TRACKING_EVENT_NAME_SKIP)) {
                linearAdTrackingEvents.skip.add(trim);
            }
        }
    }

    private int getMediaDeliveryType(Node node) {
        if ("progressive".equalsIgnoreCase(node.getNodeValue())) {
            return 1;
        }
        if (!"stream".equalsIgnoreCase(node.getNodeValue())) {
            return 0;
        }
        return 2;
    }
}
