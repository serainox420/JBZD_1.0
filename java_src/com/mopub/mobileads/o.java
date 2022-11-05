package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.util.XmlUtils;
import com.openx.model.vast.Ad;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastXmlManager.java */
/* loaded from: classes3.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private Document f4533a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) throws ParserConfigurationException, IOException, SAXException {
        Preconditions.checkNotNull(str, "xmlString cannot be null");
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setCoalescing(true);
        this.f4533a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader("<MPMoVideoXMLDocRoot>" + str.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<d> a() {
        ArrayList arrayList = new ArrayList();
        if (this.f4533a == null) {
            return arrayList;
        }
        NodeList elementsByTagName = this.f4533a.getElementsByTagName(Ad.VAST_AD);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(new d(elementsByTagName.item(i)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VastTracker b() {
        if (this.f4533a == null) {
            return null;
        }
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f4533a, "Error");
        if (TextUtils.isEmpty(firstMatchingStringData)) {
            return null;
        }
        return new VastTracker(firstMatchingStringData);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<VastTracker> c() {
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(this.f4533a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        for (String str : stringDataAsList) {
            arrayList.add(new VastTracker(str));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f4533a, "MoPubCtaText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f4533a, "MoPubSkipText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 8) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String f() {
        return XmlUtils.getFirstMatchingStringData(this.f4533a, "MoPubCloseIcon");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceUtils.ForceOrientation g() {
        return DeviceUtils.ForceOrientation.getForceOrientation(XmlUtils.getFirstMatchingStringData(this.f4533a, "MoPubForceOrientation"));
    }
}
