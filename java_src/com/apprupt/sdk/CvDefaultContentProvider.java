package com.apprupt.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.apprupt.sdk.CvContentManager;
import com.apprupt.sdk.CvDevicePayload;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.URLRequest;
import com.mopub.common.AdType;
import io.fabric.sdk.android.services.b.b;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CvDefaultContentProvider implements CvContentManager.ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger.log f1782a = Logger.a("CONTENT_PROVIDER_DEFAULT");
    private final HashMap<String, ArrayList<JSONObject>> b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public abstract class LoaderBase implements CvContentManager.ContentLoader {
        protected final Context b;
        protected final CvContentOptions c;
        protected final Handler d = new Handler();
        protected boolean e = false;

        abstract String a();

        abstract void a(String str, Exception exc, int i);

        abstract boolean a(String str) throws Exception;

        abstract void b();

        abstract void c();

        LoaderBase(Context context, CvContentOptions cvContentOptions) {
            this.c = cvContentOptions;
            this.b = context;
        }

        public synchronized void d() {
            this.e = true;
            b();
        }

        CvContentManager.ContentLoader e() {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.apprupt.sdk.CvDefaultContentProvider.LoaderBase.1
                @Override // java.lang.Runnable
                public void run() {
                    CvDefaultContentProvider.f1782a.b("Waiting for device payload /", LoaderBase.this.c.f1778a);
                    CvDevicePayload.a(LoaderBase.this.b, new CvDevicePayload.Listener() { // from class: com.apprupt.sdk.CvDefaultContentProvider.LoaderBase.1.1
                        @Override // com.apprupt.sdk.CvDevicePayload.Listener
                        public void a(String str) {
                            CvDefaultContentProvider.f1782a.b("Got payload /", LoaderBase.this.c.f1778a);
                            LoaderBase.this.b(str);
                        }
                    });
                }
            });
            return this;
        }

        void b(String str) {
            CvDefaultContentProvider.f1782a.b("Building request /", this.c.f1778a);
            URLRequest a2 = URLRequest.b(a()).a(b.ROLL_OVER_FILE_NAME_SEPARATOR, (Object) CvUnderscore.b().a(CvAudience.a().f()).toString());
            if (str == null) {
                str = "";
            }
            a2.a("pyld", (Object) str).a("sdkVersion", (Object) "android_4.2.7").a(new URLRequest.Listener() { // from class: com.apprupt.sdk.CvDefaultContentProvider.LoaderBase.2
                @Override // com.apprupt.sdk.URLRequest.Listener
                public void a(URLRequest.URLResponse uRLResponse) {
                    LoaderBase.this.a(uRLResponse);
                }
            }).b();
        }

        void a(URLRequest.URLResponse uRLResponse) {
            CvDefaultContentProvider.f1782a.b("URLResponse:", Boolean.valueOf(uRLResponse.d), Integer.valueOf(uRLResponse.f1987a), uRLResponse.c);
            if (uRLResponse.d) {
                CvDefaultContentProvider.f1782a.d("URLResponse with error", Integer.valueOf(uRLResponse.f1987a), uRLResponse.b);
                b(uRLResponse.b, uRLResponse.e, uRLResponse.f1987a);
                return;
            }
            try {
                if (a(uRLResponse.c)) {
                    CvDefaultContentProvider.f1782a.b("URLResponse content parsed");
                    c();
                }
            } catch (Exception e) {
                CvDefaultContentProvider.f1782a.d("URLResponse data is not parsable", uRLResponse.c);
                b("Cannot parse content", e, -2);
            }
        }

        void b(String str, Exception exc, int i) {
            CvDefaultContentProvider.f1782a.c(exc, "Error while loading content:", str);
            a(str, exc, i);
            d();
        }
    }

    /* loaded from: classes.dex */
    private class Loader extends LoaderBase {
        private CvContentManager.ContentListener g;
        private JSONObject h;

        Loader(Context context, CvContentOptions cvContentOptions, CvContentManager.ContentListener contentListener) {
            super(context, cvContentOptions);
            this.h = null;
            this.g = contentListener;
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        String a() {
            int[] iArr = {0, 0, 0};
            int[] iArr2 = {0, 0, 0};
            if (this.c.e) {
                iArr[2] = (this.c.d ? 16 : 32) | iArr[2];
            }
            Object[] objArr = new Object[8];
            objArr[0] = this.c.f1778a;
            objArr[1] = "6";
            objArr[2] = CvFeaturesList.a(iArr, iArr2, this.b);
            objArr[3] = CvSDK.d();
            objArr[4] = this.c.c;
            objArr[5] = this.c.b;
            objArr[6] = Long.valueOf(Calendar.getInstance().getTimeInMillis());
            objArr[7] = this.c.d ? "&interstitial=1" : "";
            return CvUrl.a(String.format("/cv/a/%s/sdk/%s/fm/%s/piKey/%s/c/%s/k/%s/v/1/?nc=%d%s", objArr));
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        synchronized void b() {
            this.g = null;
            this.h = null;
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        boolean a(String str) throws Exception {
            if (str == null || str.length() == 0 || str.toLowerCase().equals("null") || str.equals("[]")) {
                b("Server returned empty response, possibly piKey should be refreshed.", null, 0);
                return false;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("size") && jSONObject.getString("size").length() > 0 && jSONObject.has(AdType.HTML) && jSONObject.getString(AdType.HTML).length() > 0) {
                this.h = jSONObject;
                return true;
            }
            b("Server returned not parsable response.", null, -2);
            return false;
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        void a(String str, Exception exc, int i) {
            final CvContentResponse cvContentResponse = new CvContentResponse(str, exc, i);
            final CvContentManager.ContentListener contentListener = this.g;
            this.d.post(new Runnable() { // from class: com.apprupt.sdk.CvDefaultContentProvider.Loader.1
                @Override // java.lang.Runnable
                public void run() {
                    CvDefaultContentProvider.f1782a.d("Calling callback with error");
                    Loader.this.a(cvContentResponse, contentListener);
                }
            });
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        void c() {
            final CvContentResponse cvContentResponse = new CvContentResponse(this.h);
            final CvContentManager.ContentListener contentListener = this.g;
            this.d.post(new Runnable() { // from class: com.apprupt.sdk.CvDefaultContentProvider.Loader.2
                @Override // java.lang.Runnable
                public void run() {
                    CvDefaultContentProvider.f1782a.d("Calling callback with complete");
                    Loader.this.a(cvContentResponse, contentListener);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void a(CvContentResponse cvContentResponse, CvContentManager.ContentListener contentListener) {
            boolean z = true;
            synchronized (this) {
                Logger.log logVar = CvDefaultContentProvider.f1782a;
                Object[] objArr = new Object[2];
                objArr[0] = "Calling listener with response";
                if (contentListener == null) {
                    z = false;
                }
                objArr[1] = Boolean.valueOf(z);
                logVar.d(objArr);
                if (contentListener != null) {
                    contentListener.a(cvContentResponse);
                }
                d();
            }
        }
    }

    /* loaded from: classes.dex */
    private class TestLoader extends LoaderBase {

        /* renamed from: a  reason: collision with root package name */
        private CvContentManager.PreloaderListener f1790a;
        private boolean g;

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        String a() {
            Object[] objArr = new Object[8];
            objArr[0] = this.c.f1778a;
            objArr[1] = "6";
            objArr[2] = CvFeaturesList.a(this.b);
            objArr[3] = CvSDK.d();
            objArr[4] = this.c.c;
            objArr[5] = this.c.b;
            objArr[6] = Long.valueOf(Calendar.getInstance().getTimeInMillis());
            objArr[7] = this.c.d ? "&interstitial=1" : "";
            return CvUrl.a(String.format("/AdsAvailable/a/%s/sdk/%s/fm/%s/piKey/%s/c/%s/k/%s/v/1/?nc=%d%s", objArr));
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        synchronized void b() {
            this.f1790a = null;
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        boolean a(String str) throws Exception {
            this.g = str != null && str.trim().equals("1");
            return true;
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        void a(String str, Exception exc, int i) {
            final CvPreloaderResponse cvPreloaderResponse = new CvPreloaderResponse(str, i);
            final CvContentManager.PreloaderListener preloaderListener = this.f1790a;
            this.d.post(new Runnable() { // from class: com.apprupt.sdk.CvDefaultContentProvider.TestLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    TestLoader.this.a(cvPreloaderResponse, preloaderListener);
                }
            });
        }

        @Override // com.apprupt.sdk.CvDefaultContentProvider.LoaderBase
        void c() {
            final CvPreloaderResponse cvPreloaderResponse = this.g ? new CvPreloaderResponse() : new CvPreloaderResponse("Ad space is empty", 0);
            final CvContentManager.PreloaderListener preloaderListener = this.f1790a;
            this.d.post(new Runnable() { // from class: com.apprupt.sdk.CvDefaultContentProvider.TestLoader.2
                @Override // java.lang.Runnable
                public void run() {
                    TestLoader.this.a(cvPreloaderResponse, preloaderListener);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized void a(CvPreloaderResponse cvPreloaderResponse, CvContentManager.PreloaderListener preloaderListener) {
            if (preloaderListener != null) {
                preloaderListener.onPreloaderFinish(cvPreloaderResponse);
            }
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized ArrayList<JSONObject> a(String str) {
        if (!this.b.containsKey(str)) {
            this.b.put(str, new ArrayList<>());
        }
        return this.b.get(str);
    }

    @Override // com.apprupt.sdk.CvContentManager.ContentProvider
    public synchronized CvContentManager.ContentLoader a(Context context, CvContentOptions cvContentOptions, CvContentManager.ContentListener contentListener) {
        Loader loader;
        CvAppInfo.a(context);
        loader = new Loader(context, cvContentOptions, contentListener);
        ArrayList<JSONObject> a2 = a(cvContentOptions.f1778a);
        if (a2.size() > 0) {
            f1782a.b("Ad already cached, returning content for", cvContentOptions.f1778a);
            if (contentListener != null) {
                contentListener.a(new CvContentResponse(a2.remove(0)));
            }
            loader.d();
        } else {
            f1782a.b("starting loader for", cvContentOptions.f1778a);
            loader.e();
        }
        return loader;
    }

    /* renamed from: com.apprupt.sdk.CvDefaultContentProvider$1  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements CvContentManager.ContentListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CvContentOptions f1783a;
        final /* synthetic */ CvContentManager.PreloaderListener b;
        final /* synthetic */ CvDefaultContentProvider c;

        @Override // com.apprupt.sdk.CvContentManager.ContentListener
        public void a(CvContentResponse cvContentResponse) {
            if (cvContentResponse.f1779a) {
                CvDefaultContentProvider.f1782a.c(cvContentResponse.d, "Error while loading content for", this.f1783a.f1778a, ":", cvContentResponse.b);
                if (this.b != null) {
                    this.b.onPreloaderFinish(new CvPreloaderResponse(cvContentResponse.b, cvContentResponse.c));
                    return;
                }
                return;
            }
            synchronized (this.c) {
                ArrayList a2 = this.c.a(this.f1783a.f1778a);
                CvDefaultContentProvider.f1782a.b("Got content for", this.f1783a.f1778a);
                CvDefaultContentProvider.f1782a.a("Content", cvContentResponse.e);
                a2.add(cvContentResponse.e);
                if (this.b != null) {
                    this.b.onPreloaderFinish(new CvPreloaderResponse());
                }
            }
        }
    }
}
