package com.smaato.soma.internal.c;

import com.google.firebase.a.a;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import org.json.JSONObject;
/* compiled from: SomaCalendar.java */
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private String f4982a;
    private String b;
    private String c;
    private String d;
    private String e;
    private JSONObject f;
    private String g;
    private String h;
    private String i;
    private String j;

    public j(final JSONObject jSONObject) {
        new com.smaato.soma.l<Void>() { // from class: com.smaato.soma.internal.c.j.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                j.this.f4982a = jSONObject.optString("id");
                j.this.b = jSONObject.optString("summary");
                j.this.c = jSONObject.optString("description");
                j.this.d = jSONObject.optString(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
                j.this.e = jSONObject.optString("end");
                JSONObject optJSONObject = jSONObject.optJSONObject("recurrence");
                if (optJSONObject != null) {
                    j.this.g = optJSONObject.optString("frequency");
                }
                j.this.h = jSONObject.optString(a.b.LOCATION);
                j.this.i = jSONObject.optString("status");
                j.this.j = jSONObject.optString("exceptionDates");
                return null;
            }
        }.c();
    }

    public final String a() {
        return this.f4982a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.e;
    }

    public final JSONObject f() {
        return this.f;
    }

    public final String g() {
        return this.g;
    }

    public final String h() {
        return this.h;
    }

    public final String i() {
        return this.i;
    }

    public final String j() {
        return this.j;
    }
}
