package pl.jbzd.app;

import android.app.Application;
import android.content.Context;
import com.crashlytics.android.Crashlytics;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import com.intentsoftware.addapptr.AATKit;
import com.intentsoftware.addapptr.PlacementSize;
import com.intentsoftware.addapptr.k;
import io.fabric.sdk.android.c;
import io.realm.l;
import io.realm.p;
import java.util.ArrayList;
import java.util.List;
import net.gotev.uploadservice.UploadService;
import pl.jbzd.a.a;
import pl.jbzd.api.ApiClient;
import pl.jbzd.b.b;
import pl.jbzd.core.MvpApplication;
/* loaded from: classes.dex */
public class MyApplication extends MvpApplication implements AATKit.Delegate {

    /* renamed from: a  reason: collision with root package name */
    private Tracker f5881a;
    private b b;
    private a c;
    private List<Integer> d = new ArrayList();

    @Override // pl.jbzd.core.MvpApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        c.a(this, new Crashlytics());
        Fresco.initialize(this);
        ApiClient.init(this);
        l.a(this);
        l.c(new p.a().a().b());
        c();
        AppEventsLogger.activateApp((Application) this);
        pl.jbzd.a.b.a(this);
        UploadService.d = "pl.jbzd";
        UploadService.e = new net.gotev.uploadservice.okhttp.b();
        this.b = new b(this);
    }

    public static b a(Context context) {
        return ((MyApplication) context.getApplicationContext()).b;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        android.support.multidex.a.a(this);
    }

    public synchronized Tracker a() {
        if (this.f5881a == null) {
            this.f5881a = GoogleAnalytics.getInstance(this).newTracker("UA-26374187-7");
        }
        return this.f5881a;
    }

    private void c() {
        AATKit.initWithoutDebugScreen(this, this);
        this.d.add(Integer.valueOf(AATKit.createPlacement("jbzd 1", PlacementSize.Banner300x250)));
        this.d.add(Integer.valueOf(AATKit.createPlacement("jbzd 2", PlacementSize.Banner300x250)));
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    public List<Integer> b() {
        return this.d;
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitHaveAd(int i) {
        if (this.c != null) {
            this.c.a(i);
        }
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitNoAd(int i) {
        if (this.c != null) {
            this.c.b(i);
        }
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitPauseForAd(int i) {
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitResumeAfterAd(int i) {
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitShowingEmpty(int i) {
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitUserEarnedIncentive(int i) {
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitObtainedAdRules(boolean z) {
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitUnknownBundleId() {
    }

    @Override // com.intentsoftware.addapptr.AATKit.Delegate
    public void aatkitHaveAdForPlacementWithBannerView(int i, k kVar) {
    }
}
