package com.revmob.client;

import android.app.Activity;
import android.util.SparseArray;
import com.applovin.sdk.AppLovinErrorCodes;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.wallet.WalletConstants;
import com.revmob.RevMobAdsListener;
import com.revmob.RevMobParallaxMode;
import com.revmob.internal.RMLog;
import com.revmob.internal.l;
import com.revmob.internal.u;
import com.revmob.internal.w;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.json.JSONException;
/* loaded from: classes3.dex */
public class RevMobClient {
    private static Activity h;
    private static RevMobClient o;
    private String i;
    private boolean j = false;
    private RevMobParallaxMode k = RevMobParallaxMode.DISABLED;
    private boolean l = false;
    private boolean m = false;
    private RevMobAdsListener n;
    private static String e = "https://android.revmob.com";
    private static final SparseArray f = new SparseArray();
    private static final Map g = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    public static String f4785a = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
    public static String b = "9.2.3";
    public static String c = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
    public static String d = "9.2.3";

    static {
        f.put(200, "OK.");
        f.put(202, "OK.");
        f.put(AppLovinErrorCodes.NO_FILL, "Ad retrieval failed: No ads for this device/country right now or your App ID is paused.");
        f.put(WalletConstants.ERROR_CODE_INVALID_PARAMETERS, "No ad retrieved: did you set a valid App ID? Get one at http://revmob.com.");
        f.put(WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR, "No ad retrieved: did you set a valid Placement ID? Get one at http://revmob.com.");
        f.put(422, "Request requirements did not met. Did you set required permissions?");
        f.put(423, "Is your ad unit paused? Please, check it in the RevMob Console.");
        f.put(500, "Unexpected server error.");
        f.put(503, "Unexpected server error.");
        o = new RevMobClient();
    }

    public static RevMobClient a() {
        return o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2, String str3, String str4, boolean z) {
        String str5;
        if ((str == "videos" || str == AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO) && z) {
            str = "rewardedVideos";
            str2 = "rewardedVideos";
        }
        if (str4 != null && str4.length() == 24) {
            String str6 = "fetch_" + str + "_with_placement";
            str5 = g.containsKey(str6) ? ((String) g.get(str6)).replaceFirst("PLACEMENT_ID", str4) : e + String.format("/api/v4/mobile_apps/%s/placements/%s/%s/fetch_only.json", str3, str4, str2);
        } else {
            String str7 = "fetch_" + str;
            str5 = g.containsKey(str7) ? (String) g.get(str7) : e + String.format("/api/v4/mobile_apps/%s/%s/fetch_only.json", str3, str2);
        }
        return z ? (str == "fullscreens" || str == "fullscreen") ? str5 + "?video=true" : str5 : str5;
    }

    public static void a(int i) {
        if (i <= 1 || i >= 300) {
            RMLog.w("Invalid timeout.");
            return;
        }
        com.revmob.internal.c.f4798a = i;
        RMLog.i("Timeout changed to " + i + "s");
    }

    private void a(int i, f fVar) {
        String str = ((String) f.get(i, "RevMob did not answer as expected.")) + " (" + i + ")";
        RMLog.w(str);
        if (fVar != null) {
            fVar.b(str);
        }
        if (this.l) {
            if (this.n != null) {
                this.n.onRevMobSessionNotStarted(str);
            }
            this.l = false;
        }
    }

