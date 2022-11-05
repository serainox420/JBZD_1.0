package com.inmobi.monetization;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.inmobi.commons.AnimationType;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.ThinICE;
import com.inmobi.monetization.internal.AdErrorCode;
import com.inmobi.monetization.internal.BannerAd;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.IMAdListener;
import com.inmobi.monetization.internal.InvalidManifestErrorMessages;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.imai.RequestResponseManager;
import com.intentsoftware.addapptr.AATKit;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class IMBanner extends RelativeLayout {
    public static final int INMOBI_AD_UNIT_120X600 = 13;
    public static final int INMOBI_AD_UNIT_300X250 = 10;
    public static final int INMOBI_AD_UNIT_320X48 = 9;
    public static final int INMOBI_AD_UNIT_320X50 = 15;
    public static final int INMOBI_AD_UNIT_468X60 = 12;
    public static final int INMOBI_AD_UNIT_728X90 = 11;
    public static final int REFRESH_INTERVAL_MINIMUM = 0;
    public static final int REFRESH_INTERVAL_OFF = -1;

    /* renamed from: a  reason: collision with root package name */
    IMAdListener f3830a;
    private BannerAd b;
    private IMBannerListener c;
    private boolean d;
    private Activity e;
    private String f;
    private long g;
    private int h;

    public IMBanner(Activity activity, String str, int i) {
        super(activity);
        this.d = true;
        this.f = null;
        this.g = -1L;
        this.h = 15;
        this.f3830a = new IMAdListener() { // from class: com.inmobi.monetization.IMBanner.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
                IMBanner.this.a(102, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
                IMBanner.this.a(104, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
                IMBanner.this.a(103, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                IMBanner.this.a(100, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(AdErrorCode adErrorCode) {
                IMBanner.this.a(101, adErrorCode, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
                IMBanner.this.a(105, null, map);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }
        };
        this.f = str;
        this.h = i;
        this.e = activity;
        a();
    }

    public IMBanner(Activity activity, long j) {
        super(activity);
        this.d = true;
        this.f = null;
        this.g = -1L;
        this.h = 15;
        this.f3830a = new IMAdListener() { // from class: com.inmobi.monetization.IMBanner.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
                IMBanner.this.a(102, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
                IMBanner.this.a(104, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
                IMBanner.this.a(103, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                IMBanner.this.a(100, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(AdErrorCode adErrorCode) {
                IMBanner.this.a(101, adErrorCode, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
                IMBanner.this.a(105, null, map);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }
        };
        this.e = activity;
        this.g = j;
        a();
    }

    public IMBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = true;
        this.f = null;
        this.g = -1L;
        this.h = 15;
        this.f3830a = new IMAdListener() { // from class: com.inmobi.monetization.IMBanner.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
                IMBanner.this.a(102, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
                IMBanner.this.a(104, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
                IMBanner.this.a(103, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                IMBanner.this.a(100, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(AdErrorCode adErrorCode) {
                IMBanner.this.a(101, adErrorCode, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
                IMBanner.this.a(105, null, map);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
            }
        };
        this.e = (Activity) context;
        try {
            this.g = Long.parseLong(attributeSet.getAttributeValue(null, "slotId"));
            a();
        } catch (Exception e) {
            try {
                this.h = Integer.parseInt(attributeSet.getAttributeValue(null, CommonConstants.REQUESTPARAM_AD_SIZE));
            } catch (Exception e2) {
            }
            try {
                this.f = attributeSet.getAttributeValue(null, "appId");
            } catch (Exception e3) {
            }
            a();
        }
    }

    private void a() {
        if (this.g > 0) {
            this.b = new BannerAd(this.e, this, this.g, 15);
        } else {
            this.b = new BannerAd(this.e, this, this.f, this.h);
        }
        this.b.setAdListener(this.f3830a);
        setRefreshInterval(Initializer.getConfigParams().getDefaultRefreshRate());
        addView(this.b.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    public void loadBanner() {
        if (this.b != null) {
            this.b.loadAd();
            return;
        }
        IMErrorCode iMErrorCode = IMErrorCode.INVALID_REQUEST;
        iMErrorCode.setMessage("Banner Ad instance not created with valid paramters");
        this.c.onBannerRequestFailed(this, iMErrorCode);
        Log.verbose(Constants.LOG_TAG, "Banner Ad instance not created with valid paramters");
    }

    public void stopLoading() {
        if (this.b != null) {
            this.b.stopLoading();
        }
    }

    public void setIMBannerListener(IMBannerListener iMBannerListener) {
        this.c = iMBannerListener;
    }

    public void setAnimationType(AnimationType animationType) {
        if (this.b != null) {
            this.b.setAnimation(animationType);
        }
    }

    public void disableHardwareAcceleration() {
        if (this.b != null) {
            this.b.disableHardwareAcceleration();
        }
    }

    @Deprecated
    public void destroy() {
    }

    public void setAdSize(int i) {
        if (this.b != null) {
            this.b.setAdSize(i);
            this.h = i;
        }
    }

    public void setSlotId(long j) {
        if (this.b != null) {
            this.b.setSlotId(j);
        }
    }

    public void setAppId(String str) {
        if (this.b != null) {
            this.b.setAppId(str);
        }
    }

    public void setRefreshInterval(int i) {
        if (this.b != null) {
            this.b.setRefreshInterval(i);
        }
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        if (i == 0) {
            try {
                ThinICE.start(this.e);
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Cannot start ice. Activity is null");
            }
            if (this.b != null) {
                this.b.refreshAd();
            }
        } else if (this.b != null) {
            this.b.stopRefresh();
        }
        RequestResponseManager requestResponseManager = new RequestResponseManager();
        requestResponseManager.init();
        requestResponseManager.processClick(this.e.getApplicationContext(), null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b();
        Log.debug(Constants.LOG_TAG, "onAttachedToWindow");
        this.d = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.d = false;
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final AdErrorCode adErrorCode, final Map<?, ?> map) {
        if (!this.d) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_CALL_BACK);
        } else if (this.c != null) {
            this.e.runOnUiThread(new Runnable() { // from class: com.inmobi.monetization.IMBanner.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        switch (i) {
                            case 100:
                                IMBanner.this.c.onBannerRequestSucceeded(IMBanner.this);
                                break;
                            case 101:
                                IMBanner.this.c.onBannerRequestFailed(IMBanner.this, IMErrorCode.a(adErrorCode));
                                break;
                            case 102:
                                IMBanner.this.c.onShowBannerScreen(IMBanner.this);
                                break;
                            case 103:
                                IMBanner.this.c.onDismissBannerScreen(IMBanner.this);
                                break;
                            case 104:
                                IMBanner.this.c.onLeaveApplication(IMBanner.this);
                                break;
                            case 105:
                                IMBanner.this.c.onBannerInteraction(IMBanner.this, map);
                                break;
                            default:
                                Log.debug(Constants.LOG_TAG, adErrorCode.toString());
                                break;
                        }
                    } catch (Exception e) {
                        Log.debug(Constants.LOG_TAG, "Exception giving callback to the publisher ", e);
                    }
                }
            });
        }
    }

    public void setKeywords(String str) {
        if (str == null || "".equals(str.trim())) {
            Log.debug(Constants.LOG_TAG, "Keywords cannot be null or blank.");
        } else if (this.b != null) {
            this.b.setKeywords(str);
        }
    }

    public void setRequestParams(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            Log.debug(Constants.LOG_TAG, "Request params cannot be null or empty.");
        } else if (this.b != null) {
            this.b.setRequestParams(map);
        }
    }

    @Deprecated
    public void setRefTagParam(String str, String str2) {
        if (str == null || str2 == null) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_NIL_KEY_VALUE);
        } else if (str.trim().equals("") || str2.trim().equals("")) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_EMPTY_KEY_VALUE);
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(str, str2);
            if (this.b != null) {
                this.b.setRequestParams(hashMap);
            }
        }
    }

    private void b() {
        int i;
        int i2 = 320;
        float f = this.e.getResources().getDisplayMetrics().density;
        switch (this.h) {
            case 9:
                i = 48;
                break;
            case 10:
                i2 = 300;
                i = 250;
                break;
            case 11:
                i2 = 729;
                i = 90;
                break;
            case 12:
                i2 = 468;
                i = 60;
                break;
            case 13:
                i2 = 120;
                i = AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS;
                break;
            case 14:
            default:
                i2 = getLayoutParams().width;
                i = getLayoutParams().height;
                break;
            case 15:
                i = 50;
                break;
        }
        getLayoutParams().height = (int) (i * f);
        getLayoutParams().width = (int) (i2 * f);
        setLayoutParams(getLayoutParams());
    }
}
