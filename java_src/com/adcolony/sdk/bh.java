package com.adcolony.sdk;

import android.os.Looper;
import android.util.Pair;
import com.adcolony.sdk.AdColonyPubServices;
import com.adcolony.sdk.bn;
import com.facebook.GraphResponse;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
/* loaded from: classes.dex */
abstract class bh {

    /* renamed from: a  reason: collision with root package name */
    static final String f1170a = "digitalPackages";
    static final String b = "digitalRedemptions";
    static final String c = "customRewards";
    static final String d = "googleIap";
    static final String e = "amazonIap";
    static final String f = "productId";
    static final String g = "consumable";
    static final String h = "invisible";
    static final String i = "transactionId";
    static final int j = 0;
    static final int k = 1;
    static final String l = "transactions";
    static by m = new by(Looper.getMainLooper());
    private bu n = new bu();

    protected abstract String a();

    protected abstract void a(Map<String, Object> map);

    protected abstract void b();

    protected abstract void b(Map<String, Object> map);

    public synchronized void a(final String str, final int i2, final String str2, final Map<String, String> map, final Map<String, Object> map2, final String str3, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.1
            /* JADX WARN: Removed duplicated region for block: B:52:0x00f1  */
            /* JADX WARN: Removed duplicated region for block: B:55:0x013e  */
            @Override // com.adcolony.sdk.bv
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void a() {
                bn.a aVar;
                String str4;
                bn.a aVar2 = bn.a.YVOLVER_ERROR_NONE;
                if (str == null || str.isEmpty()) {
                    bkVar.a(bn.a.YVOLVER_ERROR_NULL_RESPONSE);
                } else if (i2 == 407) {
                    bkVar.a(bn.a.YVOLVER_ERROR_INVALID_SSL_DOMAIN);
                } else {
                    if (aVar2 == bn.a.YVOLVER_ERROR_NONE && (i2 < 200 || i2 >= 300)) {
                        aVar2 = bn.a.YVOLVER_ERROR_WEB_ERROR;
                    }
                    Map<String, Object> b2 = co.b(str);
                    if (b2 == null) {
                        bz.aK().a(bn.a.YVOLVER_ERROR_WEB_ERROR, "Error Occurred in handleResponse: JSON is null, this is the response=" + str, true, AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
                        bkVar.a(bn.a.YVOLVER_ERROR_WEB_ERROR);
                        return;
                    }
                    bn.a aVar3 = b2.containsKey("error") ? bn.a.YVOLVER_ERROR_WEB_ERROR : aVar2;
                    if (i2 >= 400 && i2 < 500 && b2.containsKey(bn.an) && ((Integer) b2.get(bn.an)).intValue() == 0) {
                        aVar3 = bn.a.YVOLVER_ERROR_NONE;
                    }
                    if (b2.containsKey(bn.am)) {
                        String str5 = (String) b2.get(bn.am);
                        if (str5.equals("bannedApp") || str5.equals("disabledApp") || str5.equals("serverMaintenance")) {
                            aVar = bn.a.YVOLVER_ERROR_NONE;
                            if ((str2 != null || (!str2.equals(bh.d) && !str2.equals(bh.e))) && aVar != bn.a.YVOLVER_ERROR_NONE) {
                                String str6 = "Error occurred in handleResponse: IAP";
                                if (b2.containsKey("error")) {
                                    String str7 = (String) b2.get("error");
                                    str6 = str6 + ": " + str7;
                                    cb.b(bh.this.a(), "localErr=" + str7 + ", errMsg=" + str6, true);
                                }
                                if (b2.containsKey("error_id")) {
                                    String str8 = (String) b2.get("error_id");
                                    String str9 = str6 + ": contains error_id";
                                    if (str8.equals("invalidConsumerKey")) {
                                        str9 = str9 + ": InvalidConsumerKey";
                                        aVar = bn.a.YVOLVER_ERROR_INVALIDCONSUMERKEY;
                                        bz.aK().a(aVar, "Error Occurred in handleResponse: InvalidConsumerKey", false, AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
                                    } else if (str8.equals("bannedApp")) {
                                        str9 = str9 + ": APP BANNED";
                                        aVar = bn.a.YVOLVER_ERROR_APP_BANNED;
                                        bz.aK().a(aVar, "Error Occurred in handleResponse: BANNED APP", false, AdColonyPubServices.ServiceAvailability.SERVICE_BANNED);
                                    }
                                    if (str8.equals("disabledApp")) {
                                        str4 = str9 + ": APP DISABLED";
                                        aVar = bn.a.YVOLVER_ERROR_APP_DISABLED;
                                    } else {
                                        str4 = str9 + ": " + str8;
                                    }
                                    cb.b(bh.this.a(), "Error id=" + str8 + ", message=" + str4);
                                }
                                bkVar.a(aVar);
                            }
                            if (str2 != null && !str2.equals("config")) {
                                cb.b(bh.this.a(), "requireSig: " + bz.aK().at().w(), true);
                                if (bz.aK().at().w() && aVar == bn.a.YVOLVER_ERROR_NONE && !bz.aK().a(b2, str3, str2)) {
                                    bz.aK().a(bn.a.YVOLVER_ERROR_MALFORMED_RESULTS, "Error Occurred in handleResponse: malformed results; signature not validated", true, AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
                                    bkVar.a(bn.a.YVOLVER_ERROR_MALFORMED_RESULTS);
                                    return;
                                }
                            }
                            if (str2 != null) {
                                if (str2.equals("config")) {
                                    bh.this.a(b2, map, map2, str3, bkVar);
                                } else if (str2.equals(Consts.CommandInit)) {
                                    bh.this.a(b2, map2, str3, bkVar);
                                } else if (str2.equals("digiStart")) {
                                    bh.this.a(b2, map, map2, bkVar);
                                } else if (str2.equals("digiFinish")) {
                                    bh.this.a(b2, map, bkVar);
                                } else if (str2.equals("customReward")) {
                                    bh.this.c(b2, map, map2, bkVar);
                                } else if (str2.equals("logs")) {
                                    bh.this.d(b2, map, map2, bkVar);
                                } else if (str2.equals("stats")) {
                                    bh.this.e(b2, map, map2, bkVar);
                                } else if (str2.equals(bh.d)) {
                                    bh.this.a(b2, map, map2, aVar, bkVar);
                                } else if (str2.equals(bh.e)) {
                                    bh.this.b(b2, map, map2, aVar, bkVar);
                                } else if (str2.equals("serverReward")) {
                                    bh.this.b(b2, map, map2, bkVar);
                                } else {
                                    bz.aK().a("Invalid method attempted: " + str2, bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) null);
                                    bkVar.a(bn.a.YVOLVER_ERROR_API_SUBMISSION);
                                }
                                bz.aK().b(b2, str3, str2);
                                if (str2.equals(Consts.CommandInit)) {
                                    bz.aK().J();
                                    return;
                                }
                                return;
                            }
                            bz.aK().a("handleResponseMethodNull", bn.b.YVOLVER_SEVERITY_ERROR, false, (Map<String, Object>) null);
                            bkVar.a(bn.a.YVOLVER_ERROR_API_SUBMISSION);
                            return;
                        }
                    }
                    aVar = aVar3;
                    if (str2 != null) {
                    }
                    String str62 = "Error occurred in handleResponse: IAP";
                    if (b2.containsKey("error")) {
                    }
                    if (b2.containsKey("error_id")) {
                    }
                    bkVar.a(aVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(String str, Map<String, String> map, String str2, boolean z, Map<String, Object> map2, int i2, bk bkVar) {
        if (bz.aK().x()) {
            cb.b(a(), "callEndpoint", true);
            a(bz.aK().r(), str, map, str2, z, map2, i2, bkVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(final String str, final String str2, final Map<String, String> map, final String str3, final boolean z, final Map<String, Object> map2, final int i2, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.3
            /* JADX WARN: Removed duplicated region for block: B:36:0x0141  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x0148  */
            /* JADX WARN: Removed duplicated region for block: B:95:0x0376  */
            @Override // com.adcolony.sdk.bv
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void a() {
                byte[] bArr;
                boolean z2;
                HttpURLConnection httpURLConnection;
                int i3;
                String str4;
                int i4;
                String str5;
                String str6;
                boolean z3;
                bn.a aVar;
                BufferedInputStream bufferedInputStream;
                bn.a aVar2 = bn.a.YVOLVER_ERROR_NONE;
                String str7 = "";
                int i5 = 0;
                int z4 = bz.aK().at().z();
                String str8 = "";
                byte[] bArr2 = null;
                cb.b(bh.this.a(), "callEndpointWithApiKey: " + (str2 == null ? "NULL" : str2) + ", timeout: " + z4, true);
                if (str2 == null) {
                    cb.b(bh.this.a(), "URL null network call.", true);
                    bkVar.a(bn.a.YVOLVER_ERROR_API_SUBMISSION);
                    return;
                }
                if (z) {
                    CookieHandler.setDefault(new CookieManager());
                }
                if (i2 == 0) {
                    cb.b(bh.this.a(), "GET was called", true);
                    str8 = co.a("GET", str, str2, new ArrayList());
                } else if (i2 == 1) {
                    cb.b(bh.this.a(), "POST was called", true);
                    ArrayList arrayList = new ArrayList();
                    TreeMap treeMap = new TreeMap();
                    String str9 = null;
                    if (str3 != null && !str3.equals("config")) {
                        str9 = Integer.toString(bz.aK().at().m());
                    }
                    if (str3 != null && !str3.equals("config") && str9 != null) {
                        treeMap.put("config_version", str9);
                    }
                    treeMap.put(Params.DEVICE_ID, bz.aK().ar().j());
                    if (map != null) {
                        treeMap.putAll(map);
                    }
                    for (Map.Entry entry : treeMap.entrySet()) {
                        arrayList.add(entry);
                    }
                    StringBuilder sb = new StringBuilder();
                    Iterator it = arrayList.iterator();
                    boolean z5 = true;
                    while (it.hasNext()) {
                        Map.Entry entry2 = (Map.Entry) it.next();
                        if (z5) {
                            z2 = false;
                        } else {
                            sb.append("&");
                            z2 = z5;
                        }
                        try {
                            sb.append(URLEncoder.encode((String) entry2.getKey(), "UTF-8"));
                            sb.append("=");
                            sb.append(URLEncoder.encode((String) entry2.getValue(), "UTF-8"));
                        } catch (UnsupportedEncodingException e2) {
                            cb.a(bh.this.a(), "Caught Exception->" + e2.getMessage(), e2);
                        }
                        z5 = z2;
                    }
                    try {
                        bArr = sb.toString().getBytes("UTF-8");
                    } catch (UnsupportedEncodingException e3) {
                        cb.a(bh.this.a(), "Caught Exception->" + e3.getMessage(), e3);
                        bArr = null;
                    }
                    str8 = co.a("POST", str, str2, arrayList);
                    bArr2 = bArr;
                }
                cb.b(bh.this.a(), "urlConnection initialized", true);
                HttpURLConnection httpURLConnection2 = null;
                try {
                    URL url = new URL(str2);
                    String e4 = bz.aK().e(str);
                    if (str2.substring(0, 5).equals("https")) {
                        httpURLConnection = (HttpsURLConnection) url.openConnection();
                    } else {
                        httpURLConnection = (HttpURLConnection) url.openConnection();
                    }
                    try {
                        httpURLConnection.setReadTimeout(z4);
                        httpURLConnection.setConnectTimeout(z4);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setRequestProperty("User-Agent", e4);
                        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                        httpURLConnection.setChunkedStreamingMode(0);
                        if (i2 != 1) {
                            httpURLConnection.setRequestProperty("Authorization", str8);
                        } else if (i2 == 1) {
                            httpURLConnection.setRequestMethod("POST");
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setRequestProperty("Authorization", str8);
                            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(bufferedOutputStream);
                            gZIPOutputStream.write(bArr2);
                            gZIPOutputStream.flush();
                            gZIPOutputStream.close();
                            bufferedOutputStream.close();
                        }
                        i3 = httpURLConnection.getResponseCode();
                        try {
                            str4 = httpURLConnection.getResponseMessage();
                        } catch (SocketTimeoutException e5) {
                            str4 = str7;
                        } catch (SSLHandshakeException e6) {
                            i5 = i3;
                            HttpURLConnection httpURLConnection3 = httpURLConnection;
                            e = e6;
                            httpURLConnection2 = httpURLConnection3;
                        } catch (SSLPeerUnverifiedException e7) {
                            i5 = i3;
                            HttpURLConnection httpURLConnection4 = httpURLConnection;
                            e = e7;
                            httpURLConnection2 = httpURLConnection4;
                        } catch (Exception e8) {
                            i5 = i3;
                            HttpURLConnection httpURLConnection5 = httpURLConnection;
                            e = e8;
                            httpURLConnection2 = httpURLConnection5;
                        }
                        try {
                            if (i3 >= 400) {
                                bufferedInputStream = new BufferedInputStream(httpURLConnection.getErrorStream());
                            } else {
                                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                            }
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(bufferedInputStream));
                            StringBuffer stringBuffer = new StringBuffer();
                            while (true) {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                stringBuffer.append(readLine);
                            }
                            bufferedInputStream.close();
                            i4 = i3;
                            aVar = aVar2;
                            str5 = "A fatal error occurred when calling Endpoint";
                            str6 = stringBuffer.toString();
                            z3 = false;
                        } catch (SocketTimeoutException e9) {
                            aVar = bn.a.YVOLVER_ERROR_TIMEOUT;
                            str5 = "A fatal error occurred when calling Endpoint";
                            z3 = false;
                            int i6 = i3;
                            str6 = str4;
                            i4 = i6;
                            if (httpURLConnection != null) {
                            }
                            if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                            }
                        } catch (SSLHandshakeException e10) {
                            i5 = i3;
                            str7 = str4;
                            httpURLConnection2 = httpURLConnection;
                            e = e10;
                            HttpURLConnection httpURLConnection6 = httpURLConnection2;
                            i4 = i5;
                            str5 = "A SSLHandshake error occured when calling enpoint->" + e.getMessage();
                            httpURLConnection = httpURLConnection6;
                            str6 = str7;
                            z3 = true;
                            aVar = bn.a.YVOLVER_ERROR_SSL;
                            if (httpURLConnection != null) {
                            }
                            if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                            }
                        } catch (SSLPeerUnverifiedException e11) {
                            i5 = i3;
                            str7 = str4;
                            httpURLConnection2 = httpURLConnection;
                            e = e11;
                            HttpURLConnection httpURLConnection7 = httpURLConnection2;
                            i4 = i5;
                            str5 = "A SSLPeerUnverified error occurred while calling endpoint->" + e.getMessage();
                            httpURLConnection = httpURLConnection7;
                            str6 = str7;
                            z3 = true;
                            aVar = bn.a.YVOLVER_ERROR_SSL;
                            if (httpURLConnection != null) {
                            }
                            if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                            }
                        } catch (Exception e12) {
                            i5 = i3;
                            str7 = str4;
                            httpURLConnection2 = httpURLConnection;
                            e = e12;
                            HttpURLConnection httpURLConnection8 = httpURLConnection2;
                            i4 = i5;
                            str5 = "An exception occurred while calling enpoint ->" + e.getMessage();
                            httpURLConnection = httpURLConnection8;
                            str6 = str7;
                            z3 = true;
                            aVar = bn.a.YVOLVER_ERROR_API_SUBMISSION;
                            if (httpURLConnection != null) {
                            }
                            if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                            }
                        }
                    } catch (SocketTimeoutException e13) {
                        i3 = 0;
                        str4 = str7;
                    } catch (SSLHandshakeException e14) {
                        httpURLConnection2 = httpURLConnection;
                        e = e14;
                    } catch (SSLPeerUnverifiedException e15) {
                        httpURLConnection2 = httpURLConnection;
                        e = e15;
                    } catch (Exception e16) {
                        httpURLConnection2 = httpURLConnection;
                        e = e16;
                    }
                } catch (SocketTimeoutException e17) {
                    httpURLConnection = null;
                    i3 = 0;
                    str4 = str7;
                } catch (SSLHandshakeException e18) {
                    e = e18;
                } catch (SSLPeerUnverifiedException e19) {
                    e = e19;
                } catch (Exception e20) {
                    e = e20;
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                    bh.this.a(str6, i4, str3, map, map2, str, bkVar);
                    return;
                }
                String str10 = "An error occurred when calling endpoint: " + aVar;
                if (z3) {
                    bz.aK().a(aVar, str5, true, AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
                } else {
                    cb.b(bh.this.a(), str10);
                }
                bkVar.a(aVar);
            }
        });
    }

    public synchronized void a(final Map<String, Object> map, Map<String, Object> map2, String str, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.4
            @Override // com.adcolony.sdk.bv
            public void a() {
                List<Map<String, Object>> list;
                if (map.containsKey("assets") && (list = (List) map.get("assets")) != null) {
                    bz.aK().as().a(list);
                }
                bh.this.a(map);
                bkVar.a(bn.a.YVOLVER_ERROR_NONE);
            }
        });
    }

    public synchronized void a(final Map<String, Object> map, final Map<String, String> map2, Map<String, Object> map3, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.5
            @Override // com.adcolony.sdk.bv
            public void a() {
                boolean z;
                int i2;
                String str;
                String str2 = (String) map2.get("product_id");
                if (map.containsKey(bh.g)) {
                    int parseInt = Integer.parseInt((String) map.get(bh.g));
                    i2 = parseInt;
                    z = parseInt == 1;
                } else {
                    z = false;
                    i2 = 1;
                }
                if (!map.containsKey("transaction_id")) {
                    str = null;
                } else {
                    str = (String) map.get("transaction_id");
                }
                Map<String, Object> a2 = co.a(bh.b, true);
                HashMap hashMap = new HashMap();
                hashMap.put("status", Integer.valueOf(ci.d));
                hashMap.put(bh.g, Integer.valueOf(i2));
                hashMap.put("transactionId", str);
                a2.put(str, hashMap);
                co.a(bh.b, a2);
                bz.aK().ay().a("");
                HashMap hashMap2 = new HashMap();
                hashMap2.put("productId", str2);
                hashMap2.put(bh.g, Boolean.valueOf(z));
                hashMap2.put("transactionId", str);
                bkVar.a(bn.a.YVOLVER_ERROR_NONE);
            }
        });
    }

    public synchronized void b(Map<String, Object> map, Map<String, String> map2, Map<String, Object> map3, bk bkVar) {
    }

    public synchronized void a(final Map<String, Object> map, Map<String, String> map2, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.6
            @Override // com.adcolony.sdk.bv
            public void a() {
                boolean z;
                if (map.containsKey(bh.l)) {
                    ArrayList arrayList = (ArrayList) map.get(bh.l);
                    ArrayList arrayList2 = new ArrayList();
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        int intValue = ((Integer) ((Map) arrayList.get(i2)).get(bn.an)).intValue();
                        String str = (String) ((Map) arrayList.get(i2)).get("transaction_id");
                        boolean booleanValue = map.containsKey("retry") ? ((Boolean) map.get("retry")).booleanValue() : true;
                        if (intValue == 0) {
                            z = true;
                        } else {
                            z = (intValue == 100 || !booleanValue) ? false : false;
                        }
                        arrayList2.add(new Pair(str, Boolean.valueOf(z)));
                    }
                    if (cp.b().e()) {
                        if (cp.b().c() != null) {
                            cp.b().c().e();
                        } else {
                            bz.aK().a(new RuntimeException("Tried to call packageComplete when overlayIsVisible, but OverlayActivity is null"), "YvolverBaseNetworking.handleRedemptionFinish");
                        }
                    } else if (bz.aK().az().j()) {
                        bz.aK().az().n();
                    }
                    bz.aK().ay().a(arrayList2);
                }
                bkVar.a(bn.a.YVOLVER_ERROR_NONE);
            }
        });
    }

    public synchronized void c(final Map<String, Object> map, Map<String, String> map2, final Map<String, Object> map3, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.7
            @Override // com.adcolony.sdk.bv
            public void a() {
                String str = (String) map3.get("rewardKey");
                if (map.containsKey("retry") && !((Boolean) map.get("retry")).booleanValue()) {
                    cb.b(bh.this.a(), "retry false code was executed", true);
                    if (co.a(bh.c, false) != null) {
                        Map<String, Object> a2 = co.a(bh.c, false);
                        a2.remove(str);
                        co.a(bh.c, a2);
                    }
                }
                bkVar.a(bn.a.YVOLVER_ERROR_NONE);
            }
        });
    }

    public synchronized void d(final Map<String, Object> map, Map<String, String> map2, final Map<String, Object> map3, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.8
            @Override // com.adcolony.sdk.bv
            public void a() {
                int intValue = ((Integer) map3.get("lastQueuedMessageId")).intValue();
                int intValue2 = ((Integer) map3.get("latestMessageLogged")).intValue();
                if (map.containsKey("status") && map.get("status").equals(0)) {
                    bz.aK().aC().b(intValue);
                    cb.b(bh.this.a(), "lastMessage: " + bz.aK().aC().f1273a, true);
                    if (intValue < intValue2) {
                        bz.aK().ax().a(true);
                    }
                }
                bz.aK().ax().b(false);
                bkVar.a(bn.a.YVOLVER_ERROR_NONE);
            }
        });
    }

    public synchronized void a(final ArrayList<Object> arrayList) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.9
            @Override // com.adcolony.sdk.bv
            public void a() {
                cb.b(bh.this.a(), "parseStats() called, " + arrayList.size() + " items.", true);
                ArrayList<HashMap<String, Object>> arrayList2 = new ArrayList<>();
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < arrayList.size()) {
                        HashMap<String, Object> hashMap = new HashMap<>();
                        for (Map.Entry entry : ((HashMap) arrayList.get(i3)).entrySet()) {
                            hashMap.put((String) entry.getKey(), entry.getValue());
                        }
                        arrayList2.add(hashMap);
                        i2 = i3 + 1;
                    } else {
                        bz.aK().av().a(arrayList2);
                        return;
                    }
                }
            }
        });
    }

    public synchronized void e(final Map<String, Object> map, Map<String, String> map2, final Map<String, Object> map3, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.10
            @Override // com.adcolony.sdk.bv
            public void a() {
                Collection<Map<String, Object>> collection = (Collection) map3.get(GraphResponse.SUCCESS_KEY);
                Collection<Map<String, Object>> collection2 = (Collection) map3.get("failed");
                if (map.containsKey("stats")) {
                    ArrayList<Object> arrayList = (ArrayList) map.get("stats");
                    cb.b(bh.this.a(), "handleStats stats:" + arrayList, true);
                    bh.this.a(arrayList);
                } else {
                    cb.b(bh.this.a(), "handleStats, no stats in results", true);
                }
                if (map.containsKey("retry") && !((Boolean) map.get("retry")).booleanValue()) {
                    collection2.addAll(collection);
                    bz.aK().av().b(collection2);
                    bz.aK().av().a(collection);
                }
                bz.aK().av().a(collection2);
                bz.aK().av().a(0L);
                bkVar.a(bn.a.YVOLVER_ERROR_NONE);
            }
        });
    }

    public synchronized void a(final Map<String, Object> map, Map<String, String> map2, Map<String, Object> map3, final String str, final bk bkVar) {
        this.n.a(new bv() { // from class: com.adcolony.sdk.bh.2
            @Override // com.adcolony.sdk.bv
            public void a() {
                String str2;
                bn.a aVar = bn.a.YVOLVER_ERROR_NONE;
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    if (i2 != 0) {
                        break;
                    } else if (!map.containsKey(bn.am) || (str2 = (String) map.get(bn.am)) == null || (!str2.equals("bannedApp") && !str2.equals("serverMaintenance"))) {
                        bz.aK().at().a(map);
                        bh.this.b(map);
                        bz.aK().m(bz.aK().at().j());
                        if (map.containsKey("old_keys")) {
                            bz.aK().e((ArrayList) map.get("old_keys"));
                        }
                        bh.this.b();
                        if (bz.aK().at().w() && !bz.aK().a(map, str, "config")) {
                            aVar = bn.a.YVOLVER_ERROR_MALFORMED_RESULTS;
                            bz.aK().a(aVar, "Malformed results detected from invalid JSON response", true, AdColonyPubServices.ServiceAvailability.SERVICE_UNAVAILABLE);
                            break;
                        }
                        i2 = i3;
                    }
                }
                bz.aK().a(bn.a(str2));
                if (str2.equals("bannedApp")) {
                    aVar = bn.a.YVOLVER_ERROR_APP_BANNED;
                    bz.aK().a(aVar, "This app is banned.", false, AdColonyPubServices.ServiceAvailability.SERVICE_BANNED);
                }
                if (str2.equals("serverMaintenance")) {
                    aVar = bn.a.YVOLVER_ERROR_SERVER_MAINTENANCE;
                }
                bkVar.a(aVar);
            }
        });
    }

    public synchronized void a(Map<String, Object> map, Map<String, String> map2, Map<String, Object> map3, bn.a aVar, bk bkVar) {
        int i2 = 0;
        synchronized (this) {
            try {
                cb.b(a(), "handleGoogleIap was called", true);
                String str = "";
                boolean booleanValue = map.containsKey("retry") ? ((Boolean) map.get("retry")).booleanValue() : true;
                if (map.containsKey("iap_product_id")) {
                    str = (String) map.get("iap_product_id");
                }
                if (map.containsKey("currency_bonus")) {
                    i2 = ((Integer) map.get("currency_bonus")).intValue();
                    HashMap hashMap = new HashMap();
                    hashMap.put("value", Integer.valueOf(i2));
                    hashMap.put("iap_transaction_id", map2.get("iap_transaction_id"));
                    hashMap.put("iap_product_id", str);
                    bz.aK().a("iapCurrencyBonusAvailable", bn.b.YVOLVER_SEVERITY_DEBUG, false, (Map<String, Object>) hashMap);
                }
                String str2 = map2.get("iap_transaction_id");
                if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                    if (!booleanValue) {
                        bz.aK().ay().f(map2.get("iap_transaction_id"));
                    }
                    cb.b(a(), "IAP reward success", true);
                    bz.aK().a(i2, str, str2, false);
                    if (bz.aK().m()) {
                        bz.aK().aB().a(str, i2, str2);
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put("value", Integer.valueOf(i2));
                        hashMap2.put("iap_transaction_id", map2.get("iap_transaction_id"));
                        hashMap2.put("iap_product_id", str);
                        bz.aK().a("iapCurrencyBonusGranted", bn.b.YVOLVER_SEVERITY_DEBUG, false, (Map<String, Object>) hashMap2);
                    }
                } else {
                    String str3 = "IAP Reward Failure: ";
                    String str4 = "";
                    if (map.containsKey("error_id")) {
                        String str5 = (String) map.get("error_id");
                        aVar = bn.a.YVOLVER_ERROR_API_SUBMISSION;
                        str3 = str3 + "errorId=" + str5;
                        if (str5.equals("invalidPayloadSignature")) {
                            aVar = bn.a.YVOLVER_ERROR_INVALID_IAP_PAYLOAD_SIGNATURE;
                            str3 = str3 + "Please check your Android secret key";
                        }
                        if (map.containsKey("error")) {
                            String str6 = (String) map.get("error");
                            str3 = str3 + str6;
                            str4 = str6;
                        }
                    }
                    bs bsVar = new bs(aVar, "IAP failure " + str4);
                    if (bz.aK().m()) {
                        bz.aK().aB().a(map2.get("iap_product_id"), bsVar.getMessage());
                    }
                    cb.b(a(), str3);
                    bz.aK().a(i2, str, str2, aVar.ordinal(), str4);
                }
                bkVar.a(aVar);
            } catch (Exception e2) {
                bz.aK().a(e2, "caught exception in Networking", true);
            }
        }
    }

    public synchronized void b(Map<String, Object> map, Map<String, String> map2, Map<String, Object> map3, bn.a aVar, bk bkVar) {
        boolean z = true;
        synchronized (this) {
            try {
                if (map.containsKey("retry")) {
                    z = ((Boolean) map.get("retry")).booleanValue();
                }
                if (map.containsKey("currency_bonus")) {
                }
                String str = map2.get("iap_transaction_id");
                String str2 = map2.get("iap_product_id");
                if (aVar == bn.a.YVOLVER_ERROR_NONE) {
                    if (!z) {
                        bz.aK().ay().g(str);
                    }
                    cb.b(a(), "IAP Reward Success", true);
                    if (bz.aK().m()) {
                        bz.aK().aB().a(str2, 0, str);
                    }
                } else {
                    String str3 = "IAP Reward Failure: ";
                    String str4 = "";
                    if (map.containsKey("error_id")) {
                        String str5 = (String) map.get("error_id");
                        aVar = bn.a.YVOLVER_ERROR_API_SUBMISSION;
                        str3 = str3 + "errorId=" + str5;
                        if (str5.equals("invalidPayloadSignature")) {
                            aVar = bn.a.YVOLVER_ERROR_INVALID_IAP_PAYLOAD_SIGNATURE;
                            str3 = str3 + "Please check your Android secret key";
                        }
                        if (map.containsKey("error")) {
                            String str6 = (String) map.get("error");
                            str3 = str3 + str6;
                            str4 = str6;
                        }
                    }
                    bs bsVar = new bs(aVar, "IAP failure " + str4);
                    if (bz.aK().m()) {
                        bz.aK().aB().a(map2.get("iap_product_id"), bsVar.getMessage());
                    }
                    cb.b(a(), str3);
                    bz.aK().a(0, str2, str, aVar.ordinal(), str4);
                }
                bkVar.a(aVar);
            } catch (Exception e2) {
                bz.aK().a(e2, "Caught exception in Networking", true);
            }
        }
    }
}
