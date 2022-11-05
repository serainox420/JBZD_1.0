package com.smaato.soma.internal.c;

import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.monetization.internal.imai.db.ClickDatabaseManager;
import com.mopub.mobileads.VastResourceXmlManager;
import com.openx.model.vast.CompanionAds;
import com.openx.model.vast.Impressions;
import com.openx.model.vast.MediaFiles;
import com.openx.model.vast.TrackingEvents;
import com.smaato.soma.AdType;
import com.smaato.soma.ErrorCode;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.ParserException;
import com.smaato.soma.mediation.CSMAdFormat;
import com.smaato.soma.mediation.o;
import com.smaato.soma.p;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.json.JSONArray;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
/* compiled from: ReceivedBannerParser.java */
/* loaded from: classes3.dex */
public class i implements l {

    /* renamed from: a  reason: collision with root package name */
    com.smaato.soma.internal.b f4981a = new com.smaato.soma.internal.b();
    com.smaato.soma.internal.d.c b = null;

    public void a() {
        try {
            if (this.f4981a != null) {
                this.f4981a.a((com.smaato.soma.internal.b.a) null);
                this.f4981a.a((List<String>) null);
                this.f4981a.a(CSMAdFormat.UNDEFINED);
                this.f4981a.a(false);
                this.f4981a.a(BannerStatus.ERROR);
                this.f4981a.a((String) null);
                this.f4981a.a((TreeMap<Integer, o>) null);
                this.f4981a.a(ErrorCode.NO_ERROR);
                this.f4981a.g("");
            }
        } catch (Exception e) {
        }
    }

