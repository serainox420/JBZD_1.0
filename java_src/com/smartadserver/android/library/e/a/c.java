package com.smartadserver.android.library.e.a;

import android.content.Context;
import com.smartadserver.android.library.exception.SASAdTimeoutException;
import com.smartadserver.android.library.exception.SASInvalidJSONException;
import com.smartadserver.android.library.exception.SASNoAdToDeliverException;
import com.smartadserver.android.library.exception.SASVASTParsingException;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SASHttpAdElementProvider.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5431a = c.class.getSimpleName();
    private com.smartadserver.android.library.e.a.a b;
    private HttpClient c;
    private Context d;
    private com.smartadserver.android.library.a.a e;
    private boolean f = true;
    private String g = "";

    public c(Context context) {
        a(context);
    }

    public void a(Context context) {
        if (context != null) {
            this.d = context;
            this.b = new b(context);
        }
    }

    public long a() {
        return this.b.a();
    }

    public boolean b() {
        return this.f;
    }

    public void c() {
        if (this.e != null) {
            this.e.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASHttpAdElementProvider.java */
    /* loaded from: classes3.dex */
    public class a implements com.smartadserver.android.library.a.b {
        private SASAdView.a b;
        private String c;
        private long d;

        public a(SASAdView.a aVar, String str, long j) {
            this.b = aVar;
            this.c = str;
            this.d = j;
        }

        @Override // com.smartadserver.android.library.a.b
        public void a(String str) {
            SASAdElement sASAdElement;
            if (c.this.e != null) {
                c.this.g = c.this.e.b();
                c.this.f = c.this.e.a();
            }
            try {
                long currentTimeMillis = this.d - System.currentTimeMillis();
                if (str.length() > 0) {
                    com.smartadserver.android.library.g.c.a(c.f5431a, "onSuccess:\n" + str);
                    com.smartadserver.android.library.g.c.a(c.f5431a, "remainingTime:" + currentTimeMillis);
                    sASAdElement = com.smartadserver.android.library.b.a.a(str, currentTimeMillis);
                    try {
                        int parseInt = Integer.parseInt(c.this.g);
                        if (parseInt > 0) {
                            sASAdElement.setInsertionId(parseInt);
                        }
                    } catch (Exception e) {
                    }
                } else {
                    sASAdElement = null;
                }
                if (sASAdElement != null) {
                    com.smartadserver.android.library.g.c.a("Ad call succeeded with response: " + str);
                    this.b.adLoadingCompleted(sASAdElement);
                } else {
                    com.smartadserver.android.library.g.c.b("There is no ad to deliver on this placement. Please check the ad request parameters (in the loadAd method) and the ad programming on the manage interface: ");
                    this.b.adLoadingFailed(new SASNoAdToDeliverException("No ad to deliver or invalid ad request parameters"));
                }
            } catch (JSONException e2) {
                a(new SASInvalidJSONException("An error occurred when parsing JSON ad content. " + e2.getMessage()));
            } catch (SASAdTimeoutException e3) {
                a(e3);
            } catch (SASVASTParsingException e4) {
                a(e4);
            } finally {
                c.this.e = null;
            }
        }

        @Override // com.smartadserver.android.library.a.b
        public void a(Exception exc) {
            com.smartadserver.android.library.g.c.c("Ad call failed with exception : " + exc.toString());
            if (c.this.e != null) {
                c.this.g = c.this.e.b();
                c.this.f = c.this.e.a();
            }
            this.b.adLoadingFailed(exc);
            int i = 10;
            if (exc instanceof SASAdTimeoutException) {
                i = 100;
            }
            com.smartadserver.android.library.exception.a.a(c.this.d, this.c, exc, c.this.b.d, c.f5431a, c.this.g, i);
            c.this.e = null;
        }
    }

    public void a(int i, String str, int i2, String str2, boolean z, SASAdView.a aVar, int i3, JSONObject jSONObject) {
        if (!a(str)) {
            str = this.b.a(SASAdView.getBaseUrl(), i, str, i2, str2, z);
        }
        a(str, aVar, i3, jSONObject);
    }

    private void a(String str, SASAdView.a aVar, int i, JSONObject jSONObject) {
        HttpPost a2 = this.b.a(str, jSONObject);
        this.e = new com.smartadserver.android.library.a.a(this.b.d, i);
        if (this.c != null) {
            this.e.a(this.c);
        }
        com.smartadserver.android.library.g.c.a(f5431a, "load: " + str);
        com.smartadserver.android.library.g.c.a("Will load ad at URL : " + str);
        this.f = false;
        this.g = "";
        this.e.a(a2, new a(aVar, str, i + System.currentTimeMillis()));
    }

    private boolean a(String str) {
        try {
            new URL(str);
            return true;
        } catch (MalformedURLException e) {
            return false;
        }
    }
}
