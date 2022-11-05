package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes2.dex */
public class zzaup extends zzauh {
    private boolean zzafh;
    private final AlarmManager zzafi;
    private final zzatk zzbwa;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaup(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzafi = (AlarmManager) getContext().getSystemService("alarm");
        this.zzbwa = new zzatk(zzaueVar) { // from class: com.google.android.gms.internal.zzaup.1
            @Override // com.google.android.gms.internal.zzatk
            public void run() {
                zzaup.this.zzNh();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzNh() {
        Intent intent = new Intent();
        Context context = getContext();
        zzKn().zzLg();
        Intent className = intent.setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        getContext().sendBroadcast(className);
    }

    private PendingIntent zzpE() {
        Intent intent = new Intent();
        Context context = getContext();
        zzKn().zzLg();
        Intent className = intent.setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver");
        className.setAction("com.google.android.gms.measurement.UPLOAD");
        return PendingIntent.getBroadcast(getContext(), 0, className, 0);
    }

    public void cancel() {
        zzob();
        this.zzafh = false;
        this.zzafi.cancel(zzpE());
        this.zzbwa.cancel();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
        this.zzafi.cancel(zzpE());
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    public void zzy(long j) {
        zzob();
        zzKn().zzLg();
        if (!zzaub.zzi(getContext(), false)) {
            zzKl().zzMd().log("Receiver not registered/enabled");
        }
        zzKn().zzLg();
        if (!zzaum.zzj(getContext(), false)) {
            zzKl().zzMd().log("Service not registered/enabled");
        }
        cancel();
        long elapsedRealtime = zznR().elapsedRealtime() + j;
        this.zzafh = true;
        if (j < zzKn().zzLx() && !this.zzbwa.zzcy()) {
            this.zzbwa.zzy(j);
        }
        this.zzafi.setInexactRepeating(2, elapsedRealtime, Math.max(zzKn().zzLy(), j), zzpE());
    }
}
