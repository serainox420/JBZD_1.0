package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.XmlUtils;
import com.openx.model.vast.MediaFiles;
import com.openx.model.vast.TrackingEvents;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* compiled from: VastLinearXmlManager.java */
/* loaded from: classes3.dex */
class i {
    public static final String ICON = "Icon";
    public static final String ICONS = "Icons";

    /* renamed from: a  reason: collision with root package name */
    private final Node f4525a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Node node) {
        Preconditions.checkNotNull(node);
        this.f4525a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastFractionalProgressTracker> a() {
        ArrayList arrayList = new ArrayList();
        a(arrayList, b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE), 0.25f);
        a(arrayList, b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT), 0.5f);
        a(arrayList, b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE), 0.75f);
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4525a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, TrackingEvents.VAST_TRACKING, "event", Collections.singletonList(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PROGRESS))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (Strings.isPercentageTracker(trim)) {
                        try {
                            arrayList.add(new VastFractionalProgressTracker(XmlUtils.getNodeValue(node), Float.parseFloat(trim.replace("%", "")) / 100.0f));
                        } catch (NumberFormatException e) {
                            MoPubLog.d(String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastAbsoluteProgressTracker> b() {
        ArrayList arrayList = new ArrayList();
        for (String str : b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START)) {
            arrayList.add(new VastAbsoluteProgressTracker(str, 0));
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4525a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, TrackingEvents.VAST_TRACKING, "event", Collections.singletonList(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PROGRESS))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (Strings.isAbsoluteTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            Integer parseAbsoluteOffset = Strings.parseAbsoluteOffset(trim);
                            if (parseAbsoluteOffset != null) {
                                arrayList.add(new VastAbsoluteProgressTracker(nodeValue, parseAbsoluteOffset.intValue()));
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.d(String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
            for (Node node2 : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, TrackingEvents.VAST_TRACKING, "event", Collections.singletonList(SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW))) {
                String nodeValue2 = XmlUtils.getNodeValue(node2);
                if (nodeValue2 != null) {
                    arrayList.add(new VastAbsoluteProgressTracker(nodeValue2, 0));
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> c() {
        return a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> d() {
        List<String> b = b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE);
        ArrayList arrayList = new ArrayList();
        for (String str : b) {
            arrayList.add(new VastTracker(str, true));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> e() {
        List<String> b = b(SASNativeVideoAdElement.TRACKING_EVENT_NAME_RESUME);
        ArrayList arrayList = new ArrayList();
        for (String str : b) {
            arrayList.add(new VastTracker(str, true));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> f() {
        List<VastTracker> a2 = a("close");
        a2.addAll(a("closeLinear"));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> g() {
        return a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_SKIP);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String h() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4525a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, "ClickThrough"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> i() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4525a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "ClickTracking")) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String j() {
        String attributeValue = XmlUtils.getAttributeValue(this.f4525a, "skipoffset");
        if (attributeValue != null && !attributeValue.trim().isEmpty()) {
            return attributeValue.trim();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<k> k() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4525a, MediaFiles.VAST_MEDIAFILES);
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, MediaFiles.VAST_MEDIAFILE)) {
            arrayList.add(new k(node));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastIconXmlManager> l() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4525a, "Icons");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON)) {
            arrayList.add(new VastIconXmlManager(node));
        }
        return arrayList;
    }

    private List<VastTracker> a(String str) {
        List<String> b = b(str);
        ArrayList arrayList = new ArrayList(b.size());
        for (String str2 : b) {
            arrayList.add(new VastTracker(str2));
        }
        return arrayList;
    }

    private List<String> b(String str) {
        Preconditions.checkNotNull(str);
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4525a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, TrackingEvents.VAST_TRACKING, "event", Collections.singletonList(str))) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (nodeValue != null) {
                arrayList.add(nodeValue);
            }
        }
        return arrayList;
    }

    private void a(List<VastFractionalProgressTracker> list, List<String> list2, float f) {
        Preconditions.checkNotNull(list, "trackers cannot be null");
        Preconditions.checkNotNull(list2, "urls cannot be null");
        for (String str : list2) {
            list.add(new VastFractionalProgressTracker(str, f));
        }
    }
}
