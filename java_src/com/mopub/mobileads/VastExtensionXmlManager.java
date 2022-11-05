package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes3.dex */
public class VastExtensionXmlManager {
    public static final String TYPE = "type";
    public static final String VIDEO_VIEWABILITY_TRACKER = "MoPubViewabilityTracker";

    /* renamed from: a  reason: collision with root package name */
    private final Node f4467a;

    public VastExtensionXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4467a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoViewabilityTracker a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4467a, VIDEO_VIEWABILITY_TRACKER);
        if (firstMatchingChildNode == null) {
            return null;
        }
        VideoViewabilityTrackerXmlManager videoViewabilityTrackerXmlManager = new VideoViewabilityTrackerXmlManager(firstMatchingChildNode);
        Integer a2 = videoViewabilityTrackerXmlManager.a();
        Integer b = videoViewabilityTrackerXmlManager.b();
        String c = videoViewabilityTrackerXmlManager.c();
        if (a2 != null && b != null && !TextUtils.isEmpty(c)) {
            return new VideoViewabilityTracker(a2.intValue(), b.intValue(), c);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return XmlUtils.getAttributeValue(this.f4467a, "type");
    }
}
