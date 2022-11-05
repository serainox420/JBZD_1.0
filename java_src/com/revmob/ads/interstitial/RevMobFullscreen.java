package com.revmob.ads.interstitial;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Intent;
import com.mdotm.android.constants.MdotMConstants;
import com.revmob.FullscreenActivity;
import com.revmob.RevMob;
import com.revmob.RevMobAdsListener;
import com.revmob.client.RevMobClient;
import com.revmob.internal.RMLog;
import java.util.List;
/* loaded from: classes3.dex */
public class RevMobFullscreen implements com.revmob.ads.a.a {

    /* renamed from: a  reason: collision with root package name */
    private Activity f4759a;
    private com.revmob.ads.interstitial.a.b b;
    private RevMobAdsListener e;
    private com.revmob.ads.interstitial.a.a h;
    private boolean c = false;
    private boolean f = false;
    private boolean g = false;
    private boolean i = false;
    private int d = com.revmob.ads.a.c.f4742a;

    public RevMobFullscreen(Activity activity, RevMobAdsListener revMobAdsListener) {
        this.f4759a = activity;
        this.e = revMobAdsListener;
        this.h = new com.revmob.ads.interstitial.a.a(this, revMobAdsListener, activity);
    }

    private boolean isLoaded() {
        return this.b != null;
    }

    public void hide() {
        this.c = false;
        this.f4759a.finishActivity(0);
    }

    public void load(String str) {
        load(null, 2, str);
    }

    public void load(String str, int i) {
        load(str, i, null);
    }

    public void load(String str, int i, String str2) {
        String str3 = "Fullscreen ";
        if (i == 1) {
            RevMob.f4733a = false;
            this.f = true;
            this.g = false;
            str3 = "Video ";
        } else if (i == 3) {
            RevMob.b = false;
            this.f = true;
            this.g = true;
            str3 = "Rewarded Video ";
        } else {
            this.f = false;
        }
        if (this.d == com.revmob.ads.a.c.f4742a || this.d == com.revmob.ads.a.c.f) {
            this.d = com.revmob.ads.a.c.b;
            RMLog.i(str != null ? "Loading " + str3 + str : "Loading " + str3);
            if (!this.h.b()) {
                this.h = new com.revmob.ads.interstitial.a.a(this, this.e, this.f4759a);
            }
            com.revmob.ads.interstitial.a.a aVar = this.h;
            if (i == 0) {
                RevMobClient.a().b(str, aVar);
            } else if (i == 1 || i == 3) {
                RevMobClient.a().a(str, aVar, i);
            } else {
                RevMobClient.a().c(str, aVar);
            }
        }
    }

    public void loadFullscreen(int i) {
        load(null, i);
    }

    public void loadFullscreen(String str, int i) {
        load(str, i);
    }

    public void loadRewardedVideo(String str) {
        load(str, 3);
    }

    public void loadVideo(String str) {
        load(str, 1);
    }

    public void setAutoShow(boolean z) {
        this.c = z;
    }

    public void show() {
        boolean z;
        this.c = true;
        if (!isLoaded() || this.d == com.revmob.ads.a.c.d) {
            if (this.d == com.revmob.ads.a.c.b) {
                this.d = com.revmob.ads.a.c.f4742a;
                this.h.a();
                load(null, 0);
                return;
            } else if (this.c) {
                if (this.d == com.revmob.ads.a.c.f4742a || this.d == com.revmob.ads.a.c.f) {
                    return;
                }
                RMLog.i("The ad is not completely loaded yet. As soon as it is loaded, it is going to be displayed automatically.");
                return;
            } else if (this.d == com.revmob.ads.a.c.f4742a || this.d == com.revmob.ads.a.c.f) {
                return;
            } else {
                RMLog.i("You have to load the ad before trying to use show() method.");
                return;
            }
        }
        com.revmob.ads.interstitial.a.b.a(this.b);
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f4759a.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            z = false;
            for (int i = 0; i < runningAppProcesses.size(); i++) {
                if (runningAppProcesses.get(i).processName.equals(this.f4759a.getPackageName()) && runningAppProcesses.get(i).importance == 100) {
                    z = true;
                }
            }
        } else {
            z = true;
        }
        if (!FullscreenActivity.a(this.f4759a).booleanValue()) {
            this.d = com.revmob.ads.a.c.f;
            RMLog.e("You must declare the RevMob FullscreenActivity in the AndroidManifest.xml file");
            return;
        }
        this.d = com.revmob.ads.a.c.d;
        if (!this.f) {
            this.i = true;
        }
        Intent intent = new Intent(this.f4759a, FullscreenActivity.class);
        intent.putExtra("com.revmob.ads.fullscreen.fetchId", this.b.f);
        intent.putExtra("followAppOrientation", this.i);
        intent.putExtra(MdotMConstants.IS_REWARDED, this.g);
        if (!z) {
            this.d = com.revmob.ads.a.c.f;
            return;
        }
        this.f4759a.startActivityForResult(intent, 0);
        if (this.e != null) {
            if (!this.f) {
                this.e.onRevMobAdDisplayed();
            } else if (!this.g) {
                RevMob.f4733a = false;
                this.e.onRevMobVideoStarted();
            }
        }
        if (this.f) {
            return;
        }
        RevMobClient.a().a(this.b);
    }

    public void showRewardedVideo() {
        this.g = true;
        showVideo();
    }

    public void showRewardedVideo(boolean z) {
        this.g = true;
        showVideo(z);
    }

    public void showVideo() {
        if (this.f && isLoaded()) {
            this.i = false;
            show();
        } else if (this.e == null) {
        } else {
            if (this.g) {
                this.e.onRevMobRewardedVideoNotCompletelyLoaded();
            } else {
                this.e.onRevMobVideoNotCompletelyLoaded();
            }
        }
    }

    public void showVideo(boolean z) {
        if (this.f && isLoaded()) {
            this.i = z;
            show();
        } else if (this.e == null) {
        } else {
            if (this.g) {
                this.e.onRevMobRewardedVideoNotCompletelyLoaded();
            } else {
                this.e.onRevMobVideoNotCompletelyLoaded();
            }
        }
    }

    @Override // com.revmob.ads.a.a
    public void updateWithData(com.revmob.client.a aVar) {
        this.d = com.revmob.ads.a.c.c;
        this.b = (com.revmob.ads.interstitial.a.b) aVar;
        RevMobClient.a().b(this.b);
        if (this.e != null) {
            if (this.b.o() == null || !this.f) {
                if (this.e != null) {
                    this.e.onRevMobAdReceived();
                }
            } else if (this.g) {
                RevMob.b = true;
                this.e.onRevMobRewardedVideoLoaded();
            } else {
                RevMob.f4733a = true;
                this.e.onRevMobVideoLoaded();
            }
        }
        if (!this.c || this.f) {
            return;
        }
        show();
    }
}
