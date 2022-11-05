package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastMediaXmlManager.java */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final Node f4527a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Node node) {
        Preconditions.checkNotNull(node, "mediaNode cannot be null");
        this.f4527a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer a() {
        return XmlUtils.getAttributeValueAsInt(this.f4527a, "width");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer b() {
        return XmlUtils.getAttributeValueAsInt(this.f4527a, "height");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return XmlUtils.getAttributeValue(this.f4527a, "type");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return XmlUtils.getNodeValue(this.f4527a);
    }
}
