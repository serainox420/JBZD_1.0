package com.flurry.sdk;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.customtabs.c;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RelativeLayout;
import com.flurry.sdk.em;
import com.flurry.sdk.es;
import com.flurry.sdk.ew;
import com.flurry.sdk.fc;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes2.dex */
public class fb {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2650a = fb.class.getName();
    public ProgressDialog b;
    private WeakReference<Context> h;
    private boolean j;
    private boolean k;
    private String l;
    public Bundle c = null;
    public ho d = null;
    a e = a.UNKNOWN;
    private long i = Long.MIN_VALUE;
    public int f = -1;
    public final kh<eh> g = new kh<eh>() { // from class: com.flurry.sdk.fb.6
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(eh ehVar) {
            eh ehVar2 = ehVar;
            if (ehVar2.c != fb.this.f || ehVar2.b == 0) {
                return;
            }
            jy.a().a(new ma() { // from class: com.flurry.sdk.fb.6.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    ki.a().b("com.flurry.android.impl.analytics.tumblr.TumblrEvents", fb.this.g);
                    fb.a(fb.this);
                    fb.this.d.a();
                }
            });
        }
    };
    private final kh<ls> m = new kh<ls>() { // from class: com.flurry.sdk.fb.8
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ls lsVar) {
            if (System.currentTimeMillis() - fb.this.i <= NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
                return;
            }
            jy.a().a(new ma() { // from class: com.flurry.sdk.fb.8.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    km.a(3, fb.f2650a, "Failed to load view in 10 seconds.");
                    if (fb.this.b.isShowing()) {
                        fb.this.b.dismiss();
                    }
                    fb.this.a(a.CANCEL);
                    eh.a(ei.kTimeOut, fb.this.f, "Request timed out");
                    fb.a(fb.this);
                    fb.this.d.a();
                }
            });
        }
    };

    /* loaded from: classes2.dex */
    public enum a {
        UNKNOWN,
        INIT,
        FETCHING_REQUEST_TOKEN,
        AUTHENTICATING_USER,
        GETTING_ACCESS_TOKEN,
        OAUTH_COMPLETE,
        CANCEL
    }

    public fb(Context context) {
        this.h = new WeakReference<>(null);
        this.h = new WeakReference<>(context);
        this.b = new ProgressDialog(context);
        this.b.setProgressStyle(0);
        this.b.setCancelable(true);
        this.b.setCanceledOnTouchOutside(false);
        this.b.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.flurry.sdk.fb.7
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                fb.this.d.a();
            }
        });
        this.l = context.getApplicationContext().getPackageName();
        if (context == null) {
            Log.d(f2650a, "Context is null");
            this.j = false;
        } else if (context.getPackageManager().resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.l + "://flurryandroidtumblrshare")), 0) != null) {
            this.j = true;
        } else {
            Log.d(f2650a, "To use chrome tabs for tumblr login, setting up intent filter deep link in app manifest is required.");
            this.j = false;
        }
        try {
            Class.forName("android.support.customtabs.c");
            this.k = true;
        } catch (ClassNotFoundException e) {
            Log.d(f2650a, "To use chrome tabs for tumblr login, must include chrome custom tabs as dependency");
            this.k = false;
        }
    }

    public final void a() {
        a(a.FETCHING_REQUEST_TOKEN);
        final boolean z = this.j && this.k && Build.VERSION.SDK_INT >= 15;
        final String str = null;
        if (z) {
            str = this.l + "://flurryandroidtumblrshare";
        }
        final es.a aVar = new es.a() { // from class: com.flurry.sdk.fb.1
            @Override // com.flurry.sdk.es.a
            public final void a(String str2) {
                eh.a(ei.kRequestTokenFailed, fb.this.f, str2);
                fb.a(fb.this);
            }

            @Override // com.flurry.sdk.es.a
            public final void a(el elVar) {
                ed.a(elVar);
                fb.a(fb.this);
                if (z) {
                    android.support.customtabs.c a2 = new c.a().a();
                    a2.f12a.setFlags(1342177280);
                    a2.launchUrl((Activity) ((Context) fb.this.h.get()), Uri.parse(ef.a(elVar)));
                    fb.this.d.b();
                    return;
                }
                fb.a(fb.this, elVar, ef.a(elVar));
            }
        };
        jy.a().b(new ma() { // from class: com.flurry.sdk.eu.1
            @Override // com.flurry.sdk.ma
            public final void a() {
                new es().a(aVar, str);
            }
        });
    }

    public final void a(final el elVar, final String str) {
        if (this.e.equals(a.CANCEL)) {
            km.a(3, f2650a, "Do not show fetch access token. Activity destroyed.");
            return;
        }
        a(a.GETTING_ACCESS_TOKEN);
        this.b.show();
        c();
        final em.a aVar = new em.a() { // from class: com.flurry.sdk.fb.3
            @Override // com.flurry.sdk.em.a
            public final void a(el elVar2) {
                fb.a(fb.this, elVar2);
            }

            @Override // com.flurry.sdk.em.a
            public final void a(String str2) {
                eh.a(ei.kAccessTokenFailed, fb.this.f, str2);
            }
        };
        jy.a().b(new ma() { // from class: com.flurry.sdk.eu.2
            @Override // com.flurry.sdk.ma
            public final void a() {
                new em().a(elVar, str, aVar);
            }
        });
    }

    public final void b() {
        if (this.e.equals(a.CANCEL)) {
            km.a(3, f2650a, "Do not get user info. Activity destroyed.");
            return;
        }
        final ew.a aVar = new ew.a() { // from class: com.flurry.sdk.fb.4
            @Override // com.flurry.sdk.ew.a
            public final void a(List<String> list) {
                fb.a(fb.this, list);
            }

            @Override // com.flurry.sdk.ew.a
            public final void a(int i, String str) {
                if (i != 401) {
                    eh.a(ei.kUserInfoFailed, fb.this.f, str);
                    return;
                }
                fb fbVar = fb.this;
                km.a(3, fb.f2650a, "Authentication Error. Lets reset the access token.");
                if (fbVar.e.equals(a.INIT) || fbVar.e.equals(a.OAUTH_COMPLETE)) {
                    ed.a();
                    ed.b();
                    fbVar.a();
                    return;
                }
                eh.a(ei.kUserInfoFailed, fbVar.f, null);
            }
        };
        jy.a().b(new ma() { // from class: com.flurry.sdk.eu.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                new ew().a(aVar);
            }
        });
    }

    public final void a(a aVar) {
        km.a(3, f2650a, "Changing state from: " + this.e + " to: " + aVar);
        this.e = aVar;
    }

    public final void c() {
        this.i = System.currentTimeMillis();
        lt.a().a(this.m);
    }

    static /* synthetic */ void a(fb fbVar) {
        fbVar.i = Long.MIN_VALUE;
        lt.a().b(fbVar.m);
        if (!fbVar.b.isShowing()) {
            return;
        }
        fbVar.b.dismiss();
    }

    static /* synthetic */ void a(fb fbVar, final el elVar, final String str) {
        final Context context = fbVar.h.get();
        if (context == null) {
            eh.a(ei.kNoContext, fbVar.f, null);
        } else if (fbVar.e.equals(a.CANCEL)) {
            km.a(3, f2650a, "Do not show OAuth web view. Activity destroyed.");
        } else {
            fbVar.a(a.AUTHENTICATING_USER);
            km.a(3, f2650a, "Starting auth url." + str);
            jy.a().a(new ma() { // from class: com.flurry.sdk.fb.2
                @Override // com.flurry.sdk.ma
                public final void a() {
                    fb.a(fb.this);
                    fc fcVar = new fc(context, str);
                    fb.this.d.a(fcVar);
                    fcVar.setRequestCompleteListener(new fc.b() { // from class: com.flurry.sdk.fb.2.1
                        @Override // com.flurry.sdk.fc.b
                        public final void a(String str2) {
                            if (!TextUtils.isEmpty(str2)) {
                                fb.this.d.a(new RelativeLayout(context));
                                fb.this.a(elVar, str2);
                                return;
                            }
                            eh.a(ei.kOAuthLoginFailed, fb.this.f, "Login failed");
                        }
                    });
                }
            });
        }
    }

    static /* synthetic */ void a(fb fbVar, el elVar) {
        ed.b(elVar);
        fbVar.a(a.OAUTH_COMPLETE);
        fbVar.b();
    }

    static /* synthetic */ void a(fb fbVar, final List list) {
        final Context context = fbVar.h.get();
        if (context == null) {
            eh.a(ei.kNoContext, fbVar.f, null);
        } else if (fbVar.e.equals(a.CANCEL)) {
            km.a(3, f2650a, "Do not launch post dialog. Activity destroyed.");
        } else {
            jy.a().a(new ma() { // from class: com.flurry.sdk.fb.5
                @Override // com.flurry.sdk.ma
                public final void a() {
                    fb.a(fb.this);
                    ey a2 = ez.a(fb.this.c);
                    if (a2 == null) {
                        eh.a(ei.kUnknown, fb.this.f, null);
                        return;
                    }
                    final fd fdVar = new fd(a2, list);
                    Context context2 = context;
                    final ho hoVar = fb.this.d;
                    fdVar.f2666a = new RelativeLayout(context2);
                    fdVar.a(context2, fdVar.f2666a);
                    fdVar.b = new RelativeLayout(context2);
                    fdVar.b.setBackgroundDrawable(new ColorDrawable(0));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams.addRule(13);
                    fdVar.b.addView(fdVar.f2666a, layoutParams);
                    fdVar.b.setBackgroundColor(Color.parseColor("#90000000"));
                    fdVar.c = new Dialog(context2);
                    fdVar.c.setCancelable(true);
                    fdVar.c.setCanceledOnTouchOutside(false);
                    fdVar.c.setContentView(fdVar.b);
                    fdVar.c.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.flurry.sdk.fd.1
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            eh.a(ei.kPostCancelled, fdVar.n.e, "Post cancelled");
                            hoVar.a();
                        }
                    });
                    fdVar.c.getWindow().setBackgroundDrawable(new ColorDrawable(0));
                    fdVar.c.show();
                }
            });
        }
    }
}
