package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastAdXmlManager.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final Node f4510a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Node node) {
        Preconditions.checkNotNull(node);
        this.f4510a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4510a, "InLine");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new h(firstMatchingChildNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4510a, "Wrapper");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new n(firstMatchingChildNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return XmlUtils.getAttributeValue(this.f4510a, "sequence");
    }
}
