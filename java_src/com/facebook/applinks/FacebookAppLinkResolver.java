package com.facebook.applinks;

import android.net.Uri;
import android.os.Bundle;
import bolts.b;
import bolts.h;
import bolts.i;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class FacebookAppLinkResolver {
    private static final String APP_LINK_ANDROID_TARGET_KEY = "android";
    private static final String APP_LINK_KEY = "app_links";
    private static final String APP_LINK_TARGET_APP_NAME_KEY = "app_name";
    private static final String APP_LINK_TARGET_CLASS_KEY = "class";
    private static final String APP_LINK_TARGET_PACKAGE_KEY = "package";
    private static final String APP_LINK_TARGET_SHOULD_FALLBACK_KEY = "should_fallback";
    private static final String APP_LINK_TARGET_URL_KEY = "url";
    private static final String APP_LINK_WEB_TARGET_KEY = "web";
    private final HashMap<Uri, b> cachedAppLinks = new HashMap<>();

    public i<b> getAppLinkFromUrlInBackground(final Uri uri) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(uri);
        return getAppLinkFromUrlsInBackground(arrayList).c(new h<Map<Uri, b>, b>() { // from class: com.facebook.applinks.FacebookAppLinkResolver.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // bolts.h
            /* renamed from: then */
            public b mo109then(i<Map<Uri, b>> iVar) throws Exception {
                return iVar.f().get(uri);
            }
        });
    }

    public i<Map<Uri, b>> getAppLinkFromUrlsInBackground(List<Uri> list) {
        b bVar;
        final HashMap hashMap = new HashMap();
        final HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (Uri uri : list) {
            synchronized (this.cachedAppLinks) {
                bVar = this.cachedAppLinks.get(uri);
            }
            if (bVar != null) {
                hashMap.put(uri, bVar);
            } else {
                if (!hashSet.isEmpty()) {
                    sb.append(',');
                }
                sb.append(uri.toString());
                hashSet.add(uri);
            }
        }
        if (hashSet.isEmpty()) {
            return i.a(hashMap);
        }
        final i.a b = i.b();
        Bundle bundle = new Bundle();
        bundle.putString("ids", sb.toString());
        bundle.putString(GraphRequest.FIELDS_PARAM, String.format("%s.fields(%s,%s)", APP_LINK_KEY, "android", "web"));
        new GraphRequest(AccessToken.getCurrentAccessToken(), "", bundle, null, new GraphRequest.Callback() { // from class: com.facebook.applinks.FacebookAppLinkResolver.2
            @Override // com.facebook.GraphRequest.Callback
            public void onCompleted(GraphResponse graphResponse) {
                FacebookRequestError error = graphResponse.getError();
                if (error != null) {
                    b.b((Exception) error.getException());
                    return;
                }
                JSONObject jSONObject = graphResponse.getJSONObject();
                if (jSONObject == null) {
                    b.b((i.a) hashMap);
                    return;
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    Uri uri2 = (Uri) it.next();
                    if (jSONObject.has(uri2.toString())) {
                        try {
                            JSONObject jSONObject2 = jSONObject.getJSONObject(uri2.toString()).getJSONObject(FacebookAppLinkResolver.APP_LINK_KEY);
                            JSONArray jSONArray = jSONObject2.getJSONArray("android");
                            int length = jSONArray.length();
                            ArrayList arrayList = new ArrayList(length);
                            for (int i = 0; i < length; i++) {
                                b.a androidTargetFromJson = FacebookAppLinkResolver.getAndroidTargetFromJson(jSONArray.getJSONObject(i));
                                if (androidTargetFromJson != null) {
                                    arrayList.add(androidTargetFromJson);
                                }
                            }
                            b bVar2 = new b(uri2, arrayList, FacebookAppLinkResolver.getWebFallbackUriFromJson(uri2, jSONObject2));
                            hashMap.put(uri2, bVar2);
                            synchronized (FacebookAppLinkResolver.this.cachedAppLinks) {
                                FacebookAppLinkResolver.this.cachedAppLinks.put(uri2, bVar2);
                            }
                        } catch (JSONException e) {
                        }
                    }
                }
                b.b((i.a) hashMap);
            }
        }).executeAsync();
        return b.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b.a getAndroidTargetFromJson(JSONObject jSONObject) {
        Uri uri = null;
        String tryGetStringFromJson = tryGetStringFromJson(jSONObject, "package", null);
        if (tryGetStringFromJson == null) {
            return null;
        }
        String tryGetStringFromJson2 = tryGetStringFromJson(jSONObject, APP_LINK_TARGET_CLASS_KEY, null);
        String tryGetStringFromJson3 = tryGetStringFromJson(jSONObject, "app_name", null);
        String tryGetStringFromJson4 = tryGetStringFromJson(jSONObject, "url", null);
        if (tryGetStringFromJson4 != null) {
            uri = Uri.parse(tryGetStringFromJson4);
        }
        return new b.a(tryGetStringFromJson, tryGetStringFromJson2, uri, tryGetStringFromJson3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Uri getWebFallbackUriFromJson(Uri uri, JSONObject jSONObject) {
        Uri uri2 = null;
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("web");
            if (!tryGetBooleanFromJson(jSONObject2, APP_LINK_TARGET_SHOULD_FALLBACK_KEY, true)) {
                return null;
            }
            String tryGetStringFromJson = tryGetStringFromJson(jSONObject2, "url", null);
            if (tryGetStringFromJson != null) {
                uri2 = Uri.parse(tryGetStringFromJson);
            }
            return uri2 != null ? uri2 : uri;
        } catch (JSONException e) {
            return uri;
        }
    }

    private static String tryGetStringFromJson(JSONObject jSONObject, String str, String str2) {
        try {
            return jSONObject.getString(str);
        } catch (JSONException e) {
            return str2;
        }
    }

    private static boolean tryGetBooleanFromJson(JSONObject jSONObject, String str, boolean z) {
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException e) {
            return z;
        }
    }
}
