package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class dz implements lg<cq> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2590a = dz.class.getSimpleName();

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ cq a(InputStream inputStream) throws IOException {
        return b(inputStream);
    }

    private static cq b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        String str = new String(ly.a(inputStream));
        km.a(4, f2590a, "Ad response string: " + str);
        cq cqVar = new cq();
        try {
            JSONObject jSONObject = new JSONObject(str);
            cqVar.f2514a = ea.a(jSONObject);
            cqVar.b = ea.b(jSONObject);
            cx cxVar = new cx();
            if (!jSONObject.isNull("configuration")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("configuration");
                if (!jSONObject2.isNull("com.flurry.adServer.networking.protocol.v16.Configuration")) {
                    JSONObject jSONObject3 = jSONObject2.getJSONObject("com.flurry.adServer.networking.protocol.v16.Configuration");
                    cw cwVar = new cw();
                    cwVar.f2520a = jSONObject3.getString("sdkAssetUrl");
                    cwVar.b = jSONObject3.getInt("cacheSizeMb");
                    cwVar.c = jSONObject3.getInt("maxAssetSizeKb");
                    cwVar.d = jSONObject3.getInt("maxBitRateKbps");
                    cxVar.f2521a = cwVar;
                }
            }
            cqVar.f = cxVar;
            cqVar.c = lz.b(jSONObject.getJSONArray("errors"));
            cqVar.e = jSONObject.optString("diagnostics");
            cqVar.d = jSONObject.optString("internalError");
            return cqVar;
        } catch (JSONException e) {
            throw new IOException("Exception while deserialize:", e);
        }
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, cq cqVar) throws IOException {
        throw new IOException("Serialize not supported for response");
    }
}
