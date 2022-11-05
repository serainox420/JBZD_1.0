package com.smaato.soma;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import com.google.android.gms.drive.DriveFile;
import com.smaato.soma.bannerutilities.constant.BannerStatus;
import com.smaato.soma.exception.FullScreenBannerClosingLandingPageFailed;
import com.smaato.soma.exception.UnableToViewFullScreenBanner;
import java.lang.ref.WeakReference;
/* compiled from: FullScreenBanner.java */
/* loaded from: classes3.dex */
public class n extends com.smaato.soma.a<k> implements g {
    private AlertDialog.Builder d;
    private BannerStatus e;
    private p f;

    /* compiled from: FullScreenBanner.java */
    /* renamed from: com.smaato.soma.n$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends l<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f5202a;

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            this.f5202a.d = new AlertDialog.Builder(this.f5202a.a());
            return null;
        }
    }

    @Override // com.smaato.soma.a
    public void c() {
        super.c();
        new l<Void>() { // from class: com.smaato.soma.n.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (((j) n.this.c).getParent() != null) {
                    ((ViewGroup) ((j) n.this.c).getParent()).removeView((j) n.this.c);
                    return null;
                }
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.g
    public void onWillOpenLandingPage(j jVar) {
    }

    @Override // com.smaato.soma.g
    public void onWillCloseLandingPage(j jVar) throws FullScreenBannerClosingLandingPageFailed {
        try {
            c();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new FullScreenBannerClosingLandingPageFailed(e2);
        }
    }

    /* compiled from: FullScreenBanner.java */
    /* loaded from: classes3.dex */
    public class a extends j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f5204a;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.smaato.soma.j
        public void j() throws UnableToViewFullScreenBanner {
            try {
                if (this.f5204a.e != BannerStatus.ERROR && this.f5204a.f != null && this.f5204a.b() == null) {
                    super.j();
                    this.f5204a.d = new AlertDialog.Builder(getContext());
                    this.f5204a.d.setCancelable(false);
                    this.f5204a.d.setView((a) this.f5204a.c);
                    this.f5204a.d.setNegativeButton("Skip", new DialogInterface.OnClickListener() { // from class: com.smaato.soma.n.a.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            new l<Void>() { // from class: com.smaato.soma.n.a.1.1
                                @Override // com.smaato.soma.l
                                /* renamed from: a */
                                public Void b() throws Exception {
                                    if (a.this.f5204a.f4858a != null) {
                                        a.this.f5204a.f4858a.b();
                                    }
                                    a.this.f5204a.c();
                                    return null;
                                }
                            }.c();
                        }
                    });
                    if (this.f5204a.f.d() != null && (this.f5204a.f.d() == AdType.TEXT || this.f5204a.f.d() == AdType.IMAGE)) {
                        this.f5204a.d.setPositiveButton("More Info", new DialogInterface.OnClickListener() { // from class: com.smaato.soma.n.a.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(final DialogInterface dialogInterface, int i) {
                                new l<Void>() { // from class: com.smaato.soma.n.a.2.1
                                    @Override // com.smaato.soma.l
                                    /* renamed from: a */
                                    public Void b() throws Exception {
                                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a.this.f5204a.f.f()));
                                        if (a.this.f5204a.f4858a != null) {
                                            a.this.f5204a.f4858a.a();
                                        }
                                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                                        a.this.getContext().getApplicationContext().startActivity(intent);
                                        dialogInterface.dismiss();
                                        return null;
                                    }
                                }.c();
                            }
                        });
                    }
                    if (this.f5204a.f4858a != null) {
                        this.f5204a.f4858a.c();
                    }
                    this.f5204a.a(this.f5204a.d.show());
                    g();
                    this.f5204a.e = BannerStatus.ERROR;
                }
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new UnableToViewFullScreenBanner(e2);
            }
        }

        @Override // com.smaato.soma.j
        public Handler getBannerAnimatorHandler() {
            if (this.i == null) {
                setBannerAnimatorHandler(new HandlerC0565a(this, this, null));
            }
            return this.i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: FullScreenBanner.java */
        /* renamed from: com.smaato.soma.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class HandlerC0565a extends Handler {
            private WeakReference<j> b;
            private j c;

            /* synthetic */ HandlerC0565a(a aVar, j jVar, AnonymousClass1 anonymousClass1) {
                this(jVar);
            }

            private HandlerC0565a(j jVar) {
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
                super.handleMessage(message);
                new l<Void>() { // from class: com.smaato.soma.n.a.a.1
                    @Override // com.smaato.soma.l
                    /* renamed from: a */
                    public Void b() throws Exception {
                        j jVar = HandlerC0565a.this.a().get();
                        if (jVar != null) {
                            if (message.what == 101) {
                                ((ViewGroup) jVar.getParent()).removeView(jVar);
                                jVar.clearAnimation();
                                jVar.clearFocus();
                                jVar.destroyDrawingCache();
                                jVar.getBannerState().b();
                                com.smaato.soma.bannerutilities.b.a().a(a.this.getCurrentPackage(), jVar);
                                a.this.h();
                            } else if (message.what == 102) {
                                jVar.getBannerState().c();
                            } else if (message.what == 107) {
                                jVar.getBannerState().c();
                            }
                        }
                        return null;
                    }
                }.c();
            }
        }
    }
}
