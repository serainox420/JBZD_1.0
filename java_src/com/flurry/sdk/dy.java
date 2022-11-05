package com.flurry.sdk;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.a.a;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import com.unity3d.ads.adunit.AdUnitActivity;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class dy implements lg<cp> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2588a = dy.class.getSimpleName();

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, cp cpVar) throws IOException {
        JSONObject jSONObject;
        cp cpVar2 = cpVar;
        if (outputStream != null && cpVar2 != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.dy.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            JSONObject jSONObject2 = new JSONObject();
            try {
                try {
                    jSONObject2.put("requestTime", cpVar2.f2513a);
                    lz.a(jSONObject2, "apiKey", cpVar2.b);
                    lz.a(jSONObject2, "agentVersion", cpVar2.c);
                    lz.a(jSONObject2, "adViewType", cpVar2.d.toString());
                    lz.a(jSONObject2, "adSpaceName", cpVar2.e);
                    lz.a(jSONObject2, "adUnitSections", new JSONArray((Collection) cpVar2.f));
                    jSONObject2.put("isInternal", cpVar2.g);
                    jSONObject2.put("sessionId", cpVar2.h);
                    lz.a(jSONObject2, "bucketIds", new JSONArray((Collection) cpVar2.i));
                    lz.a(jSONObject2, "adReportedIds", c(cpVar2.j));
                    db dbVar = cpVar2.k;
                    JSONObject jSONObject3 = new JSONObject();
                    if (dbVar != null) {
                        lz.a(jSONObject3, "lat", dbVar.f2527a);
                        lz.a(jSONObject3, PhoenixConstants.LONGITUDE_PARAM, dbVar.b);
                    } else {
                        lz.a(jSONObject3, "lat", (float) BitmapDescriptorFactory.HUE_RED);
                        lz.a(jSONObject3, PhoenixConstants.LONGITUDE_PARAM, (float) BitmapDescriptorFactory.HUE_RED);
                    }
                    lz.a(jSONObject2, a.b.LOCATION, jSONObject3);
                    jSONObject2.put("testDevice", cpVar2.l);
                    lz.a(jSONObject2, "bindings", new JSONArray((Collection) cpVar2.m));
                    ct ctVar = cpVar2.n;
                    JSONObject jSONObject4 = new JSONObject();
                    if (ctVar == null) {
                        jSONObject4 = (JSONObject) JSONObject.NULL;
                    } else {
                        jSONObject4.put("viewWidth", ctVar.f2517a);
                        jSONObject4.put("viewHeight", ctVar.b);
                        jSONObject4.put("screenHeight", ctVar.d);
                        jSONObject4.put("screenWidth", ctVar.c);
                        lz.a(jSONObject4, "density", ctVar.e);
                        lz.a(jSONObject4, "screenSize", ctVar.f);
                        lz.a(jSONObject4, "screenOrientation", ctVar.g);
                    }
                    lz.a(jSONObject2, "adViewContainer", jSONObject4);
                    lz.a(jSONObject2, "locale", cpVar2.o);
                    lz.a(jSONObject2, PubMaticConstants.TIMEZONE_PARAM, cpVar2.p);
                    lz.a(jSONObject2, "osVersion", cpVar2.q);
                    lz.a(jSONObject2, "devicePlatform", cpVar2.r);
                    lz.a(jSONObject2, "appVersion", cpVar2.s);
                    lz.a(jSONObject2, "deviceBuild", cpVar2.t);
                    lz.a(jSONObject2, "deviceManufacturer", cpVar2.u);
                    lz.a(jSONObject2, "deviceModel", cpVar2.v);
                    lz.a(jSONObject2, "partnerCode", cpVar2.w);
                    lz.a(jSONObject2, "keywords", new JSONObject(cpVar2.x));
                    jSONObject2.put("canDoSKAppStore", cpVar2.y);
                    jSONObject2.put("networkStatus", cpVar2.z);
                    lz.a(jSONObject2, "frequencyCapRequestInfoList", b(cpVar2.A));
                    lz.a(jSONObject2, "streamInfoList", a(cpVar2.B));
                    jSONObject2.put("adTrackingEnabled", cpVar2.C);
                    lz.a(jSONObject2, "preferredLanguage", (Object) cpVar2.D);
                    lz.a(jSONObject2, "bcat", new JSONArray((Collection) cpVar2.E));
                    lz.a(jSONObject2, "userAgent", (Object) cpVar2.F);
                    dm dmVar = cpVar2.G;
                    JSONObject jSONObject5 = new JSONObject();
                    if (dmVar == null) {
                        jSONObject5.put("ageRange", -2);
                        jSONObject5.put("gender", -2);
                        lz.a(jSONObject5, "personas", Collections.emptyList());
                    } else {
                        jSONObject5.put("ageRange", dmVar.f2538a);
                        jSONObject5.put("gender", dmVar.b);
                        lz.a(jSONObject5, "personas", new JSONArray((Collection) dmVar.c));
                    }
                    lz.a(jSONObject2, "targetingOverride", jSONObject5);
                    jSONObject2.put("sendConfiguration", cpVar2.H);
                    lz.a(jSONObject2, "origins", new JSONArray((Collection) cpVar2.I));
                    jSONObject2.put("renderTime", cpVar2.J);
                    lz.a(jSONObject2, "clientSideRtbPayload", new JSONObject(cpVar2.K));
                    dc dcVar = cpVar2.L;
                    if (dcVar == null) {
                        jSONObject = (JSONObject) JSONObject.NULL;
                    } else {
                        jSONObject = new JSONObject();
                        if (dcVar.f2528a != null) {
                            lz.a(jSONObject, "requestedStyles", new JSONArray((Collection) dcVar.f2528a));
                        } else {
                            lz.a(jSONObject, "requestedStyles", new JSONArray((Collection) Collections.emptyList()));
                        }
                        if (dcVar.b != null) {
                            lz.a(jSONObject, "requestedAssets", new JSONArray((Collection) dcVar.b));
                        } else {
                            lz.a(jSONObject, "requestedAssets", JSONObject.NULL);
                        }
                    }
                    lz.a(jSONObject2, "nativeAdConfiguration", jSONObject);
                    lz.a(jSONObject2, "bCookie", (Object) cpVar2.M);
                    lz.a(jSONObject2, "appBundleId", (Object) cpVar2.N);
                    km.a(4, f2588a, "Ad Request String: " + jSONObject2.toString());
                    dataOutputStream.write(jSONObject2.toString().getBytes());
                    dataOutputStream.flush();
                } catch (JSONException e) {
                    throw new IOException("Invalid Json", e);
                }
            } finally {
                dataOutputStream.close();
            }
        }
    }

    private static JSONArray a(List<dl> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (dl dlVar : list) {
            JSONObject jSONObject = new JSONObject();
            lz.a(jSONObject, PubMaticConstants.AD_ID_PARAM, dlVar.f2537a);
            lz.a(jSONObject, "lastEvent", dlVar.b);
            jSONObject.put("renderedTime", dlVar.c);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private static JSONArray b(List<cy> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (cy cyVar : list) {
            JSONObject jSONObject = new JSONObject();
            lz.a(jSONObject, "capType", cyVar.f2522a);
            lz.a(jSONObject, "id", cyVar.b);
            jSONObject.put("serveTime", cyVar.c);
            jSONObject.put("expirationTime", cyVar.d);
            jSONObject.put("lastViewedTime", cyVar.e);
            jSONObject.put("streamCapDurationMillis", cyVar.f);
            jSONObject.put(AdUnitActivity.EXTRA_VIEWS, cyVar.g);
            jSONObject.put("capRemaining", cyVar.h);
            jSONObject.put("totalCap", cyVar.i);
            jSONObject.put("capDurationType", cyVar.j);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private static JSONArray c(List<co> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (co coVar : list) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", coVar.f2512a);
            lz.a(jSONObject, "id", coVar.b);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ cp a(InputStream inputStream) throws IOException {
        throw new IOException("Deserialize not supported for request");
    }
}
