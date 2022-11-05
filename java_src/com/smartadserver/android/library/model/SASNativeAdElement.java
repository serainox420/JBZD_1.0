package com.smartadserver.android.library.model;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smartadserver.android.library.c.g;
import com.smartadserver.android.library.c.j;
import com.smartadserver.android.library.ui.SASAdChoicesView;
import com.smartadserver.android.library.ui.SASNativeAdMediaView;
import com.smartadserver.android.library.ui.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class SASNativeAdElement implements c.a, Serializable {
    public static final int SAS_UNDEFINED_VALUE = -1;

    /* renamed from: a  reason: collision with root package name */
    private static String f5441a = "SASNativeAdElement";
    private static final boolean v;
    private String b;
    private String c;
    private String d;
    private b e;
    private b f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private SASNativeVideoAdElement l;
    private a t;
    private View.OnAttachStateChangeListener u;
    private HashMap<String, Object> w;
    private com.smartadserver.android.library.model.a[] y;
    private com.smartadserver.android.library.model.a z;
    private float m = -1.0f;
    private long n = -1;
    private long o = -1;
    private View p = null;
    private View[] q = null;
    private boolean r = false;
    private ArrayList<d> x = new ArrayList<>();
    private int A = 0;
    private View.OnClickListener s = new View.OnClickListener() { // from class: com.smartadserver.android.library.model.SASNativeAdElement.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SASNativeAdElement.this.b();
        }
    };

    /* loaded from: classes3.dex */
    public interface a {
        boolean a(String str, SASNativeAdElement sASNativeAdElement);
    }

    static {
        v = Build.VERSION.SDK_INT >= 12;
    }

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private String f5445a;
        private int b;
        private int c;

        private b(String str, int i, int i2) {
            this.f5445a = str;
            this.b = i;
            this.c = i2;
        }

        public String toString() {
            return "ImageElement(url='" + this.f5445a + "', width=" + this.b + ", height=" + this.c + ')';
        }
    }

    @TargetApi(12)
    public SASNativeAdElement() {
        if (v) {
            this.u = new View.OnAttachStateChangeListener() { // from class: com.smartadserver.android.library.model.SASNativeAdElement.2
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    if (view == SASNativeAdElement.this.p) {
                        com.smartadserver.android.library.ui.c.a(SASNativeAdElement.this);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    if (view == SASNativeAdElement.this.p) {
                        com.smartadserver.android.library.ui.c.b(SASNativeAdElement.this);
                        SASNativeAdElement.this.p.post(new Runnable() { // from class: com.smartadserver.android.library.model.SASNativeAdElement.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                SASNativeAdElement.this.updateVisibilityPercentage();
                            }
                        });
                    }
                }
            };
        }
    }

    public String getTitle() {
        return this.b;
    }

    public void setTitle(String str) {
        this.b = str;
    }

    public String getSubtitle() {
        return this.c;
    }

    public void setSubtitle(String str) {
        this.c = str;
    }

    public String getBody() {
        return this.d;
    }

    public void setBody(String str) {
        this.d = str;
    }

    public b getIcon() {
        return this.e;
    }

    public void setIcon(String str, int i, int i2) {
        this.e = new b(str, i, i2);
    }

    public b getCoverImage() {
        return this.f;
    }

    public void setCoverImage(String str, int i, int i2) {
        this.f = new b(str, i, i2);
    }

    public String getCalltoAction() {
        return this.g;
    }

    public void setCalltoAction(String str) {
        this.g = str;
    }

    public String getSponsored() {
        return this.k;
    }

    public void setSponsored(String str) {
        this.k = str;
    }

    public long getLikes() {
        return this.n;
    }

    public void setLikes(long j) {
        if (j < 0) {
            j = -1;
        }
        this.n = j;
    }

    public float getRating() {
        return this.m;
    }

    public void setRating(float f) {
        float f2 = 5.0f;
        if (f <= 5.0f) {
            f2 = f;
        }
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            f2 = -1.0f;
        }
        this.m = f2;
    }

    public long getDownloads() {
        return this.o;
    }

    public void setDownloads(long j) {
        if (j < 0) {
            j = -1;
        }
        this.o = j;
    }

    public String[] getImpressionUrls() {
        return com.smartadserver.android.library.g.c.i(this.h);
    }

    public void setImpressionUrlString(String str) {
        this.h = str;
    }

    public String getClickUrl() {
        return this.i;
    }

    public void setClickUrl(String str) {
        this.i = str;
    }

    public String[] getClickTrackingUrls() {
        return com.smartadserver.android.library.g.c.i(this.j);
    }

    public void setClickTrackingUrlString(String str) {
        this.j = str;
    }

    public HashMap<String, Object> getExtraParameters() {
        return this.w;
    }

    public void setExtraParameters(HashMap<String, Object> hashMap) {
        this.w = hashMap;
    }

    public void setViewabilityPixels(d[] dVarArr) {
        synchronized (this.x) {
            this.x.clear();
            this.x.addAll(Arrays.asList(dVarArr));
        }
    }

    public void setMediaElement(SASNativeVideoAdElement sASNativeVideoAdElement) {
        this.l = sASNativeVideoAdElement;
    }

    public SASNativeVideoAdElement getMediaElement() {
        return this.l;
    }

    private static void a(View view, ArrayList<View> arrayList) {
        if (!(view instanceof SASNativeAdMediaView) && !(view instanceof SASAdChoicesView)) {
            arrayList.add(view);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    a(viewGroup.getChildAt(i), arrayList);
                }
            }
        }
    }

    public void registerView(View view) {
        ArrayList arrayList = new ArrayList();
        a(view, arrayList);
        registerView(view, (View[]) arrayList.toArray(new View[arrayList.size()]));
    }

    public void registerView(View view, View[] viewArr) {
        if (this.p != null) {
            unregisterView(this.p);
        }
        if (view != null) {
            this.p = view;
            this.q = viewArr;
            g.a aVar = null;
            if (getSelectedMediationAd() != null) {
                aVar = getSelectedMediationAd().e().b();
            }
            if (aVar != null) {
                aVar.a(view, viewArr);
            } else if (this.q != null) {
                for (View view2 : this.q) {
                    view2.setOnClickListener(this.s);
                }
            }
            c();
            triggerImpressionCount();
        }
    }

    public void unregisterView(View view) {
        View[] viewArr;
        if (this.p != null) {
            if (this.p == view) {
                d();
                g.a b2 = getSelectedMediationAd() != null ? getSelectedMediationAd().e().b() : null;
                if (b2 != null) {
                    b2.a(view);
                } else if (this.q != null) {
                    for (View view2 : this.q) {
                        view2.setOnClickListener(null);
                        view2.setClickable(false);
                    }
                }
                this.p = null;
                this.q = null;
                return;
            }
            Log.d(f5441a, "Discard attempt to unregister a view not currently registered with this native ad");
        }
    }

    public a getClickHandler() {
        return this.t;
    }

    public void setClickHandler(a aVar) {
        this.t = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.i != null && this.i.length() > 0) {
            boolean z = false;
            try {
                if (this.t != null) {
                    z = this.t.a(this.i, this);
                }
                if (!z) {
                    this.p.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.i)));
                }
                triggerClickCount();
            } catch (Exception e) {
            }
        }
    }

    public void triggerImpressionCount() {
        if (!this.r) {
            this.r = true;
            Log.d(f5441a, "NativeAd triggerImpressionCount");
            a(getImpressionUrls());
        }
    }

    public void triggerClickCount() {
        Log.d(f5441a, "NativeAd triggerClickCount");
        com.smartadserver.android.library.ui.c.a(this.x, 1.0d, true);
        a(getClickTrackingUrls());
    }

    private void a(String[] strArr) {
        com.smartadserver.android.library.a.c a2 = com.smartadserver.android.library.a.c.a((Context) null);
        for (String str : strArr) {
            if (str.length() > 0) {
                a2.a(str, true);
            }
        }
    }

    @Override // com.smartadserver.android.library.ui.c.a
    public void updateVisibilityPercentage() {
        com.smartadserver.android.library.ui.c.a(this.x, a(), false);
    }

    protected double a() {
        if (this.p == null || !this.p.isShown()) {
            return 0.0d;
        }
        Rect rect = new Rect();
        if (!this.p.getGlobalVisibleRect(rect)) {
            return 0.0d;
        }
        return Math.abs(rect.height() * rect.width()) / Math.abs(this.p.getWidth() * this.p.getHeight());
    }

    @TargetApi(12)
    private void c() {
        if (v) {
            if (this.p != null) {
                if (this.p.getWindowToken() != null) {
                    com.smartadserver.android.library.ui.c.a(this);
                }
                this.p.addOnAttachStateChangeListener(this.u);
                return;
            }
            return;
        }
        com.smartadserver.android.library.ui.c.a(this);
    }

    @TargetApi(12)
    private void d() {
        if (v && this.p != null) {
            this.p.removeOnAttachStateChangeListener(this.u);
        }
        com.smartadserver.android.library.ui.c.b(this);
        updateVisibilityPercentage();
    }

    public com.smartadserver.android.library.model.a getSelectedMediationAd() {
        return this.z;
    }

    public void setSelectedMediationAd(com.smartadserver.android.library.model.a aVar) {
        this.z = aVar;
        if (aVar != null) {
            g.a b2 = aVar.e().b();
            setTitle(b2.a());
            setSubtitle(b2.b());
            setIcon(b2.d(), b2.e(), b2.f());
            setCoverImage(b2.g(), b2.h(), b2.i());
            setCalltoAction(b2.k());
            setRating(b2.j());
            setBody(b2.c());
            setSponsored(b2.n());
            setImpressionUrlString(aVar.c());
            setViewabilityPixels(aVar.d());
            setClickTrackingUrlString("");
            setMediaElement(b2.l());
        }
    }

    public com.smartadserver.android.library.model.a[] getCandidateMediationAds() {
        return this.y;
    }

    public void setCandidateMediationAds(com.smartadserver.android.library.model.a[] aVarArr) {
        this.y = aVarArr;
    }

    public int getInsertionId() {
        return this.A;
    }

    public void setInsertionId(int i) {
        this.A = i;
    }

    public String getDebugInfo() {
        String str;
        String str2 = "";
        int insertionId = getInsertionId();
        if (insertionId > 0) {
            str2 = "InsertionID: " + insertionId + " | ";
        }
        if (getSelectedMediationAd() != null) {
            str = j.b(getSelectedMediationAd().a()) + " mediation native ad";
        } else {
            str = "native ad";
        }
        return str2.concat("CreativeType: " + str);
    }

    public String toString() {
        return "SASNativeAdElement{title:\"" + this.b + "\", subtitle:\"" + this.c + "\", body:\"" + this.d + "\", icon:" + this.e + ", coverImage:" + this.f + ", call to action:\"" + this.g + "\", downloads:" + this.o + ", likes:" + this.n + ", sponsored:\"" + this.k + "\", rating:" + this.m + ", extra parameters:" + this.w + '}';
    }
}
