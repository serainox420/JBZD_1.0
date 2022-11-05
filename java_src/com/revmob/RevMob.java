package com.revmob;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.widget.RelativeLayout;
import com.revmob.ads.banner.RevMobBanner;
import com.revmob.ads.interstitial.RevMobFullscreen;
import com.revmob.ads.link.RevMobLink;
import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
import com.revmob.internal.m;
import com.revmob.internal.u;
import com.revmob.internal.w;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.Calendar;
import java.util.List;
/* loaded from: classes.dex */
public class RevMob {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f4733a = false;
    public static boolean b = false;
    private static RevMob c;
    private static RelativeLayout d;
    private static RevMobBanner e;
    private static RelativeLayout.LayoutParams f;
    private static Activity g;
    private static RevMobAdsListener h;
    private static m i;
    private static com.revmob.client.g j;
    private static String k;

    protected RevMob(Activity activity, String str) {
        validateActivity(activity);
        boolean z = !new com.revmob.a.g(activity).b();
        com.revmob.internal.c.a((String) null, activity);
        com.revmob.internal.c.b((String) null, activity);
        com.revmob.internal.c.c(null, activity);
        com.revmob.internal.c.a(false, activity);
        j = new com.revmob.client.g(activity, z, h);
        com.revmob.a.e.a(str, j, h, activity);
        com.revmob.a.a.a(activity);
    }

    private RevMobBanner createBanner(Activity activity, String str, RevMobAdsListener revMobAdsListener, boolean z) {
        validateActivity(activity);
        RevMobBanner revMobBanner = new RevMobBanner(activity, revMobAdsListener);
        if (k == null) {
            k = "RevMob createBanner";
        }
        revMobBanner.f4745a = k;
        k = null;
        revMobBanner.setPlacementId(str);
        revMobBanner.setAutoShow(z);
        revMobBanner.load();
        return revMobBanner;
    }

    private void preloadBanner(Activity activity, int i2, int i3, int i4, int i5, int i6, String str, RevMobAdsListener revMobAdsListener) {
        if (e == null || g == null) {
            activity.runOnUiThread(new j(this, activity, str, revMobAdsListener, i3, i4, i5, i6, i2));
        } else {
            g.runOnUiThread(new i());
        }
    }

    private RevMobLink rawLink(Activity activity, RevMobAdsListener revMobAdsListener) {
        validateActivity(activity);
        return new RevMobLink(activity, revMobAdsListener);
    }

    private RevMobFullscreen returnFullScreen(Activity activity, String str, RevMobAdsListener revMobAdsListener, int i2) {
        validateActivity(activity);
        RevMobFullscreen revMobFullscreen = new RevMobFullscreen(activity, revMobAdsListener);
        revMobFullscreen.loadFullscreen(str, i2);
        return revMobFullscreen;
    }

    private RevMobFullscreen returnRewardedVideo(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        validateActivity(activity);
        RevMobFullscreen revMobFullscreen = new RevMobFullscreen(activity, revMobAdsListener);
        revMobFullscreen.loadRewardedVideo(str);
        return revMobFullscreen;
    }

