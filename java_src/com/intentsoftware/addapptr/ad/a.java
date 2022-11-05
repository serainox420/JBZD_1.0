package com.intentsoftware.addapptr.ad;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.c.k;
import com.intentsoftware.addapptr.n;
/* compiled from: Ad.java */
/* loaded from: classes2.dex */
public abstract class a {
    private Activity activity;
    private com.intentsoftware.addapptr.b config;
    private n fallbackDismissListener;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private b interactionListener;
    private c loadListener;
    private boolean loading;

    public abstract void unload();

    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        this.activity = activity;
        this.loading = true;
    }

    public void pause() {
    }

    public void resume(Activity activity) {
        this.activity = activity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyListenerThatAdWasLoaded() {
        if (this.loading) {
            this.loading = false;
            this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.ad.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.loadListener != null) {
                        a.this.loadListener.onAdLoaded(a.this);
                    }
                }
            });
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, String.format("Redundant 'ad loaded' notification from %s.", getClass().getSimpleName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyListenerThatShowingEmpty() {
        this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.ad.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.interactionListener != null) {
                    a.this.interactionListener.onEmptyAdShown();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyListenerThatAdFailedToLoad(final String str) {
        if (this.loading) {
            this.loading = false;
            this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.ad.a.3
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.loadListener != null) {
                        a.this.loadListener.onFailedToLoadAd(a.this, str);
                    }
                }
            });
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
            com.intentsoftware.addapptr.c.c.w(this, String.format("Redundant 'failed to load ad' notification from %s.", getClass().getSimpleName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyListenerThatAdWasClicked() {
        this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.ad.a.4
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.interactionListener != null) {
                    a.this.interactionListener.onAdClicked(a.this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyListenerThatAdIsShown() {
        this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.ad.a.5
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.interactionListener != null) {
                    a.this.interactionListener.onAdShown(a.this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyListenerThatUserEarnedIncentive() {
        this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.ad.a.6
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.interactionListener != null) {
                    a.this.interactionListener.onIncentiveEarned();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fallbackNotifyListenerThatAdWasDismissed() {
        this.handler.post(new Runnable() { // from class: com.intentsoftware.addapptr.ad.a.7
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.fallbackDismissListener != null) {
                    a.this.fallbackDismissListener.onAdDismissed();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Activity getActivity() {
        return this.activity;
    }

    public void setLoadListener(c cVar) {
        this.loadListener = cVar;
    }

    public void setInteractionListener(b bVar) {
        this.interactionListener = bVar;
    }

    public void setFallbackDismissListener(n nVar) {
        this.fallbackDismissListener = nVar;
    }

    public void setConfig(com.intentsoftware.addapptr.b bVar) {
        this.config = bVar;
    }

    public com.intentsoftware.addapptr.b getConfig() {
        return this.config;
    }
}