    public static void a(String str) {
        if (g.containsKey("errors")) {
            new com.revmob.internal.c().a((String) g.get("errors"), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        g.put(str, str2);
    }

    private void a(String str, String str2, f fVar) {
        if (!this.j) {
            RMLog.w("You must call RevMobAds.start(activity, APP_ID).");
        } else {
            b(str, str2, fVar);
        }
    }

    private void b(String str, String str2, f fVar) {
        new e(this, str, str2, fVar).start();
    }

    private void f(String str, f fVar) {
        com.revmob.a.e.c = true;
        a(str, com.revmob.a.e.a(), fVar);
    }

    public static void setSDKName(String str) {
        if (str != null) {
            f4785a = str;
            c = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
        }
    }

    public static void setSDKVersion(String str) {
        if (str != null) {
            b = str;
            d = "9.2.3";
        }
    }

    public final void a(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        if (!this.j) {
            RMLog.w("You must call RevMobAds.start(activity, APP_ID).");
            return;
        }
        h = activity;
        h.runOnUiThread(new d(this, str, revMobAdsListener));
    }

    public final void a(RevMobParallaxMode revMobParallaxMode) {
        this.k = revMobParallaxMode;
        if (revMobParallaxMode != RevMobParallaxMode.DISABLED) {
            RMLog.i("Parallax mode enabled");
        } else {
            RMLog.i("Parallax mode disabled");
        }
    }

    public final void a(a aVar) {
        if (aVar.f4786a != null) {
            a(aVar.f4786a, com.revmob.a.e.a(), new b(aVar.d, aVar.e));
        }
    }

    public final void a(String str, f fVar) {
        a(g.containsKey("install") ? (String) g.get("install") : e + String.format("/api/v4/mobile_apps/%s/install.json", this.i), str, fVar);
    }

    public final void a(String str, f fVar, int i) {
        f(i == 3 ? a(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "videos", this.i, str, true) : a(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "videos", this.i, str, false), fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(HttpResponse httpResponse, f fVar) {
        if (httpResponse == null) {
            a(0, fVar);
            return;
        }
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        if (statusCode != 200 && statusCode != 202) {
            a(statusCode, fVar);
            return;
        }
        String a2 = com.revmob.internal.c.a(httpResponse.getEntity());
        if (a2 == null) {
            RMLog.w("Bad response from server.");
            if (fVar == null) {
                return;
            }
            fVar.b("Bad response from server.");
            return;
        }
        try {
            l lVar = new l();
            if (fVar != null) {
                fVar.a(lVar.b(a2));
            }
            if (!this.l) {
                if (!this.m) {
                    return;
                }
                this.m = false;
                return;
            }
            this.l = false;
            if (this.n != null) {
                this.n.onRevMobSessionStarted();
                this.n.onRevMobSessionIsStarted();
            }
            RevMobClient revMobClient = o;
            String a3 = com.revmob.a.e.a();
            if (g.containsKey("user_information")) {
                String str = (String) g.get("user_information");
                try {
                    com.revmob.a.e.f.join();
                    revMobClient.b(str, a3, null);
                } catch (InterruptedException e2) {
                    u.a(e2, null, w.c, null, "notifyUserInformation");
                    e2.printStackTrace();
                }
            }
            this.m = true;
        } catch (NullPointerException e3) {
            u.a(e3, null, w.c, null, "handleSuccess3");
            RMLog.w("Error on parse response from server. Unknown error.");
            RMLog.d(a2, e3);
            if (fVar == null) {
                return;
            }
            fVar.b("Error on parse response from server. Unknown error.");
        } catch (OutOfMemoryError e4) {
            RMLog.w("It was not possible to load RevMob Ad because your device run out of RAM memory.");
            u.a(e4, null, w.c, null, "handleSuccess1");
            if (fVar == null) {
                return;
            }
            fVar.b("It was not possible to load RevMob Ad because your device run out of RAM memory.");
        } catch (JSONException e5) {
            RMLog.w("Error on parse response from server.");
            RMLog.d(a2, e5);
            u.a(e5, null, w.c, null, "handleSuccess2");
            if (fVar == null) {
                return;
            }
            fVar.b("Error on parse response from server.");
        }
    }

    public final boolean a(String str, String str2, f fVar, RevMobAdsListener revMobAdsListener) {
        if (this.i != null && !this.i.equals(str)) {
            RMLog.w("You can use just one App Id per application.");
            return false;
        }
        this.l = true;
        this.j = true;
        this.i = str;
        this.n = revMobAdsListener;
        b(e + String.format("/api/v4/mobile_apps/%s/sessions.json", str), str2, fVar);
        com.revmob.internal.c.f4798a = 30;
        return true;
    }

    public final RevMobParallaxMode b() {
        return this.k;
    }

    public final void b(a aVar) {
        if (aVar.g == null || !com.revmob.internal.c.h()) {
            return;
        }
        a(aVar.g, com.revmob.a.e.a(), (f) null);
    }

    public final void b(String str, f fVar) {
        f(a("fullscreen", "fullscreens", this.i, str, false), fVar);
    }

    public final String c() {
        return this.i;
    }

    public final void c(String str, f fVar) {
        f(a("fullscreen", "fullscreens", this.i, str, true), fVar);
    }

    public final void d(String str, f fVar) {
        f(a("banner", "banners", this.i, str, false), fVar);
    }

    public final void e(String str, f fVar) {
        f(a("link", "anchors", this.i, str, false), fVar);
    }
}
