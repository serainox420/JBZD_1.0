package com.pubmatic.sdk.banner;

import android.text.TextUtils;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.pubmatic.sdk.common.AdResponse;
import com.pubmatic.sdk.common.CommonConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class BannerAdDescriptor implements AdResponse.Renderable {
    private final Map<String, String> adInfo;
    private String errorMessage;
    private ArrayList<String> mClickTrackers;
    private ArrayList<String> mImpressionTrackers;

    public static BannerAdDescriptor parseDescriptor(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i;
        int i2;
        HashMap hashMap = new HashMap();
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        hashMap.put("type", xmlPullParser.getAttributeValue(null, "type"));
        hashMap.put("subtype", xmlPullParser.getAttributeValue(null, "subtype"));
        xmlPullParser.next();
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            String name = xmlPullParser.getName();
            if (eventType == 3 && AdDatabaseHelper.TABLE_AD.equals(name)) {
                break;
            }
            if (eventType == 2) {
                String attributeValue = xmlPullParser.getAttributeValue(null, "type");
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "width");
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "height");
                if (!TextUtils.isEmpty(attributeValue)) {
                    hashMap.put(name + "Type", attributeValue);
                }
                if (!TextUtils.isEmpty(attributeValue2) && attributeValue2 != null) {
                    hashMap.put("width", attributeValue2);
                }
                if (!TextUtils.isEmpty(attributeValue3) && attributeValue3 != null) {
                    hashMap.put("height", attributeValue3);
                }
                xmlPullParser.next();
                int eventType2 = xmlPullParser.getEventType();
                if (name.equals("impressiontrackers")) {
                    if (xmlPullParser.getName().equalsIgnoreCase("impressiontracker")) {
                        while (eventType2 != 1) {
                            String str = "";
                            String name2 = xmlPullParser.getName();
                            if (eventType2 != 3 || !"impressiontrackers".equals(name2)) {
                                if (eventType == 2) {
                                    if (xmlPullParser.getEventType() == 4) {
                                        str = xmlPullParser.getText();
                                    }
                                    if (!TextUtils.isEmpty(str)) {
                                        arrayList.add(str);
                                    }
                                    xmlPullParser.next();
                                    i2 = xmlPullParser.getEventType();
                                } else {
                                    i2 = eventType2;
                                }
                                eventType2 = i2;
                            }
                        }
                    }
                } else if (name.equals("clicktrackers")) {
                    if ("clicktracker".equalsIgnoreCase(xmlPullParser.getName())) {
                        int eventType3 = xmlPullParser.getEventType();
                        while (eventType3 != 1) {
                            String str2 = "";
                            String name3 = xmlPullParser.getName();
                            if (eventType3 != 3 || !"clicktrackers".equals(name3)) {
                                if (eventType == 2) {
                                    if (xmlPullParser.getEventType() == 4) {
                                        str2 = xmlPullParser.getText();
                                    }
                                    if (!TextUtils.isEmpty(str2)) {
                                        arrayList2.add(str2);
                                    }
                                    xmlPullParser.next();
                                    i = xmlPullParser.getEventType();
                                } else {
                                    i = eventType3;
                                }
                                eventType3 = i;
                            }
                        }
                    }
                } else if (!name.equals("mediation")) {
                    String text = xmlPullParser.getEventType() == 4 ? xmlPullParser.getText() : null;
                    if (!TextUtils.isEmpty(text)) {
                        hashMap.put(name, text);
                    }
                }
            }
            xmlPullParser.next();
            eventType = xmlPullParser.getEventType();
        }
        BannerAdDescriptor bannerAdDescriptor = new BannerAdDescriptor(hashMap);
        bannerAdDescriptor.setImpressionTrackers(arrayList);
        bannerAdDescriptor.setClickTrackers(arrayList2);
        return bannerAdDescriptor;
    }

    private static String getXmlValue(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        if (xmlPullParser.next() == 4) {
            String text = xmlPullParser.getText();
            xmlPullParser.nextTag();
            if (text == null) {
                return null;
            }
            return text.trim();
        }
        return null;
    }

    private static void seekToCurrentEndTag(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException("Current event of parser is not pointing to XmlPullParser.START_TAG");
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

    BannerAdDescriptor() {
        this.mImpressionTrackers = new ArrayList<>();
        this.mClickTrackers = new ArrayList<>();
        this.errorMessage = null;
        this.adInfo = null;
    }

    public BannerAdDescriptor(Map<String, String> map) {
        this.mImpressionTrackers = new ArrayList<>();
        this.mClickTrackers = new ArrayList<>();
        this.errorMessage = null;
        this.adInfo = map;
    }

    public void setEcpm(String str) {
        if (this.adInfo != null) {
            this.adInfo.put("ecpm", str);
        }
    }

    public String getEcpm() {
        return this.adInfo.get("ecpm");
    }

    public String getType() {
        return this.adInfo.get("type");
    }

    public String getWidth() {
        return this.adInfo.get("width");
    }

    public String getHeight() {
        return this.adInfo.get("height");
    }

    public String getSubType() {
        return this.adInfo.get("subtype");
    }

    public String getURL() {
        return this.adInfo.get("url");
    }

    public String getTrack() {
        return this.adInfo.get("track");
    }

    public String getImage() {
        return this.adInfo.get("img");
    }

    public String getImageType() {
        return this.adInfo.get("imgType");
    }

    public String getText() {
        return this.adInfo.get(CommonConstants.RESPONSE_TEXT);
    }

    public String getContent() {
        return this.adInfo.get("content");
    }

    public String getAdCreativeId() {
        return this.adInfo.get("creativeid");
    }

    public ArrayList<String> getImpressionTrackers() {
        return this.mImpressionTrackers;
    }

    public void setImpressionTrackers(ArrayList<String> arrayList) {
        this.mImpressionTrackers.clear();
        this.mImpressionTrackers = arrayList;
    }

    public ArrayList<String> getClickTrackers() {
        return this.mClickTrackers;
    }

    public void setClickTrackers(ArrayList<String> arrayList) {
        if (this.mClickTrackers != null) {
            this.mClickTrackers.clear();
        }
        this.mClickTrackers = arrayList;
    }

    String getErrroMessage() {
        return this.errorMessage;
    }

    @Override // com.pubmatic.sdk.common.AdResponse.Renderable
    public Object getRenderable() {
        return null;
    }
}
