package com.smaato.soma.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.google.android.gms.drive.DriveFile;
import com.smaato.soma.ExpandedBannerActivity;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.BannerViewSwitchingViewsException;
import com.smaato.soma.j;
import com.smaato.soma.l;
import com.smaato.soma.s;
import java.lang.ref.WeakReference;
/* compiled from: ToasterLayout.java */
/* loaded from: classes3.dex */
public class c extends j {

    /* renamed from: a  reason: collision with root package name */
    s f4870a;

    public c(Context context, s sVar) {
        super(context);
        this.f4870a = sVar;
    }

    @Override // com.smaato.soma.j
    public Handler getBannerAnimatorHandler() {
        if (this.i == null) {
            setBannerAnimatorHandler(new a(this));
        }
        return this.i;
    }

    @Override // com.smaato.soma.j
    public boolean f() throws BannerViewSwitchingViewsException {
        boolean f = super.f();
        this.f4870a.a();
        return f;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        new l<Void>() { // from class: com.smaato.soma.b.c.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (z) {
                    com.smaato.soma.internal.requests.settings.a.a().m();
                    return null;
                }
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToasterLayout.java */
    /* loaded from: classes3.dex */
    public class a extends Handler {
        private WeakReference<j> b;
        private j c;

        private a(j jVar) {
            this.b = null;
            this.c = jVar;
        }

        protected WeakReference<j> a() {
            if (this.b == null) {
                this.b = new WeakReference<>(this.c);
            }
            return this.b;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.b.c.a.1
            });
            super.handleMessage(message);
            new l<Void>() { // from class: com.smaato.soma.b.c.a.2
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    j jVar = a.this.a().get();
                    if (jVar != null) {
                        com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Toaster_Layout", "handleMessage() with" + message.what, 1, DebugCategory.DEBUG));
                        if (message.what == 101) {
                            jVar.getBannerState().b();
                            com.smaato.soma.bannerutilities.b.a().a(c.this.getCurrentPackage(), jVar);
                            c.this.f4870a.b();
                            c.this.g.a(false);
                            c.this.h();
                        } else if (message.what == 107) {
                            try {
                                com.smaato.soma.bannerutilities.b.a().a(true);
                                if (!c.this.g.a()) {
                                    jVar.getBannerState().d();
                                } else {
                                    jVar.getBannerState().c();
                                }
                                c.this.i();
                                c.this.g.a(true);
                            } catch (Exception e) {
                            }
                        } else if (message.what == 102) {
                            if (!c.this.g.a()) {
                                jVar.getBannerState().d();
                            } else {
                                jVar.getBannerState().c();
                            }
                            c.this.i();
                        } else if (message.what == 108) {
                            jVar.getBannerState().c();
                            String str = new String(c.this.getCurrentPackage().e().getUrl());
                            try {
                                ((ExpandedBannerActivity) c.this.getCurrentPackage().b()).finish();
                                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                                intent.addFlags(DriveFile.MODE_READ_ONLY);
                                c.this.getContext().startActivity(intent);
                            } catch (ActivityNotFoundException e2) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Toaster_Layout", "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml", 0, DebugCategory.ERROR));
                            } catch (Exception e3) {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Toaster_Layout", "Exception inside Internal Browser", 0, DebugCategory.ERROR));
                            }
                        }
                    }
                    return null;
                }
            }.c();
        }
    }
}
