package com.pubmatic.sdk.banner;

import java.io.IOException;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes3.dex */
public class ThirdPartyDescriptor {
    private Map<String, String> properties = new HashMap();
    private Map<String, String> params = new HashMap();

    public static ThirdPartyDescriptor parseDescriptor(String str) throws XmlPullParserException, IOException {
        String text;
        int indexOf = str.indexOf("<external_campaign");
        int indexOf2 = str.indexOf("</external_campaign>", indexOf);
        if (indexOf == -1 || indexOf2 == -1) {
            return null;
        }
        String substring = str.substring(indexOf, indexOf2 + "</external_campaign>".length());
        ThirdPartyDescriptor thirdPartyDescriptor = new ThirdPartyDescriptor();
        Stack stack = new Stack();
        HashMap hashMap = new HashMap();
        XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
        newInstance.setNamespaceAware(false);
        newInstance.setValidating(false);
        XmlPullParser newPullParser = newInstance.newPullParser();
        newPullParser.setInput(new StringReader(substring));
        while (!"external_campaign".equals(newPullParser.getName())) {
            newPullParser.next();
        }
        newPullParser.next();
        String str2 = null;
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            switch (eventType) {
                case 2:
                    stack.push(newPullParser.getName());
                    hashMap.clear();
                    int attributeCount = newPullParser.getAttributeCount();
                    for (int i = 0; i < attributeCount; i++) {
                        hashMap.put(newPullParser.getAttributeName(i), newPullParser.getAttributeValue(i));
                    }
                    text = null;
                    break;
                case 3:
                    if (stack.size() == 0) {
                        return thirdPartyDescriptor;
                    }
                    String str3 = (String) stack.pop();
                    if (str2 != null) {
                        if ("param".equals(str3)) {
                            if (hashMap.containsKey("name")) {
                                thirdPartyDescriptor.getParams().put((String) hashMap.get("name"), str2);
                            }
                        } else {
                            thirdPartyDescriptor.getProperties().put(str3, str2);
                        }
                    }
                    hashMap.clear();
                    text = null;
                    break;
                case 4:
                    text = newPullParser.getText();
                    break;
                default:
                    text = str2;
                    break;
            }
            str2 = text;
        }
        return thirdPartyDescriptor;
    }

    private ThirdPartyDescriptor() {
    }

    public Map<String, String> getProperties() {
        return this.properties;
    }

    public Map<String, String> getParams() {
        return this.params;
    }
}
