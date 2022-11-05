package com.crashlytics.android.beta;

import io.fabric.sdk.android.h;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.c;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
class CheckForUpdatesRequest extends a {
    static final String BETA_SOURCE = "3";
    static final String BUILD_VERSION = "build_version";
    static final String DISPLAY_VERSION = "display_version";
    static final String HEADER_BETA_TOKEN = "X-CRASHLYTICS-BETA-TOKEN";
    static final String INSTANCE = "instance";
    static final String SDK_ANDROID_DIR_TOKEN_TYPE = "3";
    static final String SOURCE = "source";
    private final CheckForUpdatesResponseTransform responseTransform;

    static String createBetaTokenHeaderValueFor(String str) {
        return "3:" + str;
    }

    public CheckForUpdatesRequest(h hVar, String str, String str2, c cVar, CheckForUpdatesResponseTransform checkForUpdatesResponseTransform) {
        super(hVar, str, str2, cVar, HttpMethod.GET);
        this.responseTransform = checkForUpdatesResponseTransform;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0120  */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v5, types: [io.fabric.sdk.android.services.network.HttpRequest] */
    /* JADX WARN: Type inference failed for: r2v6, types: [io.fabric.sdk.android.k] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CheckForUpdatesResponse invoke(String str, String str2, BuildProperties buildProperties) {
        HttpRequest httpRequest;
        Throwable th;
        CheckForUpdatesResponse checkForUpdatesResponse = null;
        try {
            try {
                Map<String, String> queryParamsFor = getQueryParamsFor(buildProperties);
                try {
                    HttpRequest applyHeadersTo = applyHeadersTo(getHttpRequest(queryParamsFor), str, str2);
                    io.fabric.sdk.android.c.h().a(Beta.TAG, "Checking for updates from " + getUrl());
                    io.fabric.sdk.android.c.h().a(Beta.TAG, "Checking for updates query params are: " + queryParamsFor);
                    if (applyHeadersTo.c()) {
                        io.fabric.sdk.android.c.h().a(Beta.TAG, "Checking for updates was successful");
                        checkForUpdatesResponse = this.responseTransform.fromJson(new JSONObject(applyHeadersTo.e()));
                        httpRequest = applyHeadersTo;
                        if (applyHeadersTo != null) {
                            String b = applyHeadersTo.b(a.HEADER_REQUEST_ID);
                            k h = io.fabric.sdk.android.c.h();
                            h.a("Fabric", "Checking for updates request ID: " + b);
                            httpRequest = h;
                        }
                    } else {
                        io.fabric.sdk.android.c.h().e(Beta.TAG, "Checking for updates failed. Response code: " + applyHeadersTo.b());
                        httpRequest = applyHeadersTo;
                        if (applyHeadersTo != null) {
                            String b2 = applyHeadersTo.b(a.HEADER_REQUEST_ID);
                            k h2 = io.fabric.sdk.android.c.h();
                            h2.a("Fabric", "Checking for updates request ID: " + b2);
                            httpRequest = h2;
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    io.fabric.sdk.android.c.h().e(Beta.TAG, "Error while checking for updates from " + getUrl(), e);
                    if (httpRequest != 0) {
                        String b3 = httpRequest.b(a.HEADER_REQUEST_ID);
                        httpRequest = io.fabric.sdk.android.c.h();
                        httpRequest.a("Fabric", "Checking for updates request ID: " + b3);
                    }
                    return checkForUpdatesResponse;
                }
            } catch (Throwable th2) {
                th = th2;
                if (httpRequest != 0) {
                    io.fabric.sdk.android.c.h().a("Fabric", "Checking for updates request ID: " + httpRequest.b(a.HEADER_REQUEST_ID));
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            httpRequest = 0;
        } catch (Throwable th3) {
            httpRequest = 0;
            th = th3;
            if (httpRequest != 0) {
            }
            throw th;
        }
        return checkForUpdatesResponse;
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String str, String str2) {
        return httpRequest.a("Accept", "application/json").a("User-Agent", a.CRASHLYTICS_USER_AGENT + this.kit.getVersion()).a(a.HEADER_DEVELOPER_TOKEN, a.CLS_ANDROID_SDK_DEVELOPER_TOKEN).a(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).a(a.HEADER_CLIENT_VERSION, this.kit.getVersion()).a(a.HEADER_API_KEY, str).a(HEADER_BETA_TOKEN, createBetaTokenHeaderValueFor(str2));
    }

    private Map<String, String> getQueryParamsFor(BuildProperties buildProperties) {
        HashMap hashMap = new HashMap();
        hashMap.put(BUILD_VERSION, buildProperties.versionCode);
        hashMap.put(DISPLAY_VERSION, buildProperties.versionName);
        hashMap.put(INSTANCE, buildProperties.buildId);
        hashMap.put("source", "3");
        return hashMap;
    }
}
