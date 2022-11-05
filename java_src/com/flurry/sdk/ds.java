package com.flurry.sdk;

import com.facebook.internal.NativeProtocol;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ds implements lg<dj> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2553a = ds.class.getSimpleName();

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, dj djVar) throws IOException {
        dj djVar2 = djVar;
        if (outputStream != null && djVar2 != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(outputStream) { // from class: com.flurry.sdk.ds.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            JSONObject jSONObject = new JSONObject();
            try {
                try {
                    lz.a(jSONObject, "apiKey", djVar2.f2535a);
                    jSONObject.put("testDevice", djVar2.f);
                    lz.a(jSONObject, "agentVersion", djVar2.e);
                    jSONObject.put("agentTimestamp", djVar2.d);
                    lz.a(jSONObject, "adReportedIds", a(djVar2.b));
                    lz.a(jSONObject, "sdkAdLogs", b(djVar2.c));
                    dataOutputStream.write(jSONObject.toString().getBytes());
                    dataOutputStream.flush();
                } catch (JSONException e) {
                    throw new IOException(f2553a + " Invalid SdkLogRequest: " + djVar2, e);
                }
            } finally {
                dataOutputStream.close();
            }
        }
    }

    private static JSONArray a(List<co> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (co coVar : list) {
            JSONObject jSONObject = new JSONObject();
            lz.a(jSONObject, "id", coVar.b);
            jSONObject.put("type", coVar.f2512a);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private static JSONArray b(List<di> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (di diVar : list) {
            JSONObject jSONObject = new JSONObject();
            lz.a(jSONObject, "adLogGUID", diVar.b);
            jSONObject.put("sessionId", diVar.f2534a);
            lz.a(jSONObject, "sdkAdEvents", c(diVar.c));
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    private static JSONArray c(List<dh> list) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (dh dhVar : list) {
            JSONObject jSONObject = new JSONObject();
            lz.a(jSONObject, "type", dhVar.f2533a);
            jSONObject.put("timeOffset", dhVar.c);
            lz.a(jSONObject, NativeProtocol.WEB_DIALOG_PARAMS, new JSONObject(dhVar.b));
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ dj a(InputStream inputStream) throws IOException {
        throw new IOException(f2553a + " Deserialize not supported for log request");
    }
}
