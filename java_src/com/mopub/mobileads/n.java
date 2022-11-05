package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastWrapperXmlManager.java */
/* loaded from: classes3.dex */
public class n extends e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Node node) {
        super(node);
        Preconditions.checkNotNull(node);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4511a, "VASTAdTagURI"));
    }
}
