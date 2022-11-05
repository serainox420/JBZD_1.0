package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import com.openx.model.vast.TrackingEvents;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.w3c.dom.Node;
/* compiled from: VastCompanionAdXmlManager.java */
/* loaded from: classes3.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private final Node f4512a;
    private final VastResourceXmlManager b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Node node) {
        Preconditions.checkNotNull(node, "companionNode cannot be null");
        this.f4512a = node;
        this.b = new VastResourceXmlManager(node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer a() {
        return XmlUtils.getAttributeValueAsInt(this.f4512a, "width");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer b() {
        return XmlUtils.getAttributeValueAsInt(this.f4512a, "height");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return XmlUtils.getAttributeValue(this.f4512a, "adSlotID");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastResourceXmlManager d() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4512a, "CompanionClickThrough"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> f() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4512a, "CompanionClickTracking");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> g() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4512a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, TrackingEvents.VAST_TRACKING, "event", Collections.singletonList(SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW))) {
            arrayList.add(new VastTracker(XmlUtils.getNodeValue(node)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return !TextUtils.isEmpty(this.b.a()) || !TextUtils.isEmpty(this.b.d()) || !TextUtils.isEmpty(this.b.c());
    }
}
