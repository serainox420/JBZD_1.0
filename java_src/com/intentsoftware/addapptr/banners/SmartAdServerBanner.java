package com.intentsoftware.addapptr.banners;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.location.Location;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad.BannerAd;
import com.intentsoftware.addapptr.c.b;
import com.intentsoftware.addapptr.c.c;
import com.intentsoftware.addapptr.c.k;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class SmartAdServerBanner extends BannerAd {
    private static final int MAX_TIME_AFTER_CLICK = 3500;
    private SASBannerView bannerView;
    private long clickTime;
    private BannerAd.a customSize;
    private Activity lastActivity;
    private boolean shouldNotifyResume;
    private boolean usesMultipleSizes;

    @Override // com.intentsoftware.addapptr.ad.a
    public void load(Activity activity, String str, BannerSize bannerSize, k kVar) {
        super.load(activity, str, bannerSize, kVar);
        this.lastActivity = activity;
        String[] split = str.split(":");
        if (split.length < 5) {
            if (c.isLoggable(5)) {
                c.w(this, "not enough arguments for SmartAdServer config");
            }
            notifyListenerThatAdFailedToLoad("not enough arguments in adId.");
            return;
        }
        String str2 = split[0] + ":" + split[1];
        try {
            int parseInt = Integer.parseInt(split[2]);
            String str3 = split[3];
            int parseInt2 = Integer.parseInt(split[4]);
            if (bannerSize == BannerSize.MutlipleSizes) {
                this.usesMultipleSizes = true;
            }
            this.bannerView = new SASBannerView(activity);
            this.bannerView.a(createStateChangeListener());
            Location location = b.getLocation();
            if (location != null) {
                this.bannerView.setLocation(location);
            }
            View view = new View(activity);
            view.setOnTouchListener(createTouchListener());
            this.bannerView.addView(view, new RelativeLayout.LayoutParams(-1, -1));
            SASAdView.setBaseUrl(str2);
            String str4 = "";
            if (kVar != null) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Map.Entry<String, List<String>> entry : kVar.getMap().entrySet()) {
                    for (String str5 : entry.getValue()) {
                        if (TextUtils.isDigitsOnly(str5)) {
                            arrayList2.add(entry.getKey() + "=" + str5);
                        } else {
                            arrayList.add(entry.getKey() + "=" + str5);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    str4 = TextUtils.join(";", arrayList);
                } else {
                    str4 = TextUtils.join(";", arrayList) + ";|" + TextUtils.join(";", arrayList2);
                }
            }
            this.bannerView.a(parseInt2, str3, parseInt, true, str4, createResponseHandler());
        } catch (NumberFormatException e) {
            if (c.isLoggable(5)) {
                c.w(this, "cannot parse integers for SmartAdServer config");
            }
            notifyListenerThatAdFailedToLoad("cannot parse adId.");
        }
    }

    private View.OnTouchListener createTouchListener() {
        return new View.OnTouchListener() { // from class: com.intentsoftware.addapptr.banners.SmartAdServerBanner.1
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!SmartAdServerBanner.this.shouldNotifyResume) {
                    SmartAdServerBanner.this.clickTime = SystemClock.elapsedRealtime();
                }
                return SmartAdServerBanner.this.bannerView.onTouchEvent(motionEvent);
            }
        };
    }

    private SASAdView.d createStateChangeListener() {
        return new SASAdView.d() { // from class: com.intentsoftware.addapptr.banners.SmartAdServerBanner.2
            @Override // com.smartadserver.android.library.ui.SASAdView.d
            public void onStateChanged(SASAdView.i iVar) {
                switch (iVar.a()) {
                    case 0:
                        if (SystemClock.elapsedRealtime() - SmartAdServerBanner.this.clickTime < 3500) {
                            SmartAdServerBanner.this.shouldNotifyResume = true;
                            SmartAdServerBanner.this.notifyListenerThatAdWasClicked();
                            SmartAdServerBanner.this.clickTime = 0L;
                            return;
                        }
                        return;
                    case 1:
                        if (SmartAdServerBanner.this.shouldNotifyResume) {
                            SmartAdServerBanner.this.shouldNotifyResume = false;
                            SmartAdServerBanner.this.fallbackNotifyListenerThatAdWasDismissed();
                            return;
                        }
                        return;
                    case 2:
                        if (SmartAdServerBanner.this.shouldNotifyResume) {
                            SmartAdServerBanner.this.shouldNotifyResume = false;
                            SmartAdServerBanner.this.fallbackNotifyListenerThatAdWasDismissed();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
    }

    private SASAdView.a createResponseHandler() {
        return new SASAdView.a() { // from class: com.intentsoftware.addapptr.banners.SmartAdServerBanner.3
            @Override // com.smartadserver.android.library.ui.SASAdView.a
            public void adLoadingFailed(Exception exc) {
                SmartAdServerBanner.this.notifyListenerThatAdFailedToLoad(exc.getMessage());
            }

            @Override // com.smartadserver.android.library.ui.SASAdView.a
            public void adLoadingCompleted(SASAdElement sASAdElement) {
                int landscapeWidth;
                int landscapeHeight;
                if (SmartAdServerBanner.this.usesMultipleSizes) {
                    Activity activity = SmartAdServerBanner.this.getActivity();
                    if (activity == null) {
                        SmartAdServerBanner.this.notifyListenerThatAdFailedToLoad("Activity is null!");
                        return;
                    }
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                    if (activity.getResources().getConfiguration().orientation == 1) {
                        landscapeWidth = sASAdElement.getPortraitWidth();
                        landscapeHeight = sASAdElement.getPortraitHeight();
                    } else {
                        landscapeWidth = sASAdElement.getLandscapeWidth();
                        landscapeHeight = sASAdElement.getLandscapeHeight();
                        if (landscapeHeight == 0 || landscapeWidth == 0) {
                            landscapeWidth = sASAdElement.getPortraitWidth();
                            landscapeHeight = sASAdElement.getPortraitHeight();
                        }
                    }
                    int i = (int) ((landscapeWidth * displayMetrics.density) + 0.5d);
                    int i2 = (int) ((landscapeHeight * displayMetrics.density) + 0.5d);
                    int i3 = displayMetrics.widthPixels;
                    if (i > i3) {
                        i2 = (int) Math.round((i2 / i) * i3);
                    } else {
                        i3 = i;
                    }
                    SmartAdServerBanner.this.customSize = new BannerAd.a(i3, i2, true);
                }
                SmartAdServerBanner.this.notifyListenerThatAdWasLoaded();
            }
        };
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void pause() {
        if (SystemClock.elapsedRealtime() - this.clickTime < 3500) {
            this.shouldNotifyResume = true;
            this.clickTime = 0L;
            notifyListenerThatAdWasClicked();
        }
        super.pause();
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void resume(Activity activity) {
        this.shouldNotifyResume = false;
        if (this.bannerView != null && this.lastActivity != activity) {
            this.bannerView.setExpandParentContainer((FrameLayout) activity.getWindow().getDecorView().findViewById(16908290));
            this.lastActivity = activity;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.a
    public void unload() {
        if (this.bannerView != null) {
            this.bannerView.removeAllViews();
            if (this.bannerView.getParent() != null) {
                ((ViewGroup) this.bannerView.getParent()).removeView(this.bannerView);
            }
            this.bannerView.b();
            this.bannerView = null;
        }
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public View getBannerView() {
        return this.bannerView;
    }

    @Override // com.intentsoftware.addapptr.ad.BannerAd
    public BannerAd.a getCustomSize() {
        return this.customSize;
    }
}
