package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import com.openx.model.vast.Extensions;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* loaded from: classes3.dex */
public class VastExtensionParentXmlManager {

    /* renamed from: a  reason: collision with root package name */
    private final Node f4466a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastExtensionParentXmlManager(Node node) {
        Preconditions.checkNotNull(node);
        this.f4466a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastExtensionXmlManager> a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4466a, Extensions.VAST_EXTENSION);
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            arrayList.add(new VastExtensionXmlManager(node));
        }
        return arrayList;
    }
}
