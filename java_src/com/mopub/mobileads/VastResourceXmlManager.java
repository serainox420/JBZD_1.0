package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* loaded from: classes3.dex */
public class VastResourceXmlManager {
    public static final String CREATIVE_TYPE = "creativeType";
    public static final String HTML_RESOURCE = "HTMLResource";
    public static final String IFRAME_RESOURCE = "IFrameResource";
    public static final String STATIC_RESOURCE = "StaticResource";

    /* renamed from: a  reason: collision with root package name */
    private final Node f4472a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastResourceXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4472a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4472a, STATIC_RESOURCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        String attributeValue = XmlUtils.getAttributeValue(XmlUtils.getFirstMatchingChildNode(this.f4472a, STATIC_RESOURCE), CREATIVE_TYPE);
        if (attributeValue != null) {
            return attributeValue.toLowerCase();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4472a, IFRAME_RESOURCE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4472a, HTML_RESOURCE));
    }
}
