package com.facebook.ads.internal.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.sdk.AppLovinEventParameters;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.j;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2072a = c.class.getSimpleName();
    private final Context b;
    private final String c;
    private final Uri d;
    private final Map<String, String> e;

    public c(Context context, String str, Uri uri, Map<String, String> map) {
        this.b = context;
        this.c = str;
        this.d = uri;
        this.e = map;
    }

    private Intent a(j jVar) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        if (!TextUtils.isEmpty(jVar.a()) && !TextUtils.isEmpty(jVar.b())) {
            intent.setComponent(new ComponentName(jVar.a(), jVar.b()));
        }
        if (!TextUtils.isEmpty(jVar.c())) {
            intent.setData(Uri.parse(jVar.c()));
        }
        return intent;
    }

    private Intent b(j jVar) {
        if (!TextUtils.isEmpty(jVar.a()) && g.a(this.b, jVar.a())) {
            String c = jVar.c();
            if (!TextUtils.isEmpty(c) && (c.startsWith("tel:") || c.startsWith("telprompt:"))) {
                return new Intent("android.intent.action.CALL", Uri.parse(c));
            }
            PackageManager packageManager = this.b.getPackageManager();
            if (TextUtils.isEmpty(jVar.b()) && TextUtils.isEmpty(c)) {
                return packageManager.getLaunchIntentForPackage(jVar.a());
            }
            Intent a2 = a(jVar);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(a2, 65536);
            if (a2.getComponent() == null) {
                Iterator<ResolveInfo> it = queryIntentActivities.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ResolveInfo next = it.next();
                    if (next.activityInfo.packageName.equals(jVar.a())) {
                        a2.setComponent(new ComponentName(next.activityInfo.packageName, next.activityInfo.name));
                        break;
                    }
                }
            }
            if (!queryIntentActivities.isEmpty() && a2.getComponent() != null) {
                return a2;
            }
            return null;
        }
        return null;
    }

    private List<j> f() {
        String queryParameter = this.d.getQueryParameter("appsite_data");
        if (TextUtils.isEmpty(queryParameter) || "[]".equals(queryParameter)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(queryParameter).optJSONArray(io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
            if (optJSONArray == null) {
                return arrayList;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                j a2 = j.a(optJSONArray.optJSONObject(i));
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            return arrayList;
        } catch (JSONException e) {
            Log.w(f2072a, "Error parsing appsite_data", e);
            return arrayList;
        }
    }

    @Override // com.facebook.ads.internal.a.a
    public c.a a() {
        return c.a.OPEN_STORE;
    }

    @Override // com.facebook.ads.internal.a.a
    public void b() {
        a(this.b, this.c, this.d, this.e);
        List<Intent> d = d();
        if (d != null) {
            for (Intent intent : d) {
                try {
                    this.b.startActivity(intent);
                    return;
                } catch (Exception e) {
                    Log.d(f2072a, "Failed to open app intent, falling back", e);
                }
            }
        }
        e();
    }

    protected Uri c() {
        String queryParameter = this.d.getQueryParameter("store_url");
        return !TextUtils.isEmpty(queryParameter) ? Uri.parse(queryParameter) : Uri.parse(String.format("market://details?id=%s", this.d.getQueryParameter(AppLovinEventParameters.IN_APP_PURCHASE_TRANSACTION_IDENTIFIER)));
    }

    protected List<Intent> d() {
        List<j> f = f();
        ArrayList arrayList = new ArrayList();
        if (f != null) {
            for (j jVar : f) {
                Intent b = b(jVar);
                if (b != null) {
                    arrayList.add(b);
                }
            }
        }
        return arrayList;
    }

    public void e() {
        try {
            h.a(this.b, c(), this.c);
        } catch (Exception e) {
            Log.d(f2072a, "Failed to open market url: " + this.d.toString(), e);
            String queryParameter = this.d.getQueryParameter("store_url_web_fallback");
            if (queryParameter == null || queryParameter.length() <= 0) {
                return;
            }
            try {
                h.a(this.b, Uri.parse(queryParameter), this.c);
            } catch (Exception e2) {
                Log.d(f2072a, "Failed to open fallback url: " + queryParameter, e2);
            }
        }
    }
}
