package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import com.mopub.common.AdFormat;
import com.mopub.common.AdReport;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.Visibility;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes.dex */
public class MoPubView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final String f4451a;
    protected AdViewController b;
    protected Object c;
    private Context d;
    private int e;
    private BroadcastReceiver f;
    private BannerAdListener g;

    /* loaded from: classes3.dex */
    public interface BannerAdListener {
        void onBannerClicked(MoPubView moPubView);

        void onBannerCollapsed(MoPubView moPubView);

        void onBannerExpanded(MoPubView moPubView);

        void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(MoPubView moPubView);
    }

    public MoPubView(Context context) {
        this(context, null);
    }

    public MoPubView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4451a = "com.mopub.mobileads.factories.CustomEventBannerAdapterFactory";
        ManifestUtils.checkWebViewActivitiesDeclared(context);
        this.d = context;
        this.e = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        if (WebViewDatabase.getInstance(context) == null) {
            MoPubLog.e("Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:https://code.google.com/p/android/issues/detail?id=10789");
            return;
        }
        this.b = AdViewControllerFactory.create(context, this);
        a();
    }

    private void a() {
        this.f = new BroadcastReceiver() { // from class: com.mopub.mobileads.MoPubView.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (Visibility.isScreenVisible(MoPubView.this.e) && intent != null) {
                    String action = intent.getAction();
                    if ("android.intent.action.USER_PRESENT".equals(action)) {
                        MoPubView.this.setAdVisibility(0);
                    } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                        MoPubView.this.setAdVisibility(8);
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.d.registerReceiver(this.f, intentFilter);
    }

    private void i() {
        try {
            this.d.unregisterReceiver(this.f);
        } catch (Exception e) {
            MoPubLog.d("Failed to unregister screen state broadcast receiver (never registered).");
        }
    }

    public void loadAd() {
        if (this.b != null) {
            this.b.loadAd();
        }
    }

    public void destroy() {
        i();
        removeAllViews();
        if (this.b != null) {
            this.b.d();
            this.b = null;
        }
        if (this.c != null) {
            j();
            this.c = null;
        }
    }

    private void j() {
        if (this.c != null) {
            try {
                new Reflection.MethodBuilder(this.c, "invalidate").setAccessible().execute();
            } catch (Exception e) {
                MoPubLog.e("Error invalidating adapter", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer getAdTimeoutDelay() {
        if (this.b != null) {
            return this.b.e();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(MoPubErrorCode moPubErrorCode) {
        if (this.b == null) {
            return false;
        }
        return this.b.a(moPubErrorCode);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, Map<String, String> map) {
        if (this.b != null) {
            if (TextUtils.isEmpty(str)) {
                MoPubLog.d("Couldn't invoke custom event because the server did not specify one.");
                b(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
            if (this.c != null) {
                j();
            }
            MoPubLog.d("Loading custom event adapter.");
            if (Reflection.classFound("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")) {
                try {
                    this.c = new Reflection.MethodBuilder(null, "create").setStatic(Class.forName("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")).addParam(MoPubView.class, this).addParam(String.class, str).addParam(Map.class, map).addParam(Long.TYPE, Long.valueOf(this.b.getBroadcastIdentifier())).addParam(AdReport.class, this.b.getAdReport()).execute();
                    new Reflection.MethodBuilder(this.c, "loadAd").setAccessible().execute();
                    return;
                } catch (Exception e) {
                    MoPubLog.e("Error loading custom event", e);
                    return;
                }
            }
            MoPubLog.e("Could not load custom event -- missing banner module");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        if (this.b != null) {
            this.b.g();
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        MoPubLog.d("Tracking impression for native adapter.");
        if (this.b != null) {
            this.b.f();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        if (Visibility.hasScreenVisibilityChanged(this.e, i)) {
            this.e = i;
            setAdVisibility(this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdVisibility(int i) {
        if (this.b != null) {
            if (Visibility.isScreenVisible(i)) {
                this.b.c();
            } else {
                this.b.b();
            }
        }
    }

    protected void d() {
        MoPubLog.d("adLoaded");
        if (this.g != null) {
            this.g.onBannerLoaded(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(MoPubErrorCode moPubErrorCode) {
        if (this.g != null) {
            this.g.onBannerFailed(this, moPubErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        if (this.g != null) {
            this.g.onBannerExpanded(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        if (this.g != null) {
            this.g.onBannerCollapsed(this);
        }
    }

    protected void g() {
        if (this.g != null) {
            this.g.onBannerClicked(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() {
        if (this.b != null) {
            this.b.j();
        }
        d();
    }

    public void setAdUnitId(String str) {
        if (this.b != null) {
            this.b.setAdUnitId(str);
        }
    }

    public String getAdUnitId() {
        if (this.b != null) {
            return this.b.getAdUnitId();
        }
        return null;
    }

    public void setKeywords(String str) {
        if (this.b != null) {
            this.b.setKeywords(str);
        }
    }

    public String getKeywords() {
        if (this.b != null) {
            return this.b.getKeywords();
        }
        return null;
    }

    public void setLocation(Location location) {
        if (this.b != null) {
            this.b.setLocation(location);
        }
    }

    public Location getLocation() {
        if (this.b != null) {
            return this.b.getLocation();
        }
        return null;
    }

    public int getAdWidth() {
        if (this.b != null) {
            return this.b.getAdWidth();
        }
        return 0;
    }

    public int getAdHeight() {
        if (this.b != null) {
            return this.b.getAdHeight();
        }
        return 0;
    }

    public Activity getActivity() {
        return (Activity) this.d;
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.g = bannerAdListener;
    }

    public BannerAdListener getBannerAdListener() {
        return this.g;
    }

    public void setLocalExtras(Map<String, Object> map) {
        if (this.b != null) {
            this.b.a(map);
        }
    }

    public Map<String, Object> getLocalExtras() {
        return this.b != null ? this.b.k() : new TreeMap();
    }

    public void setAutorefreshEnabled(boolean z) {
        if (this.b != null) {
            this.b.a(z);
        }
    }

    public boolean getAutorefreshEnabled() {
        if (this.b != null) {
            return this.b.getAutorefreshEnabled();
        }
        MoPubLog.d("Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }

    public void setAdContentView(View view) {
        if (this.b != null) {
            this.b.a(view);
        }
    }

    public void setTesting(boolean z) {
        if (this.b != null) {
            this.b.setTesting(z);
        }
    }

    public boolean getTesting() {
        if (this.b != null) {
            return this.b.getTesting();
        }
        MoPubLog.d("Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }

    public void forceRefresh() {
        if (this.c != null) {
            j();
            this.c = null;
        }
        if (this.b != null) {
            this.b.h();
        }
    }

    AdViewController getAdViewController() {
        return this.b;
    }

    public AdFormat getAdFormat() {
        return AdFormat.BANNER;
    }

    @Deprecated
    public void setTimeout(int i) {
    }

    @Deprecated
    public String getResponseString() {
        return null;
    }

    @Deprecated
    public String getClickTrackingUrl() {
        return null;
    }
}
