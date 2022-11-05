package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes3.dex */
public class VideoViewabilityTrackerXmlManager {
    public static final String PERCENT_VIEWABLE = "percentViewable";
    public static final String VIEWABLE_PLAYTIME = "viewablePlaytime";

    /* renamed from: a  reason: collision with root package name */
    private final Node f4500a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoViewabilityTrackerXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4500a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer a() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f4500a, VIEWABLE_PLAYTIME);
        if (attributeValue == null) {
            return null;
        }
        if (Strings.isAbsoluteTracker(attributeValue)) {
            try {
                num = Strings.parseAbsoluteOffset(attributeValue);
            } catch (NumberFormatException e) {
                MoPubLog.d(String.format("Invalid VAST viewablePlaytime format for \"HH:MM:SS[.mmm]\": %s:", attributeValue));
                num = null;
            }
        } else {
            try {
                num = Integer.valueOf((int) (Float.parseFloat(attributeValue) * 1000.0f));
            } catch (NumberFormatException e2) {
                MoPubLog.d(String.format("Invalid VAST viewablePlaytime format for \"SS[.mmm]\": %s:", attributeValue));
                num = null;
            }
        }
        if (num != null && num.intValue() >= 0) {
            return num;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer b() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f4500a, PERCENT_VIEWABLE);
        if (attributeValue == null) {
            return null;
        }
        try {
            num = Integer.valueOf((int) Float.parseFloat(attributeValue.replace("%", "")));
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST percentViewable format for \"d{1,3}%%\": %s:", attributeValue));
            num = null;
        }
        if (num != null && num.intValue() >= 0 && num.intValue() <= 100) {
            return num;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return XmlUtils.getNodeValue(this.f4500a);
    }
}
