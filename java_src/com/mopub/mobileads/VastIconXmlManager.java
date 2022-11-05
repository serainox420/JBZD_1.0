package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes3.dex */
public class VastIconXmlManager {
    public static final String DURATION = "duration";
    public static final String HEIGHT = "height";
    public static final String ICON_CLICKS = "IconClicks";
    public static final String ICON_CLICK_THROUGH = "IconClickThrough";
    public static final String ICON_CLICK_TRACKING = "IconClickTracking";
    public static final String ICON_VIEW_TRACKING = "IconViewTracking";
    public static final String OFFSET = "offset";
    public static final String WIDTH = "width";

    /* renamed from: a  reason: collision with root package name */
    private final Node f4468a;
    private final VastResourceXmlManager b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastIconXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4468a = node;
        this.b = new VastResourceXmlManager(node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer a() {
        return XmlUtils.getAttributeValueAsInt(this.f4468a, "width");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer b() {
        return XmlUtils.getAttributeValueAsInt(this.f4468a, "height");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer c() {
        String attributeValue = XmlUtils.getAttributeValue(this.f4468a, OFFSET);
        try {
            return Strings.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST icon offset format: %s:", attributeValue));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer d() {
        String attributeValue = XmlUtils.getAttributeValue(this.f4468a, DURATION);
        try {
            return Strings.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST icon duration format: %s:", attributeValue));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastResourceXmlManager e() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> f() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4468a, ICON_CLICKS);
        ArrayList arrayList = new ArrayList();
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON_CLICK_TRACKING)) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4468a, ICON_CLICKS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, ICON_CLICK_THROUGH));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> h() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4468a, ICON_VIEW_TRACKING);
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }
}
