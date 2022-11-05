package net.gotev.uploadservice;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.media.RingtoneManager;
import android.os.Handler;
import android.support.v4.app.aj;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import net.gotev.uploadservice.BroadcastData;
/* compiled from: UploadTask.java */
/* loaded from: classes3.dex */
public abstract class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5848a = j.class.getSimpleName();
    protected static final byte[] b = "".getBytes(Charset.forName("UTF-8"));
    protected UploadService c;
    protected long f;
    protected long g;
    private int i;
    private long j;
    private NotificationManager k;
    private aj.d l;
    private Handler m;
    private int o;
    protected UploadTaskParameters d = null;
    private final List<String> h = new ArrayList();
    protected boolean e = true;
    private final long n = new Date().getTime();

    protected abstract void a() throws Exception;

    protected void d() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(UploadService uploadService, Intent intent) throws IOException {
        this.k = (NotificationManager) uploadService.getSystemService("notification");
        this.l = new aj.d(uploadService);
        this.c = uploadService;
        this.m = new Handler(uploadService.getMainLooper());
        this.d = (UploadTaskParameters) intent.getParcelableExtra("taskParameters");
    }

    @Override // java.lang.Runnable
    public final void run() {
        a(new UploadInfo(this.d.c()));
        this.o = 0;
        int i = UploadService.g;
        while (this.o <= this.d.e() && this.e) {
            this.o++;
            try {
                a();
                break;
            } catch (Exception e) {
                if (!this.e) {
                    break;
                } else if (this.o > this.d.e()) {
                    a(e);
                } else {
                    Logger.a(f5848a, "Error in uploadId " + this.d.c() + " on attempt " + this.o + ". Waiting " + (i / 1000) + "s before next attempt. ", e);
                    long currentTimeMillis = System.currentTimeMillis();
                    while (this.e && System.currentTimeMillis() < i + currentTimeMillis) {
                        try {
                            Thread.sleep(2000L);
                        } catch (Throwable th) {
                        }
                    }
                    i *= UploadService.h;
                    if (i > UploadService.i) {
                        i = UploadService.i;
                    }
                }
            }
        }
        if (!this.e) {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final j a(long j) {
        this.j = j;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final j b(int i) {
        this.i = i;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(long j, long j2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= this.j + 166) {
            a(currentTimeMillis);
            Logger.c(f5848a, "Broadcasting upload progress for " + this.d.c() + ": " + j + " bytes of " + j2);
            final UploadInfo uploadInfo = new UploadInfo(this.d.c(), this.n, j, j2, this.o - 1, this.h, this.d.a().size() + this.h.size());
            BroadcastData a2 = new BroadcastData().a(BroadcastData.Status.IN_PROGRESS).a(uploadInfo);
            final i b2 = UploadService.b(this.d.c());
            if (b2 != null) {
                this.m.post(new Runnable() { // from class: net.gotev.uploadservice.j.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b2.a(j.this.c, uploadInfo);
                    }
                });
            } else {
                this.c.sendBroadcast(a2.a());
            }
            b(uploadInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(final ServerResponse serverResponse) {
        boolean z = serverResponse.a() / 100 == 2;
        if (z) {
            d();
            if (this.d.f() && !this.h.isEmpty()) {
                for (String str : this.h) {
                    a(new File(str));
                }
            }
        }
        Logger.c(f5848a, "Broadcasting upload completed for " + this.d.c());
        final UploadInfo uploadInfo = new UploadInfo(this.d.c(), this.n, this.g, this.f, this.o - 1, this.h, this.d.a().size());
        final i b2 = UploadService.b(this.d.c());
        if (b2 != null) {
            this.m.post(new Runnable() { // from class: net.gotev.uploadservice.j.2
                @Override // java.lang.Runnable
                public void run() {
                    b2.a(j.this.c, uploadInfo, serverResponse);
                }
            });
        } else {
            this.c.sendBroadcast(new BroadcastData().a(BroadcastData.Status.COMPLETED).a(uploadInfo).a(serverResponse).a());
        }
        UploadNotificationConfig b3 = this.d.b();
        if (b3 != null) {
            if (z) {
                a(uploadInfo, b3.k(), b3.n(), b3.b(), b3.f());
            } else {
                a(uploadInfo, b3.l(), b3.o(), b3.c(), b3.g());
            }
        }
        this.c.a(this.d.c());
    }

    protected final void e() {
        Logger.c(f5848a, "Broadcasting cancellation for upload with ID: " + this.d.c());
        final UploadInfo uploadInfo = new UploadInfo(this.d.c(), this.n, this.g, this.f, this.o - 1, this.h, this.d.a().size());
        BroadcastData a2 = new BroadcastData().a(BroadcastData.Status.CANCELLED).a(uploadInfo);
        final i b2 = UploadService.b(this.d.c());
        if (b2 != null) {
            this.m.post(new Runnable() { // from class: net.gotev.uploadservice.j.3
                @Override // java.lang.Runnable
                public void run() {
                    b2.b(j.this.c, uploadInfo);
                }
            });
        } else {
            this.c.sendBroadcast(a2.a());
        }
        UploadNotificationConfig b3 = this.d.b();
        if (b3 != null) {
            a(uploadInfo, b3.m(), b3.p(), b3.d(), b3.h());
        }
        this.c.a(this.d.c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String str) {
        if (!this.h.contains(str)) {
            this.h.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<String> f() {
        return this.h;
    }

    private void a(final Exception exc) {
        Logger.b(f5848a, "Broadcasting error for upload with ID: " + this.d.c() + ". " + exc.getMessage());
        final UploadInfo uploadInfo = new UploadInfo(this.d.c(), this.n, this.g, this.f, this.o - 1, this.h, this.d.a().size());
        BroadcastData a2 = new BroadcastData().a(BroadcastData.Status.ERROR).a(uploadInfo).a(exc);
        final i b2 = UploadService.b(this.d.c());
        if (b2 != null) {
            this.m.post(new Runnable() { // from class: net.gotev.uploadservice.j.4
                @Override // java.lang.Runnable
                public void run() {
                    b2.a(j.this.c, uploadInfo, exc);
                }
            });
        } else {
            this.c.sendBroadcast(a2.a());
        }
        UploadNotificationConfig b3 = this.d.b();
        if (b3 != null && b3.l() != null) {
            a(uploadInfo, b3.l(), b3.o(), b3.c(), b3.g());
        }
        this.c.a(this.d.c());
    }

    private void a(UploadInfo uploadInfo) {
        if (this.d.b() != null && this.d.b().j() != null) {
            this.l.a((CharSequence) g.a(this.d.b().i(), uploadInfo)).b(g.a(this.d.b().j(), uploadInfo)).a(this.d.b().a(this.c)).a(this.d.b().a()).c(this.d.b().e()).a(UploadService.d).a(100, 0, true).a(true);
            Notification a2 = this.l.a();
            if (this.c.a(this.d.c(), a2)) {
                this.k.cancel(this.i);
            } else {
                this.k.notify(this.i, a2);
            }
        }
    }

    private void b(UploadInfo uploadInfo) {
        if (this.d.b() != null && this.d.b().j() != null) {
            this.l.a((CharSequence) g.a(this.d.b().i(), uploadInfo)).b(g.a(this.d.b().j(), uploadInfo)).a(this.d.b().a(this.c)).a(this.d.b().a()).c(this.d.b().e()).a(UploadService.d).a((int) uploadInfo.g(), (int) uploadInfo.f(), false).a(true);
            Notification a2 = this.l.a();
            if (this.c.a(this.d.c(), a2)) {
                this.k.cancel(this.i);
            } else {
                this.k.notify(this.i, a2);
            }
        }
    }

    private void b() {
        if (this.d.b().r()) {
            this.l.a(RingtoneManager.getActualDefaultRingtoneUri(this.c, 2));
            this.l.b(false);
        }
    }

    private void a(UploadInfo uploadInfo, String str, boolean z, int i, int i2) {
        if (this.d.b() != null) {
            this.k.cancel(this.i);
            if (str != null && !z) {
                this.l.a((CharSequence) g.a(this.d.b().i(), uploadInfo)).b(g.a(str, uploadInfo)).a(this.d.b().a(this.c)).c(this.d.b().q()).a(i).c(i2).a(UploadService.d).a(0, 0, false).a(false);
                b();
                this.k.notify(this.i + 1, this.l.a());
            }
        }
    }

    private boolean a(File file) {
        boolean z;
        Exception e;
        try {
            z = file.delete();
        } catch (Exception e2) {
            z = false;
            e = e2;
        }
        try {
            if (!z) {
                Logger.a(f5848a, "Unable to delete: " + file.getAbsolutePath());
            } else {
                Logger.b(f5848a, "Successfully deleted: " + file.getAbsolutePath());
            }
        } catch (Exception e3) {
            e = e3;
            Logger.a(f5848a, "Error while deleting: " + file.getAbsolutePath() + " Check if you granted: android.permission.WRITE_EXTERNAL_STORAGE", e);
            return z;
        }
        return z;
    }

    public final void g() {
        this.e = false;
    }
}
