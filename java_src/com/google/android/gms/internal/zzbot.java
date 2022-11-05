package com.google.android.gms.internal;

import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.EOFException;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzbot {
    private static long zzccJ = 0;
    private final zzbrn zzcaF;
    private final ScheduledExecutorService zzcat;
    private zzb zzccK;
    private boolean zzccL = false;
    private boolean zzccM = false;
    private long zzccN = 0;
    private zzbov zzccO;
    private zza zzccP;
    private ScheduledFuture<?> zzccQ;
    private ScheduledFuture<?> zzccR;
    private final zzbol zzccS;

    /* loaded from: classes2.dex */
    public interface zza {
        void zzat(Map<String, Object> map);

        void zzba(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface zzb {
        void close();

        void connect();

        void zziS(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc implements zzb, zzbsn {
        private zzbsm zzccU;

        private zzc(zzbsm zzbsmVar) {
            this.zzccU = zzbsmVar;
            this.zzccU.zza(this);
        }

        private void shutdown() {
            this.zzccU.close();
            try {
                this.zzccU.zzabv();
            } catch (InterruptedException e) {
                zzbot.this.zzcaF.zzd("Interrupted while shutting down websocket threads", e);
            }
        }

        @Override // com.google.android.gms.internal.zzbot.zzb
        public void close() {
            this.zzccU.close();
        }

        @Override // com.google.android.gms.internal.zzbot.zzb
        public void connect() {
            try {
                this.zzccU.connect();
            } catch (zzbso e) {
                if (zzbot.this.zzcaF.zzaaD()) {
                    zzbot.this.zzcaF.zza("Error connecting", e, new Object[0]);
                }
                shutdown();
            }
        }

        @Override // com.google.android.gms.internal.zzbsn
        public void onClose() {
            zzbot.this.zzcat.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbot.zzc.3
                @Override // java.lang.Runnable
                public void run() {
                    if (zzbot.this.zzcaF.zzaaD()) {
                        zzbot.this.zzcaF.zzi("closed", new Object[0]);
                    }
                    zzbot.this.zzYb();
                }
            });
        }

        @Override // com.google.android.gms.internal.zzbsn
        public void zzYd() {
            zzbot.this.zzcat.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbot.zzc.1
                @Override // java.lang.Runnable
                public void run() {
                    zzbot.this.zzccR.cancel(false);
                    zzbot.this.zzccL = true;
                    if (zzbot.this.zzcaF.zzaaD()) {
                        zzbot.this.zzcaF.zzi("websocket opened", new Object[0]);
                    }
                    zzbot.this.zzXZ();
                }
            });
        }

        @Override // com.google.android.gms.internal.zzbsn
        public void zza(final zzbso zzbsoVar) {
            zzbot.this.zzcat.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbot.zzc.4
                @Override // java.lang.Runnable
                public void run() {
                    if (zzbsoVar.getCause() == null || !(zzbsoVar.getCause() instanceof EOFException)) {
                        zzbot.this.zzcaF.zza("WebSocket error.", zzbsoVar, new Object[0]);
                    } else {
                        zzbot.this.zzcaF.zzi("WebSocket reached EOF.", new Object[0]);
                    }
                    zzbot.this.zzYb();
                }
            });
        }

        @Override // com.google.android.gms.internal.zzbsn
        public void zza(zzbsq zzbsqVar) {
            final String text = zzbsqVar.getText();
            if (zzbot.this.zzcaF.zzaaD()) {
                zzbrn zzbrnVar = zzbot.this.zzcaF;
                String valueOf = String.valueOf(text);
                zzbrnVar.zzi(valueOf.length() != 0 ? "ws message: ".concat(valueOf) : new String("ws message: "), new Object[0]);
            }
            zzbot.this.zzcat.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbot.zzc.2
                @Override // java.lang.Runnable
                public void run() {
                    zzbot.this.zziR(text);
                }
            });
        }

        @Override // com.google.android.gms.internal.zzbot.zzb
        public void zziS(String str) {
            this.zzccU.zziS(str);
        }
    }

    public zzbot(zzbol zzbolVar, zzbon zzbonVar, String str, zza zzaVar, String str2) {
        this.zzccS = zzbolVar;
        this.zzcat = zzbolVar.zzXt();
        this.zzccP = zzaVar;
        long j = zzccJ;
        zzccJ = 1 + j;
        this.zzcaF = new zzbrn(zzbolVar.zzXr(), "WebSocket", new StringBuilder(23).append("ws_").append(j).toString());
        this.zzccK = zza(zzbonVar, str, str2);
    }

    private boolean isBuffering() {
        return this.zzccO != null;
    }

    private void shutdown() {
        this.zzccM = true;
        this.zzccP.zzba(this.zzccL);
    }

    private static String[] zzF(String str, int i) {
        int i2 = 0;
        if (str.length() <= i) {
            return new String[]{str};
        }
        ArrayList arrayList = new ArrayList();
        while (i2 < str.length()) {
            arrayList.add(str.substring(i2, Math.min(i2 + i, str.length())));
            i2 += i;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzXZ() {
        if (!this.zzccM) {
            if (this.zzccQ != null) {
                this.zzccQ.cancel(false);
                if (this.zzcaF.zzaaD()) {
                    this.zzcaF.zzi(new StringBuilder(48).append("Reset keepAlive. Remaining: ").append(this.zzccQ.getDelay(TimeUnit.MILLISECONDS)).toString(), new Object[0]);
                }
            } else if (this.zzcaF.zzaaD()) {
                this.zzcaF.zzi("Reset keepAlive", new Object[0]);
            }
            this.zzccQ = this.zzcat.schedule(zzYa(), 45000L, TimeUnit.MILLISECONDS);
        }
    }

    private Runnable zzYa() {
        return new Runnable() { // from class: com.google.android.gms.internal.zzbot.2
            @Override // java.lang.Runnable
            public void run() {
                if (zzbot.this.zzccK != null) {
                    zzbot.this.zzccK.zziS(AppEventsConstants.EVENT_PARAM_VALUE_NO);
                    zzbot.this.zzXZ();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzYb() {
        if (!this.zzccM) {
            if (this.zzcaF.zzaaD()) {
                this.zzcaF.zzi("closing itself", new Object[0]);
            }
            shutdown();
        }
        this.zzccK = null;
        if (this.zzccQ != null) {
            this.zzccQ.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzYc() {
        if (this.zzccL || this.zzccM) {
            return;
        }
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("timed out on connect", new Object[0]);
        }
        this.zzccK.close();
    }

    private zzb zza(zzbon zzbonVar, String str, String str2) {
        if (str == null) {
            str = zzbonVar.getHost();
        }
        URI zza2 = zzbon.zza(str, zzbonVar.isSecure(), zzbonVar.getNamespace(), str2);
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", this.zzccS.zzkn());
        return new zzc(new zzbsm(zza2, null, hashMap));
    }

    private void zziP(String str) {
        this.zzccO.zziT(str);
        this.zzccN--;
        if (this.zzccN == 0) {
            try {
                this.zzccO.zzYj();
                Map<String, Object> zzje = zzbsv.zzje(this.zzccO.toString());
                this.zzccO = null;
                if (this.zzcaF.zzaaD()) {
                    zzbrn zzbrnVar = this.zzcaF;
                    String valueOf = String.valueOf(zzje);
                    zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 36).append("handleIncomingFrame complete frame: ").append(valueOf).toString(), new Object[0]);
                }
                this.zzccP.zzat(zzje);
            } catch (IOException e) {
                zzbrn zzbrnVar2 = this.zzcaF;
                String valueOf2 = String.valueOf(this.zzccO.toString());
                zzbrnVar2.zzd(valueOf2.length() != 0 ? "Error parsing frame: ".concat(valueOf2) : new String("Error parsing frame: "), e);
                close();
                shutdown();
            } catch (ClassCastException e2) {
                zzbrn zzbrnVar3 = this.zzcaF;
                String valueOf3 = String.valueOf(this.zzccO.toString());
                zzbrnVar3.zzd(valueOf3.length() != 0 ? "Error parsing frame (cast error): ".concat(valueOf3) : new String("Error parsing frame (cast error): "), e2);
                close();
                shutdown();
            }
        }
    }

    private String zziQ(String str) {
        if (str.length() <= 6) {
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt > 0) {
                    zzqw(parseInt);
                }
                return null;
            } catch (NumberFormatException e) {
            }
        }
        zzqw(1);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zziR(String str) {
        if (!this.zzccM) {
            zzXZ();
            if (isBuffering()) {
                zziP(str);
                return;
            }
            String zziQ = zziQ(str);
            if (zziQ == null) {
                return;
            }
            zziP(zziQ);
        }
    }

    private void zzqw(int i) {
        this.zzccN = i;
        this.zzccO = new zzbov();
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(new StringBuilder(41).append("HandleNewFrameCount: ").append(this.zzccN).toString(), new Object[0]);
        }
    }

    public void close() {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("websocket is being closed", new Object[0]);
        }
        this.zzccM = true;
        this.zzccK.close();
        if (this.zzccR != null) {
            this.zzccR.cancel(true);
        }
        if (this.zzccQ != null) {
            this.zzccQ.cancel(true);
        }
    }

    public void open() {
        this.zzccK.connect();
        this.zzccR = this.zzcat.schedule(new Runnable() { // from class: com.google.android.gms.internal.zzbot.1
            @Override // java.lang.Runnable
            public void run() {
                zzbot.this.zzYc();
            }
        }, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, TimeUnit.MILLISECONDS);
    }

    public void send(Map<String, Object> map) {
        zzXZ();
        try {
            String[] zzF = zzF(zzbsv.zzaF(map), 16384);
            if (zzF.length > 1) {
                this.zzccK.zziS(new StringBuilder(11).append(zzF.length).toString());
            }
            for (String str : zzF) {
                this.zzccK.zziS(str);
            }
        } catch (IOException e) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(map.toString());
            zzbrnVar.zzd(valueOf.length() != 0 ? "Failed to serialize message: ".concat(valueOf) : new String("Failed to serialize message: "), e);
            shutdown();
        }
    }
}