    private RevMobFullscreen returnVideo(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        validateActivity(activity);
        RevMobFullscreen revMobFullscreen = new RevMobFullscreen(activity, revMobAdsListener);
        revMobFullscreen.loadVideo(str);
        return revMobFullscreen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int screenWidth(Activity activity) {
        return Math.min(activity.getWindowManager().getDefaultDisplay().getWidth(), activity.getWindowManager().getDefaultDisplay().getHeight());
    }

    public static RevMob session() {
        if (c == null) {
            RMLog.w("You must call RevMobAds.start(activity, APP_ID).");
        }
        return c;
    }

    public static RevMob start(Activity activity) {
        if (c == null) {
            try {
                return start(activity, activity.getPackageManager().getApplicationInfo(activity.getPackageName(), 128).metaData.getString("com.revmob.app.id"));
            } catch (PackageManager.NameNotFoundException e2) {
                u.a(e2, "", w.c, null, SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
                throw new RuntimeException("You must put the revmob.app.id value in the AndroidManifest.xml file.");
            }
        }
        return c;
    }

    @Deprecated
    public static RevMob start(Activity activity, String str) {
        if (c == null) {
            validatePermissions(activity);
            validateActivity(activity);
            validateFullscreenActivity(activity);
            k = null;
            c = new RevMob(activity, str);
        }
        return c;
    }

    public static RevMob startWithListener(Activity activity, RevMobAdsListener revMobAdsListener) {
        if (c == null) {
            try {
                String string = activity.getPackageManager().getApplicationInfo(activity.getPackageName(), 128).metaData.getString("com.revmob.app.id");
                h = revMobAdsListener;
                return start(activity, string);
            } catch (PackageManager.NameNotFoundException e2) {
                u.a(e2, null, w.c, null, "startWithListener");
                throw new RuntimeException("You must the revmob.app.id value in the AndroidManifest.xml file.");
            }
        }
        return c;
    }

    public static RevMob startWithListener(Activity activity, RevMobAdsListener revMobAdsListener, String str) {
        if (c == null) {
            h = revMobAdsListener;
            return start(activity, str);
        }
        return c;
    }

    public static RevMob startWithListenerForWrapper(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        if (c == null) {
            h = revMobAdsListener;
            return start(activity, str);
        }
        if (i != null) {
            i.b();
        }
        return c;
    }

    private static void validateActivity(Activity activity) {
        if (activity == null) {
            throw new RuntimeException("RevMob: Activity must not be a null value.");
        }
    }

    private static void validateFullscreenActivity(Activity activity) {
        if (!FullscreenActivity.a(activity).booleanValue()) {
            RMLog.e("You must declare the RevMob FullscreenActivity in the AndroidManifest.xml file");
        }
    }

    private static void validatePermissions(Activity activity) {
        if (!(activity.checkCallingOrSelfPermission(new StringBuilder("android.permission.").append("INTERNET").toString()) == 0)) {
            RMLog.e(String.format("Permission %s is required. Add it to your AndroidManifest.xml file", "INTERNET"));
        }
    }

    public void acceptAndDismissEula() {
        m a2 = j.a();
        i = a2;
        a2.c();
    }

    @Deprecated
    public RevMobBanner createBanner(Activity activity) {
        return createBanner(activity, null, null, true);
    }

    @Deprecated
    public RevMobBanner createBanner(Activity activity, RevMobAdsListener revMobAdsListener) {
        return createBanner(activity, null, revMobAdsListener, true);
    }

    @Deprecated
    public RevMobBanner createBanner(Activity activity, String str) {
        return createBanner(activity, str, null, true);
    }

    @Deprecated
    public RevMobBanner createBanner(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        return createBanner(activity, str, revMobAdsListener, true);
    }

    public RevMobFullscreen createFullscreen(Activity activity, RevMobAdsListener revMobAdsListener) {
        return returnFullScreen(activity, null, revMobAdsListener, 2);
    }

    public RevMobFullscreen createFullscreen(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        return returnFullScreen(activity, str, revMobAdsListener, 2);
    }

    public RevMobLink createLink(Activity activity, RevMobAdsListener revMobAdsListener) {
        return createLink(activity, null, revMobAdsListener);
    }

    public RevMobLink createLink(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        RevMobLink rawLink = rawLink(activity, revMobAdsListener);
        rawLink.load(str);
        return rawLink;
    }

    public RevMobFullscreen createRewardedVideo(Activity activity, RevMobAdsListener revMobAdsListener) {
        return returnRewardedVideo(activity, null, revMobAdsListener);
    }

    public RevMobFullscreen createRewardedVideo(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        return returnRewardedVideo(activity, str, revMobAdsListener);
    }

    public RevMobFullscreen createVideo(Activity activity, RevMobAdsListener revMobAdsListener) {
        return returnVideo(activity, null, revMobAdsListener);
    }

    public RevMobFullscreen createVideo(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        return returnVideo(activity, str, revMobAdsListener);
    }

    public RevMobParallaxMode getParallaxMode() {
        return RevMobClient.a().b();
    }

    public int getUserAgeRangeMax() {
        return com.revmob.a.h.c();
    }

    public int getUserAgeRangeMin() {
        return com.revmob.a.h.b();
    }

    public Calendar getUserBirthday() {
        return com.revmob.a.h.d();
    }

    public RevMobUserGender getUserGender() {
        return com.revmob.a.h.a();
    }

    public List getUserInterests() {
        return com.revmob.a.h.f();
    }

    public String getUserPage() {
        return com.revmob.a.h.e();
    }

    public void hideBanner(Activity activity) {
        hideLoadedBanner(activity);
    }

    public boolean hideLoadedBanner(Activity activity) {
        if (g == null || e == null) {
            return false;
        }
        g.runOnUiThread(new k());
        return true;
    }

    public boolean isRewardedVideoLoaded() {
        return b;
    }

    public boolean isVideoLoaded() {
        return f4733a;
    }

    public RevMobLink openLink(Activity activity, RevMobAdsListener revMobAdsListener) {
        return openLink(activity, null, revMobAdsListener);
    }

    public RevMobLink openLink(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        RevMobLink rawLink = rawLink(activity, revMobAdsListener);
        rawLink.open(str);
        return rawLink;
    }

    public RevMobBanner preLoadBanner(Activity activity) {
        return createBanner(activity, null, null, true);
    }

    public RevMobBanner preLoadBanner(Activity activity, RevMobAdsListener revMobAdsListener) {
        return createBanner(activity, null, revMobAdsListener, false);
    }

    public RevMobBanner preLoadBanner(Activity activity, String str) {
        return createBanner(activity, str, null, false);
    }

    public RevMobBanner preLoadBanner(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        return createBanner(activity, str, revMobAdsListener, false);
    }

    public void printEnvironmentInformation(Activity activity) {
        validateActivity(activity);
        com.revmob.a.e.a(RevMobClient.a().c(), activity);
    }

    public void rejectEula() {
        m a2 = j.a();
        i = a2;
        a2.d();
    }

    public void releaseBanner(Activity activity) {
        if (g != null) {
            g.runOnUiThread(new h());
        }
    }

    public void releaseLoadedBanner() {
        if (g != null) {
            releaseBanner(g);
        }
    }

    public void setParallaxMode(RevMobParallaxMode revMobParallaxMode) {
        RevMobClient.a().a(revMobParallaxMode);
    }

    public void setTimeoutInSeconds(int i2) {
        RevMobClient.a();
        RevMobClient.a(i2);
    }

    public void setUserAgeRangeMax(int i2) {
        com.revmob.a.h.b(i2);
    }

    public void setUserAgeRangeMin(int i2) {
        com.revmob.a.h.a(i2);
    }

    public void setUserBirthday(Calendar calendar) {
        com.revmob.a.h.a(calendar);
    }

    public void setUserEmail(String str) {
        com.revmob.a.h.b(str);
    }

    public void setUserGender(RevMobUserGender revMobUserGender) {
        com.revmob.a.h.a(revMobUserGender);
    }

    public void setUserInterests(List list) {
        com.revmob.a.h.a(list);
    }

    public void setUserPage(String str) {
        com.revmob.a.h.a(str);
    }

    public void showBanner(Activity activity) {
        showBanner(activity, null, null);
    }

    public void showBanner(Activity activity, int i2) {
        showBanner(activity, i2, null, null);
    }

    public void showBanner(Activity activity, int i2, int i3, int i4, int i5, int i6) {
        showBanner(activity, i2, i3, i4, i5, i6, null, null);
    }

    public void showBanner(Activity activity, int i2, int i3, int i4, int i5, int i6, String str, RevMobAdsListener revMobAdsListener) {
        k = "RevMob showBanner";
        if (i3 != -144 || i4 != -144 || i5 != -144 || i6 != -144) {
            k = "RevMob showBannerCustom";
        }
        preloadBanner(activity, i2, i3, i4, i5, i6, str, revMobAdsListener);
    }

    public void showBanner(Activity activity, int i2, String str, RevMobAdsListener revMobAdsListener) {
        showBanner(activity, i2, -144, -144, -144, -144, str, revMobAdsListener);
    }

    public void showBanner(Activity activity, RevMobAdsListener revMobAdsListener) {
        showBanner(activity, null, revMobAdsListener);
    }

    public void showBanner(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        showBanner(activity, 80, str, revMobAdsListener);
    }

    public void showFullscreen(Activity activity) {
        showFullscreen(activity, null, null);
    }

    public void showFullscreen(Activity activity, RevMobAdsListener revMobAdsListener) {
        showFullscreen(activity, null, revMobAdsListener);
    }

    public void showFullscreen(Activity activity, String str) {
        showFullscreen(activity, str, null);
    }

    public void showFullscreen(Activity activity, String str, RevMobAdsListener revMobAdsListener) {
        returnFullScreen(activity, str, revMobAdsListener, 0).setAutoShow(true);
    }
}