    @Override // com.smaato.soma.internal.c.l
    public p a(InputStream inputStream, com.smaato.soma.internal.d.c cVar, boolean z) throws ParserException {
        Element documentElement;
        HttpURLConnection httpURLConnection;
        JSONObject jSONObject = null;
        int i = 0;
        try {
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setCoalescing(true);
            DocumentBuilder newDocumentBuilder = newInstance.newDocumentBuilder();
            a();
            if (z) {
                documentElement = null;
                jSONObject = a(inputStream);
            } else {
                Document parse = newDocumentBuilder.parse(inputStream);
                documentElement = parse != null ? parse.getDocumentElement() : null;
            }
            if (jSONObject != null && jSONObject.optJSONArray("networks") != null && jSONObject.optJSONArray("networks").length() > 0) {
                try {
                    String optString = jSONObject.optString("sessionid");
                    if (optString != null) {
                        this.f4981a.b(optString);
                    }
                    String optString2 = jSONObject.optString("passback");
                    if (optString2 != null) {
                        this.f4981a.a(b(optString2));
                    }
                    JSONArray optJSONArray = jSONObject.optJSONArray("networks");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        TreeMap<Integer, o> treeMap = new TreeMap<>();
                        while (i < optJSONArray.length()) {
                            o oVar = new o();
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                if (!optJSONObject.optString("name").isEmpty()) {
                                    oVar.c(optJSONObject.optString("name"));
                                }
                                if (!optJSONObject.optString(AdDatabaseHelper.COLUMN_APPID).isEmpty()) {
                                    oVar.g(b(optJSONObject.optString(AdDatabaseHelper.COLUMN_APPID)));
                                }
                                if (!optJSONObject.optString("adunitid").isEmpty()) {
                                    oVar.f(b(optJSONObject.optString("adunitid")));
                                }
                                oVar.d(b(optJSONObject.optString("impression")));
                                if (!optJSONObject.optString(ClickDatabaseManager.COLUMN_CLICK_URL).isEmpty()) {
                                    oVar.e(b(optJSONObject.optString(ClickDatabaseManager.COLUMN_CLICK_URL)));
                                }
                                if (!optJSONObject.optString("classname").isEmpty()) {
                                    oVar.a(b(optJSONObject.optString("classname")));
                                }
                                if (a(optJSONObject.optString("methodname"))) {
                                    oVar.b(b(optJSONObject.optString("methodname")));
                                }
                                oVar.a(optJSONObject.optInt("priority"));
                                oVar.c(optJSONObject.optInt("height"));
                                oVar.b(optJSONObject.optInt("width"));
                                if (optJSONObject.optString("customdata") != null) {
                                    oVar.a(h.a(optJSONObject.optString("customdata")));
                                }
                            }
                            treeMap.put(Integer.valueOf(oVar.e()), oVar);
                            i++;
                        }
                        this.f4981a.a(treeMap);
                        this.f4981a.a(AdType.ALL);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (jSONObject != null) {
                if (a(jSONObject.optString("type"))) {
                    String optString3 = jSONObject.optString("type");
                    if (optString3 != null && optString3.equals("CLIENTSIDEMEDIATION")) {
                        this.f4981a.a(ErrorCode.NO_AD_AVAILABLE);
                        this.f4981a.g("no Ad available");
                        return this.f4981a;
                    }
                    this.f4981a.a(AdType.getValueForString(optString3));
                }
                if (a(jSONObject.optString("sessionid"))) {
                    this.f4981a.b(jSONObject.optString("sessionid"));
                }
                if (a(jSONObject.optString("status"))) {
                    this.f4981a.a(BannerStatus.getValueForString(b(jSONObject.optString("status"))));
                }
                if (a(jSONObject.optString("mediadata"))) {
                    this.f4981a.c(jSONObject.optString("mediadata"));
                }
                if (a(jSONObject.optString("adtext"))) {
                    this.f4981a.e(jSONObject.optString("adtext"));
                }
                if (a(jSONObject.optString("link"))) {
                    this.f4981a.f(b(jSONObject.optString("link")));
                }
                JSONArray optJSONArray2 = jSONObject.optJSONArray("beacons");
                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    while (i < optJSONArray2.length()) {
                        arrayList.add(b(optJSONArray2.optString(i)));
                        i++;
                    }
                    this.f4981a.a(arrayList);
                }
                if (a(jSONObject.optString("errorcode"))) {
                    this.f4981a.a(ErrorCode.getValueForString(jSONObject.optString("errorcode")));
                }
                if (a(jSONObject.optString("errormessage"))) {
                    this.f4981a.g(jSONObject.optString("errormessage"));
                }
                if (a(jSONObject.optString("target"))) {
                    this.f4981a.d(b(jSONObject.optString("target")));
                }
                JSONObject optJSONObject2 = jSONObject.optJSONObject("SNAST");
                if (optJSONObject2 != null) {
                    com.smaato.soma.internal.b.a aVar = new com.smaato.soma.internal.b.a();
                    if (a(optJSONObject2.optString("adtitle"))) {
                        aVar.a(optJSONObject2.optString("adtitle"));
                    }
                    if (a(optJSONObject2.optString("adtext"))) {
                        aVar.b(optJSONObject2.optString("adtext"));
                    }
                    JSONArray optJSONArray3 = optJSONObject2.optJSONArray("iconimage");
                    if (optJSONArray3 != null && optJSONArray3.length() > 0 && a(((JSONObject) optJSONArray3.get(0)).optString("url"))) {
                        aVar.c(((JSONObject) optJSONArray3.get(0)).optString("url"));
                    }
                    JSONArray optJSONArray4 = optJSONObject2.optJSONArray("mainimage");
                    if (optJSONArray4 != null && optJSONArray4.length() > 0 && a(((JSONObject) optJSONArray4.get(0)).optString("url"))) {
                        aVar.d(((JSONObject) optJSONArray4.get(0)).optString("url"));
                        aVar.g(((JSONObject) optJSONArray4.get(0)).optString("url"));
                    }
                    if (a(optJSONObject2.optString(ClickDatabaseManager.COLUMN_CLICK_URL))) {
                        aVar.e(b(optJSONObject2.optString(ClickDatabaseManager.COLUMN_CLICK_URL)));
                    }
                    if (a(optJSONObject2.optString("starrating"))) {
                        aVar.a((float) optJSONObject2.optDouble("starrating"));
                    }
                    if (a(optJSONObject2.optString("ctatext"))) {
                        aVar.f(optJSONObject2.optString("ctatext"));
                    }
                    if (this.f4981a.g() != null && this.f4981a.g().size() > 0) {
                        aVar.a(new Vector<>(this.f4981a.g()));
                    }
                    this.f4981a.a(aVar);
                    this.f4981a.a(AdType.NATIVE);
                }
                return this.f4981a;
            } else if (documentElement != null && documentElement.getNodeName().equals("VAST")) {
                if (cVar == null) {
                    cVar = new com.smaato.soma.internal.d.c();
                }
                this.f4981a.a(ErrorCode.NO_AD_AVAILABLE);
                NodeList elementsByTagName = documentElement.getElementsByTagName(MediaFiles.VAST_MEDIAFILE);
                if (elementsByTagName.getLength() > 0) {
                    TreeMap treeMap2 = new TreeMap();
                    for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
                        Element element = (Element) elementsByTagName.item(i2);
                        if (element.getFirstChild() != null) {
                            String nodeValue = element.getFirstChild().getNodeValue();
                            String attribute = element.getAttribute("type");
                            if (attribute.equalsIgnoreCase("video/mp4") || attribute.equalsIgnoreCase("video/3gpp") || attribute.equalsIgnoreCase("video/m4v") || attribute.equalsIgnoreCase("video/mov")) {
                                try {
                                    treeMap2.put(Integer.valueOf(element.getAttribute("bitrate")), b(nodeValue));
                                } catch (Exception e2) {
                                }
                                cVar.a(b(nodeValue));
                                this.f4981a.a(ErrorCode.NO_ERROR);
                            }
                        }
                    }
                    if (treeMap2 != null && treeMap2.firstEntry() != null && treeMap2.firstEntry().getValue() != null) {
                        cVar.a(b((String) treeMap2.firstEntry().getValue()));
                    }
                }
                NodeList elementsByTagName2 = documentElement.getElementsByTagName("ClickThrough");
                if (elementsByTagName2.getLength() > 0) {
                    cVar.d(b(elementsByTagName2.item(0).getFirstChild().getNodeValue()));
                }
                NodeList elementsByTagName3 = documentElement.getElementsByTagName("ClickTracking");
                if (elementsByTagName3.getLength() > 0) {
                    for (int i3 = 0; i3 < elementsByTagName3.getLength(); i3++) {
                        Element element2 = (Element) elementsByTagName3.item(i3);
                        if (element2.getFirstChild() != null) {
                            cVar.e(b(element2.getFirstChild().getNodeValue()));
                        }
                    }
                }
                NodeList elementsByTagName4 = documentElement.getElementsByTagName("Duration");
                if (elementsByTagName4.getLength() > 0) {
                    Element element3 = (Element) elementsByTagName4.item(0);
                    if (element3.getFirstChild() != null) {
                        cVar.b(element3.getFirstChild().getNodeValue());
                    }
                }
                NodeList elementsByTagName5 = documentElement.getElementsByTagName(TrackingEvents.VAST_TRACKING);
                if (elementsByTagName5.getLength() > 0) {
                    for (int i4 = 0; i4 < elementsByTagName5.getLength(); i4++) {
                        Element element4 = (Element) elementsByTagName5.item(i4);
                        if (element4.getFirstChild() != null) {
                            cVar.a(element4.getAttribute("event"), b(element4.getFirstChild().getNodeValue()));
                        }
                    }
                }
                NodeList elementsByTagName6 = documentElement.getElementsByTagName(Impressions.VAST_IMPRESSION);
                if (elementsByTagName6.getLength() > 0) {
                    for (int i5 = 0; i5 < elementsByTagName6.getLength(); i5++) {
                        Element element5 = (Element) elementsByTagName6.item(i5);
                        if (element5.getFirstChild() != null) {
                            cVar.f(b(element5.getFirstChild().getNodeValue()));
                        }
                    }
                }
                NodeList elementsByTagName7 = documentElement.getElementsByTagName(CompanionAds.VAST_COMPANION);
                if (elementsByTagName7.getLength() > 0) {
                    for (int i6 = 0; i6 < elementsByTagName7.getLength(); i6++) {
                        Element element6 = (Element) elementsByTagName7.item(i6);
                        int parseInt = Integer.parseInt(element6.getAttribute("width"));
                        int parseInt2 = Integer.parseInt(element6.getAttribute("height"));
                        com.smaato.soma.internal.d.a aVar2 = new com.smaato.soma.internal.d.a();
                        aVar2.a(parseInt);
                        aVar2.b(parseInt2);
                        NodeList elementsByTagName8 = element6.getElementsByTagName(VastResourceXmlManager.STATIC_RESOURCE);
                        NodeList elementsByTagName9 = element6.getElementsByTagName(VastResourceXmlManager.HTML_RESOURCE);
                        if (elementsByTagName8.getLength() > 0) {
                            Element element7 = (Element) elementsByTagName8.item(0);
                            if (element7.getAttribute(VastResourceXmlManager.CREATIVE_TYPE).contains("image/")) {
                                aVar2.a(element7.getFirstChild().getNodeValue());
                            }
                        } else if (elementsByTagName9.getLength() > 0) {
                            aVar2.c(((Element) elementsByTagName9.item(0)).getFirstChild().getNodeValue());
                        }
                        if (element6.getElementsByTagName(TrackingEvents.VAST_TRACKING).getLength() > 0) {
                            for (int i7 = 0; i7 < elementsByTagName6.getLength(); i7++) {
                                Element element8 = (Element) elementsByTagName6.item(i7);
                                if (element8.getFirstChild() != null) {
                                    aVar2.d().add(b(element8.getFirstChild().getNodeValue()));
                                }
                            }
                        }
                        NodeList elementsByTagName10 = element6.getElementsByTagName("CompanionClickThrough");
                        if (elementsByTagName10.getLength() > 0) {
                            aVar2.b(b(elementsByTagName10.item(0).getFirstChild().getNodeValue()));
                        }
                        cVar.a(aVar2);
                    }
                }
                NodeList elementsByTagName11 = documentElement.getElementsByTagName("Wrapper");
                if (elementsByTagName11.getLength() > 0) {
                    URL url = new URL(b(((Element) elementsByTagName11.item(0)).getElementsByTagName("VASTAdTagURI").item(0).getFirstChild().getNodeValue()));
                    try {
                        if (com.smaato.soma.internal.requests.f.b().d() == null) {
                            httpURLConnection = (HttpURLConnection) url.openConnection();
                        } else {
                            httpURLConnection = (HttpURLConnection) url.openConnection(com.smaato.soma.internal.requests.f.b().d());
                        }
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.setConnectTimeout(5000);
                        httpURLConnection.setReadTimeout(5000);
                        httpURLConnection.setRequestProperty("User-Agent", com.smaato.soma.internal.requests.f.b().c());
                        httpURLConnection.connect();
                        return a(httpURLConnection.getInputStream(), cVar, false);
                    } catch (Exception e3) {
                    }
                }
                this.f4981a.a(cVar);
                this.f4981a.a(AdType.VAST);
            } else if (documentElement != null && jSONObject == null) {
                NodeList elementsByTagName12 = documentElement.getElementsByTagName("code");
                if (elementsByTagName12.getLength() > 0) {
                    Element element9 = (Element) elementsByTagName12.item(0);
                    if (element9.getFirstChild() != null) {
                        this.f4981a.a(ErrorCode.getValueForString(element9.getFirstChild().getNodeValue()));
                    }
                }
                NodeList elementsByTagName13 = documentElement.getElementsByTagName("desc");
                if (elementsByTagName13.getLength() > 0) {
                    Element element10 = (Element) elementsByTagName13.item(0);
                    if (element10.getFirstChild() != null) {
                        this.f4981a.g(element10.getFirstChild().getNodeValue());
                    }
                }
            } else {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA_PARSER", "Error during the XML parsing. Can't find the response tag.", 1, DebugCategory.WARNING));
                throw new ParserException("Error during the XML parsing. Can't find the response tag.", ErrorCode.PARSING_ERROR);
            }
            return this.f4981a;
        } catch (RuntimeException e4) {
            throw e4;
        } catch (Exception e5) {
            throw new ParserException("Error during the XML parsing.", ErrorCode.PARSING_ERROR);
        }
    }

    private String b(String str) {
        return str.trim().replace("\r", "").replace("\n", "");
    }

    private JSONObject a(InputStream inputStream) {
        JSONObject jSONObject;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"), 8);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine + "\n");
            }
            if (inputStream != null) {
                inputStream.close();
            }
            String sb2 = sb.toString();
            jSONObject = new JSONObject(sb2);
            try {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA_PARSER", "JSON string==" + sb2, 1, DebugCategory.DEBUG));
            } catch (Exception e) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("SOMA_PARSER", "Error converting result", 1, DebugCategory.ERROR));
                return jSONObject;
            }
        } catch (Exception e2) {
            jSONObject = null;
        }
        return jSONObject;
    }

    public boolean a(String str) {
        return str != null && !str.isEmpty();
    }
}
