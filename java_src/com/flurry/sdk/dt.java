package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class dt implements lg<dk> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2555a = dt.class.getSimpleName();

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ dk a(InputStream inputStream) throws IOException {
        return b(inputStream);
    }

    private static dk b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        String str = new String(ly.a(inputStream));
        km.a(5, f2555a, "SDK Log response string: " + str);
        dk dkVar = new dk();
        try {
            JSONObject jSONObject = new JSONObject(str);
            dkVar.f2536a = jSONObject.optString("result");
            dkVar.b = dr.a(jSONObject, "errors");
            return dkVar;
        } catch (JSONException e) {
            throw new IOException("Exception while deserialize:", e);
        }
    }

    @Override // com.flurry.sdk.lg
    public final /* synthetic */ void a(OutputStream outputStream, dk dkVar) throws IOException {
        throw new IOException(f2555a + " Serialize not supported for response");
    }
}
