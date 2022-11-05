package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbot;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzboj implements zzbot.zza {
    private static long zzcbr = 0;
    private final zzbrn zzcaF;
    private zzbon zzcbs;
    private zzbot zzcbt;
    private zza zzcbu;
    private zzc zzcbv;

    /* loaded from: classes2.dex */
    public interface zza {
        void zzau(Map<String, Object> map);

        void zzb(zzb zzbVar);

        void zziJ(String str);

        void zziK(String str);

        void zzj(long j, String str);
    }

    /* loaded from: classes2.dex */
    public enum zzb {
        SERVER_RESET,
        OTHER
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum zzc {
        REALTIME_CONNECTING,
        REALTIME_CONNECTED,
        REALTIME_DISCONNECTED
    }

    public zzboj(zzbol zzbolVar, zzbon zzbonVar, String str, zza zzaVar, String str2) {
        long j = zzcbr;
        zzcbr = 1 + j;
        this.zzcbs = zzbonVar;
        this.zzcbu = zzaVar;
        this.zzcaF = new zzbrn(zzbolVar.zzXr(), "Connection", new StringBuilder(25).append("conn_").append(j).toString());
        this.zzcbv = zzc.REALTIME_CONNECTING;
        this.zzcbt = new zzbot(zzbolVar, zzbonVar, str, this, str2);
    }

    private void zzau(Map<String, Object> map) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(map.toString());
            zzbrnVar.zzi(valueOf.length() != 0 ? "received data message: ".concat(valueOf) : new String("received data message: "), new Object[0]);
        }
        this.zzcbu.zzau(map);
    }

    private void zzav(Map<String, Object> map) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(map.toString());
            zzbrnVar.zzi(valueOf.length() != 0 ? "Got control message: ".concat(valueOf) : new String("Got control message: "), new Object[0]);
        }
        try {
            String str = (String) map.get("t");
            if (str == null) {
                if (this.zzcaF.zzaaD()) {
                    zzbrn zzbrnVar2 = this.zzcaF;
                    String valueOf2 = String.valueOf(map.toString());
                    zzbrnVar2.zzi(valueOf2.length() != 0 ? "Got invalid control message: ".concat(valueOf2) : new String("Got invalid control message: "), new Object[0]);
                }
                close();
            } else if (str.equals("s")) {
                zziH((String) map.get(PhoenixConstants.DEBUG_PARAM));
            } else if (str.equals("r")) {
                zziI((String) map.get(PhoenixConstants.DEBUG_PARAM));
            } else if (str.equals("h")) {
                zzaw((Map) map.get(PhoenixConstants.DEBUG_PARAM));
            } else if (!this.zzcaF.zzaaD()) {
            } else {
                zzbrn zzbrnVar3 = this.zzcaF;
                String valueOf3 = String.valueOf(str);
                zzbrnVar3.zzi(valueOf3.length() != 0 ? "Ignoring unknown control message: ".concat(valueOf3) : new String("Ignoring unknown control message: "), new Object[0]);
            }
        } catch (ClassCastException e) {
            if (this.zzcaF.zzaaD()) {
                zzbrn zzbrnVar4 = this.zzcaF;
                String valueOf4 = String.valueOf(e.toString());
                zzbrnVar4.zzi(valueOf4.length() != 0 ? "Failed to parse control message: ".concat(valueOf4) : new String("Failed to parse control message: "), new Object[0]);
            }
            close();
        }
    }

    private void zzaw(Map<String, Object> map) {
        long longValue = ((Long) map.get("ts")).longValue();
        this.zzcbu.zziJ((String) map.get("h"));
        String str = (String) map.get("s");
        if (this.zzcbv == zzc.REALTIME_CONNECTING) {
            zzi(longValue, str);
        }
    }

    private void zzb(Map<String, Object> map, boolean z) {
        if (this.zzcbv != zzc.REALTIME_CONNECTED) {
            this.zzcaF.zzi("Tried to send on an unconnected connection", new Object[0]);
            return;
        }
        if (z) {
            this.zzcaF.zzi("Sending data (contents hidden)", new Object[0]);
        } else {
            this.zzcaF.zzi("Sending data: %s", map);
        }
        this.zzcbt.send(map);
    }

    private void zzi(long j, String str) {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("realtime connection established", new Object[0]);
        }
        this.zzcbv = zzc.REALTIME_CONNECTED;
        this.zzcbu.zzj(j, str);
    }

    private void zziH(String str) {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Connection shutdown command received. Shutting down...", new Object[0]);
        }
        this.zzcbu.zziK(str);
        close();
    }

    private void zziI(String str) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(this.zzcbs.getHost());
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 62 + String.valueOf(str).length()).append("Got a reset; killing connection to ").append(valueOf).append("; Updating internalHost to ").append(str).toString(), new Object[0]);
        }
        this.zzcbu.zziJ(str);
        zza(zzb.SERVER_RESET);
    }

    public void close() {
        zza(zzb.OTHER);
    }

    public void open() {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Opening a connection", new Object[0]);
        }
        this.zzcbt.open();
    }

    public void zza(zzb zzbVar) {
        if (this.zzcbv != zzc.REALTIME_DISCONNECTED) {
            if (this.zzcaF.zzaaD()) {
                this.zzcaF.zzi("closing realtime connection", new Object[0]);
            }
            this.zzcbv = zzc.REALTIME_DISCONNECTED;
            if (this.zzcbt != null) {
                this.zzcbt.close();
                this.zzcbt = null;
            }
            this.zzcbu.zzb(zzbVar);
        }
    }

    public void zza(Map<String, Object> map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("t", PhoenixConstants.DEBUG_PARAM);
        hashMap.put(PhoenixConstants.DEBUG_PARAM, map);
        zzb(hashMap, z);
    }

    @Override // com.google.android.gms.internal.zzbot.zza
    public void zzat(Map<String, Object> map) {
        try {
            String str = (String) map.get("t");
            if (str == null) {
                if (this.zzcaF.zzaaD()) {
                    zzbrn zzbrnVar = this.zzcaF;
                    String valueOf = String.valueOf(map.toString());
                    zzbrnVar.zzi(valueOf.length() != 0 ? "Failed to parse server message: missing message type:".concat(valueOf) : new String("Failed to parse server message: missing message type:"), new Object[0]);
                }
                close();
            } else if (str.equals(PhoenixConstants.DEBUG_PARAM)) {
                zzau((Map) map.get(PhoenixConstants.DEBUG_PARAM));
            } else if (str.equals("c")) {
                zzav((Map) map.get(PhoenixConstants.DEBUG_PARAM));
            } else if (!this.zzcaF.zzaaD()) {
            } else {
                zzbrn zzbrnVar2 = this.zzcaF;
                String valueOf2 = String.valueOf(str);
                zzbrnVar2.zzi(valueOf2.length() != 0 ? "Ignoring unknown server message type: ".concat(valueOf2) : new String("Ignoring unknown server message type: "), new Object[0]);
            }
        } catch (ClassCastException e) {
            if (this.zzcaF.zzaaD()) {
                zzbrn zzbrnVar3 = this.zzcaF;
                String valueOf3 = String.valueOf(e.toString());
                zzbrnVar3.zzi(valueOf3.length() != 0 ? "Failed to parse server message: ".concat(valueOf3) : new String("Failed to parse server message: "), new Object[0]);
            }
            close();
        }
    }

    @Override // com.google.android.gms.internal.zzbot.zza
    public void zzba(boolean z) {
        this.zzcbt = null;
        if (z || this.zzcbv != zzc.REALTIME_CONNECTING) {
            if (this.zzcaF.zzaaD()) {
                this.zzcaF.zzi("Realtime connection lost", new Object[0]);
            }
        } else if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Realtime connection failed", new Object[0]);
        }
        close();
    }
}
