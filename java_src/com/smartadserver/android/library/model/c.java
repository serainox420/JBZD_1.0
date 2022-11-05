package com.smartadserver.android.library.model;

import com.amazon.device.ads.WebRequest;
import com.mopub.mobileads.VastResourceXmlManager;
import com.openx.model.vast.Ad;
import com.smartadserver.android.library.exception.SASVASTParsingException;
import java.io.ByteArrayInputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* compiled from: SASVASTElement.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static DocumentBuilderFactory f5451a;
    private static DocumentBuilder b;
    private static boolean c = false;
    private a d;

    /* compiled from: SASVASTElement.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public C0582c[] f5452a;
        public HashMap<String, ArrayList<String>> b = new HashMap<>();
        public ArrayList<String> c = new ArrayList<>();
        public ArrayList<String> d = new ArrayList<>();
        public String e;
        public String f;
        public String g;
        public String h;
        public int i;
        public b j;
    }

    public C0582c a() {
        int b2 = com.smartadserver.android.library.g.c.b();
        C0582c c0582c = null;
        if (this.d == null) {
            return null;
        }
        int i = 0;
        switch (b2) {
            case 0:
            case 1:
                i = 100;
                break;
            case 2:
                i = 400;
                break;
            case 3:
                i = 1000;
                break;
            case 4:
                i = Integer.MAX_VALUE;
                break;
        }
        for (int length = this.d.f5452a.length - 1; length >= 0; length--) {
            c0582c = this.d.f5452a[length];
            if (c0582c.c <= i) {
                return c0582c;
            }
        }
        return c0582c;
    }

    public String b() {
        if (this.d == null) {
            return null;
        }
        return this.d.f;
    }

    public String c() {
        if (this.d == null) {
            return null;
        }
        return this.d.g;
    }

    public ArrayList<String> d() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.d != null) {
            arrayList.addAll(this.d.c);
        }
        return arrayList;
    }

    public HashMap<String, ArrayList<String>> e() {
        HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
        if (this.d != null) {
            return this.d.b;
        }
        return hashMap;
    }

    public String f() {
        if (this.d == null) {
            return null;
        }
        return this.d.e;
    }

    public ArrayList<String> g() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.d != null) {
            arrayList.addAll(this.d.d);
        }
        return arrayList;
    }

    public String h() {
        if (this.d == null) {
            return null;
        }
        return this.d.h;
    }

    public int i() {
        if (this.d == null) {
            return -1;
        }
        return this.d.i;
    }

    public b j() {
        if (this.d == null) {
            return null;
        }
        return this.d.j;
    }

    /* compiled from: SASVASTElement.java */
    /* renamed from: com.smartadserver.android.library.model.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0582c implements Comparable<C0582c> {

        /* renamed from: a  reason: collision with root package name */
        public String f5454a;
        public String b;
        public int c;
        public String d;
        public int e;
        public int f;

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(C0582c c0582c) {
            return Integer.valueOf(this.c).compareTo(Integer.valueOf(c0582c.c));
        }
    }

    /* compiled from: SASVASTElement.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f5453a;
        public String b;
        public String c;
        public String d;

        public static boolean a(String str) {
            String upperCase = str.toUpperCase();
            return upperCase.equals("IMAGE/JPG") || upperCase.equals("IMAGE/PNG") || upperCase.equals("IMAGE/JPEG");
        }

        public b(String str, String str2, String str3, String str4) {
            this.f5453a = str;
            this.b = str3;
            this.d = str2;
            this.c = str4;
        }
    }

    private c() {
    }

    public static c a(String str, boolean z, long j) throws SASVASTParsingException {
        c cVar;
        Exception e;
        Document parse;
        try {
            if (!c) {
                f5451a = DocumentBuilderFactory.newInstance();
                b = f5451a.newDocumentBuilder();
                c = true;
            }
            long currentTimeMillis = j - System.currentTimeMillis();
            if (currentTimeMillis <= 0) {
                return null;
            }
            cVar = new c();
            try {
                try {
                    URLConnection openConnection = new URL(str).openConnection();
                    openConnection.setUseCaches(false);
                    openConnection.setConnectTimeout((int) ((currentTimeMillis * 0.5d) / 2.0d));
                    openConnection.setReadTimeout((int) ((0.5d * currentTimeMillis) / 2.0d));
                    parse = b.parse(openConnection.getInputStream());
                } catch (Exception e2) {
                    parse = b.parse(new ByteArrayInputStream(str.getBytes("UTF-8")));
                }
                a(parse, cVar, z, j);
                return cVar;
            } catch (Exception e3) {
                e = e3;
                a("Parsing VAST file at " + str + " failed with error: " + e.getClass().getSimpleName() + ": " + e.getMessage(), e);
                return cVar;
            }
        } catch (Exception e4) {
            cVar = null;
            e = e4;
        }
    }

    private static void a(String str, Throwable th) throws SASVASTParsingException {
        throw new SASVASTParsingException(str, th);
    }

    private static void a(String str) throws SASVASTParsingException {
        throw new SASVASTParsingException(str, null);
    }

    private static void a(Document document, c cVar, boolean z, long j) throws SASVASTParsingException {
        Element documentElement = document.getDocumentElement();
        documentElement.getTagName().equals("VAST");
        if (!documentElement.getTagName().equals("VAST")) {
            a("VAST file does not contain VAST tag");
        }
        String attribute = documentElement.getAttribute("version");
        if (!"2.0".equals(attribute) && !"3.0".equals(attribute)) {
            a("Incorrect VAST version:" + attribute);
        }
        NodeList elementsByTagName = document.getElementsByTagName(Ad.VAST_AD);
        int length = elementsByTagName.getLength();
        if (length == 0) {
            a("VAST does not contain any Ad");
        }
        boolean z2 = false;
        for (int i = 0; i < length; i++) {
            if (elementsByTagName.item(i).getAttributes().getNamedItem("sequence") != null) {
                if (z2) {
                    a("Ad pods are not supported (multiple Ad elements with sequence id attribute)");
                }
                z2 = true;
            }
        }
        for (int i2 = 0; i2 < length; i2++) {
            Node item = elementsByTagName.item(i2);
            a aVar = new a();
            try {
                a(item, aVar, j);
                cVar.d = aVar;
                return;
            } catch (SASVASTParsingException e) {
                if (!z || i2 >= length - 1) {
                    throw e;
                }
            }
        }
    }

    private static void a(Node node, a aVar, long j) throws SASVASTParsingException {
        boolean z = false;
        NodeList childNodes = node.getChildNodes();
        int length = childNodes.getLength();
        for (int i = 0; i < length; i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if ("InLine".equals(nodeName)) {
                a(item, aVar);
                z = true;
            } else if ("Wrapper".equals(nodeName)) {
                b(item, aVar, j);
                z = true;
            }
        }
        if (!z) {
            a("Missing Inline or Wrapper element for ad");
        }
    }

    private static void a(Node node, a aVar) throws SASVASTParsingException {
        try {
            XPath newXPath = XPathFactory.newInstance().newXPath();
            NodeList nodeList = (NodeList) newXPath.compile(".//Impression").evaluate(node, XPathConstants.NODESET);
            int length = nodeList.getLength();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                aVar.c.add(nodeList.item(i).getTextContent().trim());
            }
            NodeList nodeList2 = (NodeList) newXPath.compile(".//Linear").evaluate(node, XPathConstants.NODESET);
            if (nodeList2.getLength() == 0) {
                a("No Linear found in VAST inline element");
            }
            b(nodeList2.item(0), aVar);
            if (aVar.f5452a.length == 0) {
                a("No valid media file found in VAST file");
            }
            NodeList nodeList3 = (NodeList) newXPath.compile(".//Companion").evaluate(node, XPathConstants.NODESET);
            if (nodeList3.getLength() >= 1) {
                c(nodeList3.item(0), aVar);
            }
        } catch (XPathExpressionException e) {
            a("VAST file error: " + e.getClass().getSimpleName() + ": " + e.getMessage(), e);
        }
    }

    private static void b(Node node, a aVar) throws SASVASTParsingException {
        int i = -1;
        try {
            XPath newXPath = XPathFactory.newInstance().newXPath();
            NodeList nodeList = (NodeList) newXPath.compile(".//ClickTracking").evaluate(node, XPathConstants.NODESET);
            int length = nodeList.getLength();
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                aVar.d.add(nodeList.item(i2).getTextContent().trim());
            }
            NodeList nodeList2 = (NodeList) newXPath.compile(".//ClickThrough").evaluate(node, XPathConstants.NODESET);
            if (nodeList2.getLength() > 0) {
                aVar.e = nodeList2.item(0).getTextContent().trim();
            }
            new ArrayList();
            NodeList nodeList3 = (NodeList) newXPath.compile(".//MediaFile").evaluate(node, XPathConstants.NODESET);
            int length2 = nodeList3.getLength();
            ArrayList arrayList = new ArrayList();
            int i3 = -1;
            int i4 = -1;
            String str = "";
            for (int i5 = 0; i5 < length2; i5++) {
                Node item = nodeList3.item(i5);
                NamedNodeMap attributes = item.getAttributes();
                String nodeValue = attributes.getNamedItem("type").getNodeValue();
                try {
                    i = Integer.parseInt(attributes.getNamedItem("bitrate").getNodeValue());
                } catch (Exception e) {
                }
                try {
                    str = attributes.getNamedItem("apiFramework").getNodeValue();
                } catch (Exception e2) {
                }
                try {
                    i4 = Integer.parseInt(attributes.getNamedItem("width").getNodeValue());
                } catch (Exception e3) {
                }
                try {
                    i3 = Integer.parseInt(attributes.getNamedItem("height").getNodeValue());
                } catch (Exception e4) {
                }
                String trim = item.getTextContent().trim();
                if ((trim == null || nodeValue == null || (!nodeValue.equalsIgnoreCase("video/mp4") && !nodeValue.equalsIgnoreCase("video/3gpp") && !nodeValue.equalsIgnoreCase("video/webm") && ((!nodeValue.equalsIgnoreCase("application/x-javascript") && !nodeValue.equalsIgnoreCase(WebRequest.CONTENT_TYPE_JAVASCRIPT)) || !"VPAID".equals(str)))) ? false : true) {
                    C0582c c0582c = new C0582c();
                    c0582c.f5454a = trim;
                    c0582c.b = nodeValue;
                    c0582c.c = i;
                    c0582c.d = str;
                    c0582c.e = i4;
                    c0582c.f = i3;
                    arrayList.add(c0582c);
                }
            }
            Collections.sort(arrayList);
            aVar.f5452a = (C0582c[]) arrayList.toArray(new C0582c[0]);
            NodeList nodeList4 = (NodeList) newXPath.compile(".//Tracking").evaluate(node, XPathConstants.NODESET);
            int length3 = nodeList4.getLength();
            HashMap<String, ArrayList<String>> hashMap = aVar.b;
            for (int i6 = 0; i6 < length3; i6++) {
                Node item2 = nodeList4.item(i6);
                String nodeValue2 = item2.getAttributes().getNamedItem("event").getNodeValue();
                String trim2 = item2.getTextContent().trim();
                if (!SASNativeVideoAdElement.TRACKING_EVENT_NAME_PROGRESS.equals(nodeValue2)) {
                    ArrayList<String> arrayList2 = hashMap.get(nodeValue2);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                        hashMap.put(nodeValue2, arrayList2);
                    }
                    arrayList2.add(trim2);
                }
            }
            Node namedItem = node.getAttributes().getNamedItem("skipoffset");
            if (namedItem != null) {
                aVar.f = namedItem.getNodeValue();
            }
            NodeList nodeList5 = (NodeList) newXPath.compile(".//AdParameters").evaluate(node, XPathConstants.NODESET);
            if (nodeList5.getLength() > 0) {
                aVar.h = nodeList5.item(0).getTextContent().trim();
            }
            NodeList nodeList6 = (NodeList) newXPath.compile(".//Duration").evaluate(node, XPathConstants.NODESET);
            if (nodeList6.getLength() > 0) {
                aVar.i = com.smartadserver.android.library.g.c.a(nodeList6.item(0).getTextContent().trim(), 0);
            }
        } catch (XPathExpressionException e5) {
            a("VAST file error: " + e5.getClass().getSimpleName() + ": " + e5.getMessage(), e5);
        }
    }

    private static void b(Node node, a aVar, long j) throws SASVASTParsingException {
        try {
            XPath newXPath = XPathFactory.newInstance().newXPath();
            NodeList nodeList = (NodeList) newXPath.compile(".//VASTAdTagURI").evaluate(node, XPathConstants.NODESET);
            if (nodeList.getLength() == 0) {
                a("Missing URI for VAST Wrapper");
            }
            c a2 = a(nodeList.item(0).getTextContent().trim(), false, j);
            aVar.f = a2.b();
            aVar.e = a2.f();
            aVar.f5452a = new C0582c[]{a2.a()};
            aVar.g = a2.c();
            aVar.h = a2.h();
            a(aVar.b, a2.e());
            aVar.c.addAll(a2.d());
            aVar.d.addAll(a2.g());
            NodeList nodeList2 = (NodeList) newXPath.compile(".//Impression").evaluate(node, XPathConstants.NODESET);
            int length = nodeList2.getLength();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                aVar.c.add(nodeList2.item(i).getTextContent().trim());
            }
            a aVar2 = new a();
            b(node, aVar2);
            aVar.d.addAll(aVar2.d);
            a(aVar.b, aVar2.b);
        } catch (XPathExpressionException e) {
            a("VAST file error: " + e.getMessage(), e);
        }
    }

    private static void a(HashMap<String, ArrayList<String>> hashMap, HashMap<String, ArrayList<String>> hashMap2) {
        for (Map.Entry<String, ArrayList<String>> entry : hashMap2.entrySet()) {
            String key = entry.getKey();
            ArrayList<String> value = entry.getValue();
            ArrayList<String> arrayList = hashMap.get(key);
            if (arrayList == null) {
                hashMap.put(key, new ArrayList<>(value));
            } else {
                arrayList.addAll(value);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056 A[Catch: XPathExpressionException -> 0x00ca, TryCatch #0 {XPathExpressionException -> 0x00ca, blocks: (B:3:0x0002, B:5:0x001e, B:7:0x0037, B:8:0x0040, B:10:0x0056, B:12:0x0078, B:13:0x007d, B:15:0x0091, B:16:0x009f, B:18:0x00b3, B:20:0x00c2), top: B:28:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0091 A[Catch: XPathExpressionException -> 0x00ca, TryCatch #0 {XPathExpressionException -> 0x00ca, blocks: (B:3:0x0002, B:5:0x001e, B:7:0x0037, B:8:0x0040, B:10:0x0056, B:12:0x0078, B:13:0x007d, B:15:0x0091, B:16:0x009f, B:18:0x00b3, B:20:0x00c2), top: B:28:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b3 A[Catch: XPathExpressionException -> 0x00ca, TryCatch #0 {XPathExpressionException -> 0x00ca, blocks: (B:3:0x0002, B:5:0x001e, B:7:0x0037, B:8:0x0040, B:10:0x0056, B:12:0x0078, B:13:0x007d, B:15:0x0091, B:16:0x009f, B:18:0x00b3, B:20:0x00c2), top: B:28:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c2 A[Catch: XPathExpressionException -> 0x00ca, TRY_LEAVE, TryCatch #0 {XPathExpressionException -> 0x00ca, blocks: (B:3:0x0002, B:5:0x001e, B:7:0x0037, B:8:0x0040, B:10:0x0056, B:12:0x0078, B:13:0x007d, B:15:0x0091, B:16:0x009f, B:18:0x00b3, B:20:0x00c2), top: B:28:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void c(Node node, a aVar) throws SASVASTParsingException {
        String str;
        int length;
        int i;
        try {
            XPath newXPath = XPathFactory.newInstance().newXPath();
            NodeList nodeList = (NodeList) newXPath.compile(".//StaticResource").evaluate(node, XPathConstants.NODESET);
            if (nodeList.getLength() > 0) {
                Node item = nodeList.item(0);
                if (b.a(item.getAttributes().getNamedItem(VastResourceXmlManager.CREATIVE_TYPE).getNodeValue())) {
                    str = item.getTextContent().trim();
                    NodeList nodeList2 = (NodeList) newXPath.compile(".//Tracking").evaluate(node, XPathConstants.NODESET);
                    length = nodeList2.getLength();
                    i = 0;
                    String str2 = null;
                    while (i < length) {
                        Node item2 = nodeList2.item(i);
                        String nodeValue = item2.getAttributes().getNamedItem("event").getNodeValue();
                        String trim = item2.getTextContent().trim();
                        if (!SASNativeVideoAdElement.TRACKING_EVENT_NAME_CREATIVE_VIEW.equals(nodeValue)) {
                            trim = str2;
                        }
                        i++;
                        str2 = trim;
                    }
                    NodeList nodeList3 = (NodeList) newXPath.compile(".//CompanionClickThrough").evaluate(node, XPathConstants.NODESET);
                    String trim2 = nodeList3.getLength() <= 0 ? nodeList3.item(0).getTextContent().trim() : null;
                    NodeList nodeList4 = (NodeList) newXPath.compile(".//CompanionClickTracking").evaluate(node, XPathConstants.NODESET);
                    String trim3 = nodeList4.getLength() <= 0 ? nodeList4.item(0).getTextContent().trim() : null;
                    if (str == null) {
                        aVar.j = new b(str, str2, trim2, trim3);
                        return;
                    }
                    return;
                }
            }
            str = null;
            NodeList nodeList22 = (NodeList) newXPath.compile(".//Tracking").evaluate(node, XPathConstants.NODESET);
            length = nodeList22.getLength();
            i = 0;
            String str22 = null;
            while (i < length) {
            }
            NodeList nodeList32 = (NodeList) newXPath.compile(".//CompanionClickThrough").evaluate(node, XPathConstants.NODESET);
            if (nodeList32.getLength() <= 0) {
            }
            NodeList nodeList42 = (NodeList) newXPath.compile(".//CompanionClickTracking").evaluate(node, XPathConstants.NODESET);
            if (nodeList42.getLength() <= 0) {
            }
            if (str == null) {
            }
        } catch (XPathExpressionException e) {
            a("VAST file error: " + e.getClass().getSimpleName() + ": " + e.getMessage(), e);
        }
    }
}
