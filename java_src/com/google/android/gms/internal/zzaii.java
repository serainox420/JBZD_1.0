package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.internal.zzaiz;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzaii extends zzaiz.zza {
    private final int zzaHE;
    private final com.google.android.gms.drive.events.zzh zzaNF;
    private final zza zzaNG;
    private final List<Integer> zzaNH = new ArrayList();

    /* loaded from: classes2.dex */
    private static class zza extends Handler {
        private final Context mContext;

        private zza(Looper looper, Context context) {
            super(looper);
            this.mContext = context;
        }

        private static void zza(com.google.android.gms.drive.events.zzm zzmVar, com.google.android.gms.drive.events.zzk zzkVar) {
            DataHolder zzAQ = zzkVar.zzAQ();
            if (zzAQ != null) {
                final MetadataBuffer metadataBuffer = new MetadataBuffer(zzAQ);
                new Object() { // from class: com.google.android.gms.internal.zzaii.zza.1
                };
            }
            if (zzkVar.zzAR()) {
                zzkVar.zzAS();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    com.google.android.gms.drive.events.zzh zzhVar = (com.google.android.gms.drive.events.zzh) pair.first;
                    DriveEvent driveEvent = (DriveEvent) pair.second;
                    switch (driveEvent.getType()) {
                        case 1:
                            ((ChangeListener) zzhVar).onChange((ChangeEvent) driveEvent);
                            return;
                        case 2:
                            ((CompletionListener) zzhVar).onCompletion((CompletionEvent) driveEvent);
                            return;
                        case 3:
                            zza((com.google.android.gms.drive.events.zzm) zzhVar, (com.google.android.gms.drive.events.zzk) driveEvent);
                            return;
                        case 4:
                            ((com.google.android.gms.drive.events.zzd) zzhVar).zza((com.google.android.gms.drive.events.zzb) driveEvent);
                            return;
                        case 5:
                        case 6:
                        case 7:
                        default:
                            String valueOf = String.valueOf(driveEvent);
                            zzaic.zzF("EventCallback", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unexpected event: ").append(valueOf).toString());
                            return;
                        case 8:
                            new zzagk(((com.google.android.gms.drive.events.zzn) driveEvent).zzAT());
                            return;
                    }
                default:
                    zzaic.zzp(this.mContext, "EventCallback", "Don't know how to handle this event");
                    return;
            }
        }

        public void zza(com.google.android.gms.drive.events.zzh zzhVar, DriveEvent driveEvent) {
            sendMessage(obtainMessage(1, new Pair(zzhVar, driveEvent)));
        }
    }

    public zzaii(Looper looper, Context context, int i, com.google.android.gms.drive.events.zzh zzhVar) {
        this.zzaHE = i;
        this.zzaNF = zzhVar;
        this.zzaNG = new zza(looper, context);
    }

    @Override // com.google.android.gms.internal.zzaiz
    public void zzc(zzajp zzajpVar) throws RemoteException {
        DriveEvent zzBi = zzajpVar.zzBi();
        com.google.android.gms.common.internal.zzac.zzaw(this.zzaHE == zzBi.getType());
        com.google.android.gms.common.internal.zzac.zzaw(this.zzaNH.contains(Integer.valueOf(zzBi.getType())));
        this.zzaNG.zza(this.zzaNF, zzBi);
    }

    public void zzeQ(int i) {
        this.zzaNH.add(Integer.valueOf(i));
    }

    public boolean zzeR(int i) {
        return this.zzaNH.contains(Integer.valueOf(i));
    }
}
