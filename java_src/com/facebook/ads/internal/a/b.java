package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2071a = b.class.getSimpleName();

    public static a a(Context context, String str, Uri uri, Map<String, String> map) {
        String authority = uri.getAuthority();
        String queryParameter = uri.getQueryParameter(BaseVideoPlayerActivity.VIDEO_URL);
        if (!TextUtils.isEmpty(uri.getQueryParameter("data"))) {
            try {
                JSONObject jSONObject = new JSONObject(uri.getQueryParameter("data"));
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    map.put(next, jSONObject.getString(next));
                }
            } catch (JSONException e) {
                Log.w(f2071a, "Unable to parse json data in AdActionFactory.", e);
            }
        }
        char c = 65535;
        switch (authority.hashCode()) {
            case -1458789996:
                if (authority.equals("passthrough")) {
                    c = 2;
                    break;
                }
                break;
            case 109770977:
                if (authority.equals("store")) {
                    c = 0;
                    break;
                }
                break;
            case 1546100943:
                if (authority.equals("open_link")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (queryParameter == null) {
                    return new c(context, str, uri, map);
                }
                return null;
            case 1:
                return new d(context, str, uri, map);
            case 2:
                return new e(context, str, uri, map);
            default:
                return new f(context, str, uri);
        }
    }

    public static boolean a(String str) {
        return "store".equalsIgnoreCase(str) || "open_link".equalsIgnoreCase(str);
    }
}
