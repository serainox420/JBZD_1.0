package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import com.openx.model.vast.CompanionAds;
import com.openx.model.vast.Creatives;
import com.openx.model.vast.Extensions;
import com.openx.model.vast.Impressions;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Node;
/* compiled from: VastBaseInLineWrapperXmlManager.java */
/* loaded from: classes3.dex */
abstract class e {

    /* renamed from: a  reason: collision with root package name */
    protected final Node f4511a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Node node) {
        Preconditions.checkNotNull(node);
        this.f4511a = node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> a() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4511a, Impressions.VAST_IMPRESSION);
        ArrayList arrayList = new ArrayList();
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4511a, "Error");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        for (Node node : matchingChildNodes) {
            String nodeValue = XmlUtils.getNodeValue(node);
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue, true));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<i> c() {
        List<Node> matchingChildNodes;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4511a, Creatives.VAST_CREATIVES);
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, "Linear");
                if (firstMatchingChildNode2 != null) {
                    arrayList.add(new i(firstMatchingChildNode2));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<f> d() {
        List<Node> matchingChildNodes;
        List<Node> matchingChildNodes2;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4511a, Creatives.VAST_CREATIVES);
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            for (Node node : matchingChildNodes) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(node, CompanionAds.VAST_COMPANIONADS);
                if (firstMatchingChildNode2 != null && (matchingChildNodes2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, CompanionAds.VAST_COMPANION)) != null) {
                    for (Node node2 : matchingChildNodes2) {
                        arrayList.add(new f(node2));
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastExtensionParentXmlManager e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4511a, Extensions.VAST_EXTENSIONS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new VastExtensionParentXmlManager(firstMatchingChildNode);
    }
}
