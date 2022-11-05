package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.internal.zzboj;
import com.google.android.gms.internal.zzbok;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzbou;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzboq implements zzboj.zza, zzbop {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static long zzcbr;
    private final zzbrn zzcaF;
    private final ScheduledExecutorService zzcat;
    private final zzbok zzcbD;
    private final zzbop.zza zzcbK;
    private String zzcbL;
    private long zzcbO;
    private zzboj zzcbP;
    private String zzcbX;
    private boolean zzcbY;
    private final zzbol zzcbZ;
    private final zzbon zzcbs;
    private final zzbou zzcca;
    private String zzccb;
    private long zzccf;
    private boolean zzccg;
    private HashSet<String> zzcbM = new HashSet<>();
    private boolean zzcbN = true;
    private zzb zzcbQ = zzb.Disconnected;
    private long zzcbR = 0;
    private long zzcbS = 0;
    private long zzccc = 0;
    private int zzccd = 0;
    private ScheduledFuture<?> zzcce = null;
    private Map<zzc, zze> zzcbW = new HashMap();
    private Map<Long, zza> zzcbT = new HashMap();
    private Map<Long, zzf> zzcbV = new HashMap();
    private List<zzd> zzcbU = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface zza {
        void zzaA(Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum zzb {
        Disconnected,
        GettingToken,
        Connecting,
        Authenticating,
        Connected
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzc {
        private final List<String> zzccw;
        private final Map<String, Object> zzccx;

        public zzc(List<String> list, Map<String, Object> map) {
            this.zzccw = list;
            this.zzccx = map;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (!this.zzccw.equals(zzcVar.zzccw)) {
                return false;
            }
            return this.zzccx.equals(zzcVar.zzccx);
        }

        public int hashCode() {
            return (this.zzccw.hashCode() * 31) + this.zzccx.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(zzbom.zzW(this.zzccw));
            String valueOf2 = String.valueOf(this.zzccx);
            return new StringBuilder(String.valueOf(valueOf).length() + 11 + String.valueOf(valueOf2).length()).append(valueOf).append(" (params: ").append(valueOf2).append(")").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzd {
        private final Object data;
        private final List<String> zzccw;
        private final String zzccy;
        private final zzbos zzccz;

        private zzd(String str, List<String> list, Object obj, zzbos zzbosVar) {
            this.zzccy = str;
            this.zzccw = list;
            this.data = obj;
            this.zzccz = zzbosVar;
        }

        public String getAction() {
            return this.zzccy;
        }

        public Object getData() {
            return this.data;
        }

        public List<String> zzXO() {
            return this.zzccw;
        }

        public zzbos zzXP() {
            return this.zzccz;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zze {
        private final zzbos zzccA;
        private final zzc zzccB;
        private final zzboo zzccC;
        private final Long zzccD;

        private zze(zzbos zzbosVar, zzc zzcVar, Long l, zzboo zzbooVar) {
            this.zzccA = zzbosVar;
            this.zzccB = zzcVar;
            this.zzccC = zzbooVar;
            this.zzccD = l;
        }

        public String toString() {
            String valueOf = String.valueOf(this.zzccB.toString());
            String valueOf2 = String.valueOf(this.zzccD);
            return new StringBuilder(String.valueOf(valueOf).length() + 8 + String.valueOf(valueOf2).length()).append(valueOf).append(" (Tag: ").append(valueOf2).append(")").toString();
        }

        public zzc zzXQ() {
            return this.zzccB;
        }

        public Long zzXR() {
            return this.zzccD;
        }

        public zzboo zzXS() {
            return this.zzccC;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzf {
        private Map<String, Object> zzccE;
        private boolean zzccF;
        private String zzccy;
        private zzbos zzccz;

        private zzf(String str, Map<String, Object> map, zzbos zzbosVar) {
            this.zzccy = str;
            this.zzccE = map;
            this.zzccz = zzbosVar;
        }

        public String getAction() {
            return this.zzccy;
        }

        public zzbos zzXP() {
            return this.zzccz;
        }

        public Map<String, Object> zzXT() {
            return this.zzccE;
        }

        public void zzXU() {
            this.zzccF = true;
        }

        public boolean zzXV() {
            return this.zzccF;
        }
    }

    static {
        $assertionsDisabled = !zzboq.class.desiredAssertionStatus();
        zzcbr = 0L;
    }

    public zzboq(zzbol zzbolVar, zzbon zzbonVar, zzbop.zza zzaVar) {
        this.zzcbK = zzaVar;
        this.zzcbZ = zzbolVar;
        this.zzcat = zzbolVar.zzXt();
        this.zzcbD = zzbolVar.zzXs();
        this.zzcbs = zzbonVar;
        this.zzcca = new zzbou.zza(this.zzcat, zzbolVar.zzXr(), "ConnectionRetryHelper").zzaL(1000L).zzj(1.3d).zzaM(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS).zzk(0.7d).zzYi();
        long j = zzcbr;
        zzcbr = 1 + j;
        this.zzcaF = new zzbrn(zzbolVar.zzXr(), "PersistentConnection", new StringBuilder(23).append("pc_").append(j).toString());
        this.zzccb = null;
        zzXM();
    }

    private boolean isIdle() {
        return this.zzcbW.isEmpty() && this.zzcbT.isEmpty() && !this.zzccg && this.zzcbV.isEmpty();
    }

    private Collection<zze> zzX(List<String> list) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(list);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 29).append("removing all listens at path ").append(valueOf).toString(), new Object[0]);
        }
        ArrayList<zze> arrayList = new ArrayList();
        for (Map.Entry<zzc, zze> entry : this.zzcbW.entrySet()) {
            zze value = entry.getValue();
            if (entry.getKey().zzccw.equals(list)) {
                arrayList.add(value);
            }
        }
        for (zze zzeVar : arrayList) {
            this.zzcbW.remove(zzeVar.zzXQ());
        }
        zzXM();
        return arrayList;
    }

    private boolean zzXA() {
        return this.zzcbQ == zzb.Authenticating || this.zzcbQ == zzb.Connected;
    }

    private boolean zzXB() {
        return this.zzcbQ == zzb.Connected;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzXD() {
        if (zzXC()) {
            zzbom.zzc(this.zzcbQ == zzb.Disconnected, "Not in disconnected state: %s", this.zzcbQ);
            final boolean z = this.zzcbY;
            this.zzcaF.zzi("Scheduling connection attempt", new Object[0]);
            this.zzcbY = false;
            this.zzcca.zzr(new Runnable() { // from class: com.google.android.gms.internal.zzboq.1
                @Override // java.lang.Runnable
                public void run() {
                    zzboq.this.zzcaF.zzi("Trying to fetch auth token", new Object[0]);
                    zzbom.zzc(zzboq.this.zzcbQ == zzb.Disconnected, "Not in disconnected state: %s", zzboq.this.zzcbQ);
                    zzboq.this.zzcbQ = zzb.GettingToken;
                    zzboq.zzc(zzboq.this);
                    final long j = zzboq.this.zzccc;
                    zzboq.this.zzcbD.zza(z, new zzbok.zza() { // from class: com.google.android.gms.internal.zzboq.1.1
                        @Override // com.google.android.gms.internal.zzbok.zza
                        public void onError(String str) {
                            if (j != zzboq.this.zzccc) {
                                zzboq.this.zzcaF.zzi("Ignoring getToken error, because this was not the latest attempt.", new Object[0]);
                                return;
                            }
                            zzboq.this.zzcbQ = zzb.Disconnected;
                            zzbrn zzbrnVar = zzboq.this.zzcaF;
                            String valueOf = String.valueOf(str);
                            zzbrnVar.zzi(valueOf.length() != 0 ? "Error fetching token: ".concat(valueOf) : new String("Error fetching token: "), new Object[0]);
                            zzboq.this.zzXD();
                        }

                        @Override // com.google.android.gms.internal.zzbok.zza
                        public void zziL(String str) {
                            if (j != zzboq.this.zzccc) {
                                zzboq.this.zzcaF.zzi("Ignoring getToken result, because this was not the latest attempt.", new Object[0]);
                            } else if (zzboq.this.zzcbQ == zzb.GettingToken) {
                                zzboq.this.zzcaF.zzi("Successfully fetched token, opening connection", new Object[0]);
                                zzboq.this.zziO(str);
                            } else {
                                zzbom.zzc(zzboq.this.zzcbQ == zzb.Disconnected, "Expected connection state disconnected, but was %s", zzboq.this.zzcbQ);
                                zzboq.this.zzcaF.zzi("Not opening connection after token refresh, because connection was set to disconnected", new Object[0]);
                            }
                        }
                    });
                }
            });
        }
    }

    private void zzXE() {
        Iterator<Map.Entry<Long, zzf>> it = this.zzcbV.entrySet().iterator();
        while (it.hasNext()) {
            zzf value = it.next().getValue();
            if (value.zzXT().containsKey("h") && value.zzXV()) {
                value.zzXP().zzar("disconnected", null);
                it.remove();
            }
        }
    }

    private void zzXF() {
        zzbd(false);
    }

    private void zzXG() {
        zzbd(true);
    }

    private void zzXH() {
        zzbom.zzc(zzXA(), "Must be connected to send unauth.", new Object[0]);
        zzbom.zzc(this.zzcbX == null, "Auth token must not be set.", new Object[0]);
        zza("unauth", Collections.emptyMap(), (zza) null);
    }

    private void zzXI() {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("calling restore state", new Object[0]);
        }
        zzbom.zzc(this.zzcbQ == zzb.Connecting, "Wanted to restore auth, but was in wrong state: %s", this.zzcbQ);
        if (this.zzcbX == null) {
            if (this.zzcaF.zzaaD()) {
                this.zzcaF.zzi("Not restoring auth because token is null.", new Object[0]);
            }
            this.zzcbQ = zzb.Connected;
            zzXJ();
            return;
        }
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Restoring auth.", new Object[0]);
        }
        this.zzcbQ = zzb.Authenticating;
        zzXG();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzXJ() {
        zzbom.zzc(this.zzcbQ == zzb.Connected, "Should be connected if we're restoring state, but we are: %s", this.zzcbQ);
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Restoring outstanding listens", new Object[0]);
        }
        for (zze zzeVar : this.zzcbW.values()) {
            if (this.zzcaF.zzaaD()) {
                zzbrn zzbrnVar = this.zzcaF;
                String valueOf = String.valueOf(zzeVar.zzXQ());
                zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 17).append("Restoring listen ").append(valueOf).toString(), new Object[0]);
            }
            zzb(zzeVar);
        }
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Restoring writes.", new Object[0]);
        }
        ArrayList arrayList = new ArrayList(this.zzcbV.keySet());
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zzaI(((Long) it.next()).longValue());
        }
        for (zzd zzdVar : this.zzcbU) {
            zza(zzdVar.getAction(), zzdVar.zzXO(), zzdVar.getData(), zzdVar.zzXP());
        }
        this.zzcbU.clear();
    }

    private void zzXK() {
        HashMap hashMap = new HashMap();
        if (zzbst.zzabG()) {
            if (this.zzcbZ.zzXu()) {
                hashMap.put("persistence.android.enabled", 1);
            }
            String valueOf = String.valueOf(this.zzcbZ.zzXv().replace('.', '-'));
            hashMap.put(valueOf.length() != 0 ? "sdk.android.".concat(valueOf) : new String("sdk.android."), 1);
        } else if (!$assertionsDisabled && this.zzcbZ.zzXu()) {
            throw new AssertionError("Stats for persistence on JVM missing (persistence not yet supported)");
        } else {
            String valueOf2 = String.valueOf(this.zzcbZ.zzXv().replace('.', '-'));
            hashMap.put(valueOf2.length() != 0 ? "sdk.java.".concat(valueOf2) : new String("sdk.java."), 1);
        }
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("Sending first connection stats", new Object[0]);
        }
        zzaz(hashMap);
    }

    private long zzXL() {
        long j = this.zzcbS;
        this.zzcbS = 1 + j;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzXM() {
        boolean z = false;
        if (isIdle()) {
            if (this.zzcce != null) {
                this.zzcce.cancel(false);
            }
            this.zzcce = this.zzcat.schedule(new Runnable() { // from class: com.google.android.gms.internal.zzboq.7
                @Override // java.lang.Runnable
                public void run() {
                    zzboq.this.zzcce = null;
                    if (zzboq.this.zzXN()) {
                        zzboq.this.interrupt("connection_idle");
                    } else {
                        zzboq.this.zzXM();
                    }
                }
            }, 60000L, TimeUnit.MILLISECONDS);
        } else if (!isInterrupted("connection_idle")) {
        } else {
            if (!isIdle()) {
                z = true;
            }
            zzbom.zzbb(z);
            resume("connection_idle");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzXN() {
        return isIdle() && System.currentTimeMillis() > this.zzccf + 60000;
    }

    private void zzY(List<String> list) {
        for (zze zzeVar : zzX(list)) {
            zzeVar.zzccA.zzar("permission_denied", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zze zza(zzc zzcVar) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(zzcVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 15).append("removing query ").append(valueOf).toString(), new Object[0]);
        }
        if (this.zzcbW.containsKey(zzcVar)) {
            zze zzeVar = this.zzcbW.get(zzcVar);
            this.zzcbW.remove(zzcVar);
            zzXM();
            return zzeVar;
        }
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar2 = this.zzcaF;
            String valueOf2 = String.valueOf(zzcVar);
            zzbrnVar2.zzi(new StringBuilder(String.valueOf(valueOf2).length() + 64).append("Trying to remove listener for QuerySpec ").append(valueOf2).append(" but no listener exists.").toString(), new Object[0]);
        }
        return null;
    }

    private Map<String, Object> zza(List<String> list, Object obj, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("p", zzbom.zzW(list));
        hashMap.put(PhoenixConstants.DEBUG_PARAM, obj);
        if (str != null) {
            hashMap.put("h", str);
        }
        return hashMap;
    }

    private void zza(zze zzeVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("p", zzbom.zzW(zzeVar.zzccB.zzccw));
        Long zzXR = zzeVar.zzXR();
        if (zzXR != null) {
            hashMap.put("q", zzeVar.zzXQ().zzccx);
            hashMap.put("t", zzXR);
        }
        zza("n", hashMap, (zza) null);
    }

    private void zza(String str, List<String> list, Object obj, final zzbos zzbosVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("p", zzbom.zzW(list));
        hashMap.put(PhoenixConstants.DEBUG_PARAM, obj);
        zza(str, hashMap, new zza(this) { // from class: com.google.android.gms.internal.zzboq.2
            @Override // com.google.android.gms.internal.zzboq.zza
            public void zzaA(Map<String, Object> map) {
                String str2 = null;
                String str3 = (String) map.get("s");
                if (!str3.equals("ok")) {
                    str2 = (String) map.get(PhoenixConstants.DEBUG_PARAM);
                } else {
                    str3 = null;
                }
                if (zzbosVar != null) {
                    zzbosVar.zzar(str3, str2);
                }
            }
        });
    }

    private void zza(String str, List<String> list, Object obj, String str2, zzbos zzbosVar) {
        Map<String, Object> zza2 = zza(list, obj, str2);
        long j = this.zzcbR;
        this.zzcbR = 1 + j;
        this.zzcbV.put(Long.valueOf(j), new zzf(str, zza2, zzbosVar));
        if (zzXB()) {
            zzaI(j);
        }
        this.zzccf = System.currentTimeMillis();
        zzXM();
    }

    private void zza(String str, Map<String, Object> map, zza zzaVar) {
        zza(str, false, map, zzaVar);
    }

    private void zza(String str, boolean z, Map<String, Object> map, zza zzaVar) {
        long zzXL = zzXL();
        HashMap hashMap = new HashMap();
        hashMap.put("r", Long.valueOf(zzXL));
        hashMap.put("a", str);
        hashMap.put("b", map);
        this.zzcbP.zza(hashMap, z);
        this.zzcbT.put(Long.valueOf(zzXL), zzaVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(List<String> list, zzc zzcVar) {
        if (list.contains("no_index")) {
            String valueOf = String.valueOf(zzcVar.zzccx.get("i"));
            String sb = new StringBuilder(String.valueOf(valueOf).length() + 14).append("\".indexOn\": \"").append(valueOf).append("\"").toString();
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf2 = String.valueOf(zzbom.zzW(zzcVar.zzccw));
            zzbrnVar.warn(new StringBuilder(String.valueOf(sb).length() + 118 + String.valueOf(valueOf2).length()).append("Using an unspecified index. Consider adding '").append(sb).append("' at ").append(valueOf2).append(" to your security and Firebase Database rules for better performance").toString());
        }
    }

    private void zzaH(long j) {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("handling timestamp", new Object[0]);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("serverTimeOffset", Long.valueOf(j - System.currentTimeMillis()));
        this.zzcbK.zzax(hashMap);
    }

    private void zzaI(final long j) {
        if ($assertionsDisabled || zzXB()) {
            final zzf zzfVar = this.zzcbV.get(Long.valueOf(j));
            final zzbos zzXP = zzfVar.zzXP();
            final String action = zzfVar.getAction();
            zzfVar.zzXU();
            zza(action, zzfVar.zzXT(), new zza() { // from class: com.google.android.gms.internal.zzboq.4
                @Override // com.google.android.gms.internal.zzboq.zza
                public void zzaA(Map<String, Object> map) {
                    if (zzboq.this.zzcaF.zzaaD()) {
                        zzbrn zzbrnVar = zzboq.this.zzcaF;
                        String str = action;
                        String valueOf = String.valueOf(map);
                        zzbrnVar.zzi(new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(valueOf).length()).append(str).append(" response: ").append(valueOf).toString(), new Object[0]);
                    }
                    if (((zzf) zzboq.this.zzcbV.get(Long.valueOf(j))) == zzfVar) {
                        zzboq.this.zzcbV.remove(Long.valueOf(j));
                        if (zzXP != null) {
                            String str2 = (String) map.get("s");
                            if (str2.equals("ok")) {
                                zzXP.zzar(null, null);
                            } else {
                                zzXP.zzar(str2, (String) map.get(PhoenixConstants.DEBUG_PARAM));
                            }
                        }
                    } else if (zzboq.this.zzcaF.zzaaD()) {
                        zzboq.this.zzcaF.zzi(new StringBuilder(81).append("Ignoring on complete for put ").append(j).append(" because it was removed already.").toString(), new Object[0]);
                    }
                    zzboq.this.zzXM();
                }
            });
            return;
        }
        throw new AssertionError("sendPut called when we can't send writes (we're disconnected or writes are paused).");
    }

    private void zzaq(String str, String str2) {
        this.zzcaF.warn(new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(str2).length()).append("Auth token revoked: ").append(str).append(" (").append(str2).append(")").toString());
        this.zzcbX = null;
        this.zzcbY = true;
        this.zzcbK.zzbc(false);
        this.zzcbP.close();
    }

    private void zzay(Map<String, Object> map) {
        this.zzcaF.info((String) map.get(Params.MSG));
    }

    private void zzaz(Map<String, Integer> map) {
        if (!map.isEmpty()) {
            HashMap hashMap = new HashMap();
            hashMap.put("c", map);
            zza("s", hashMap, new zza() { // from class: com.google.android.gms.internal.zzboq.6
                @Override // com.google.android.gms.internal.zzboq.zza
                public void zzaA(Map<String, Object> map2) {
                    String str = (String) map2.get("s");
                    if (!str.equals("ok")) {
                        String str2 = (String) map2.get(PhoenixConstants.DEBUG_PARAM);
                        if (!zzboq.this.zzcaF.zzaaD()) {
                            return;
                        }
                        zzboq.this.zzcaF.zzi(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length()).append("Failed to send stats: ").append(str).append(" (message: ").append(str2).append(")").toString(), new Object[0]);
                    }
                }
            });
        } else if (!this.zzcaF.zzaaD()) {
        } else {
            this.zzcaF.zzi("Not sending stats because stats are empty", new Object[0]);
        }
    }

    private void zzb(final zze zzeVar) {
        Map<String, Object> hashMap = new HashMap<>();
        hashMap.put("p", zzbom.zzW(zzeVar.zzXQ().zzccw));
        Object zzXR = zzeVar.zzXR();
        if (zzXR != null) {
            hashMap.put("q", zzeVar.zzccB.zzccx);
            hashMap.put("t", zzXR);
        }
        zzboo zzXS = zzeVar.zzXS();
        hashMap.put("h", zzXS.zzXw());
        if (zzXS.zzXx()) {
            zzboi zzXy = zzXS.zzXy();
            ArrayList arrayList = new ArrayList();
            for (List<String> list : zzXy.zzXp()) {
                arrayList.add(zzbom.zzW(list));
            }
            HashMap hashMap2 = new HashMap();
            hashMap2.put("hs", zzXy.zzXq());
            hashMap2.put("ps", arrayList);
            hashMap.put("ch", hashMap2);
        }
        zza("q", hashMap, new zza() { // from class: com.google.android.gms.internal.zzboq.5
            @Override // com.google.android.gms.internal.zzboq.zza
            public void zzaA(Map<String, Object> map) {
                String str = (String) map.get("s");
                if (str.equals("ok")) {
                    Map map2 = (Map) map.get(PhoenixConstants.DEBUG_PARAM);
                    if (map2.containsKey("w")) {
                        zzboq.this.zza((List) map2.get("w"), zzeVar.zzccB);
                    }
                }
                if (((zze) zzboq.this.zzcbW.get(zzeVar.zzXQ())) == zzeVar) {
                    if (str.equals("ok")) {
                        zzeVar.zzccA.zzar(null, null);
                        return;
                    }
                    zzboq.this.zza(zzeVar.zzXQ());
                    zzeVar.zzccA.zzar(str, (String) map.get(PhoenixConstants.DEBUG_PARAM));
                }
            }
        });
    }

    private void zzbd(final boolean z) {
        zzbom.zzc(zzXA(), "Must be connected to send auth, but was: %s", this.zzcbQ);
        zzbom.zzc(this.zzcbX != null, "Auth token must be set to authenticate!", new Object[0]);
        zza zzaVar = new zza() { // from class: com.google.android.gms.internal.zzboq.3
            @Override // com.google.android.gms.internal.zzboq.zza
            public void zzaA(Map<String, Object> map) {
                zzboq.this.zzcbQ = zzb.Connected;
                String str = (String) map.get("s");
                if (str.equals("ok")) {
                    zzboq.this.zzccd = 0;
                    zzboq.this.zzcbK.zzbc(true);
                    if (!z) {
                        return;
                    }
                    zzboq.this.zzXJ();
                    return;
                }
                zzboq.this.zzcbX = null;
                zzboq.this.zzcbY = true;
                zzboq.this.zzcbK.zzbc(false);
                String str2 = (String) map.get(PhoenixConstants.DEBUG_PARAM);
                zzboq.this.zzcaF.zzi(new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(str2).length()).append("Authentication failed: ").append(str).append(" (").append(str2).append(")").toString(), new Object[0]);
                zzboq.this.zzcbP.close();
                if (!str.equals("invalid_token")) {
                    return;
                }
                zzboq.zzj(zzboq.this);
                if (zzboq.this.zzccd < 3) {
                    return;
                }
                zzboq.this.zzcca.zzYh();
                zzboq.this.zzcaF.warn("Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/.");
            }
        };
        HashMap hashMap = new HashMap();
        zzbsu zzjd = zzbsu.zzjd(this.zzcbX);
        if (zzjd == null) {
            hashMap.put("cred", this.zzcbX);
            zza("auth", true, (Map<String, Object>) hashMap, zzaVar);
            return;
        }
        hashMap.put("cred", zzjd.getToken());
        if (zzjd.zzabH() != null) {
            hashMap.put("authvar", zzjd.zzabH());
        }
        zza("gauth", true, (Map<String, Object>) hashMap, zzaVar);
    }

    static /* synthetic */ long zzc(zzboq zzboqVar) {
        long j = zzboqVar.zzccc;
        zzboqVar.zzccc = 1 + j;
        return j;
    }

    static /* synthetic */ int zzj(zzboq zzboqVar) {
        int i = zzboqVar.zzccd;
        zzboqVar.zzccd = i + 1;
        return i;
    }

    private void zzk(String str, Map<String, Object> map) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(map);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(valueOf).length()).append("handleServerMessage: ").append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf).toString(), new Object[0]);
        }
        if (str.equals(PhoenixConstants.DEBUG_PARAM) || str.equals("m")) {
            boolean equals = str.equals("m");
            String str2 = (String) map.get("p");
            Object obj = map.get(PhoenixConstants.DEBUG_PARAM);
            Long zzaq = zzbom.zzaq(map.get("t"));
            if (!equals || !(obj instanceof Map) || ((Map) obj).size() != 0) {
                this.zzcbK.zza(zzbom.zziM(str2), obj, equals, zzaq);
            } else if (this.zzcaF.zzaaD()) {
                zzbrn zzbrnVar2 = this.zzcaF;
                String valueOf2 = String.valueOf(str2);
                zzbrnVar2.zzi(valueOf2.length() != 0 ? "ignoring empty merge for path ".concat(valueOf2) : new String("ignoring empty merge for path "), new Object[0]);
            }
        } else if (str.equals("rm")) {
            String str3 = (String) map.get("p");
            List<String> zziM = zzbom.zziM(str3);
            Object obj2 = map.get(PhoenixConstants.DEBUG_PARAM);
            Long zzaq2 = zzbom.zzaq(map.get("t"));
            ArrayList arrayList = new ArrayList();
            for (Map map2 : (List) obj2) {
                String str4 = (String) map2.get("s");
                String str5 = (String) map2.get("e");
                arrayList.add(new zzbor(str4 != null ? zzbom.zziM(str4) : null, str5 != null ? zzbom.zziM(str5) : null, map2.get("m")));
            }
            if (!arrayList.isEmpty()) {
                this.zzcbK.zza(zziM, arrayList, zzaq2);
            } else if (this.zzcaF.zzaaD()) {
                zzbrn zzbrnVar3 = this.zzcaF;
                String valueOf3 = String.valueOf(str3);
                zzbrnVar3.zzi(valueOf3.length() != 0 ? "Ignoring empty range merge for path ".concat(valueOf3) : new String("Ignoring empty range merge for path "), new Object[0]);
            }
        } else if (str.equals("c")) {
            zzY(zzbom.zziM((String) map.get("p")));
        } else if (str.equals("ac")) {
            zzaq((String) map.get("s"), (String) map.get(PhoenixConstants.DEBUG_PARAM));
        } else if (str.equals("sd")) {
            zzay(map);
        } else if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar4 = this.zzcaF;
            String valueOf4 = String.valueOf(str);
            zzbrnVar4.zzi(valueOf4.length() != 0 ? "Unrecognized action from server: ".concat(valueOf4) : new String("Unrecognized action from server: "), new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.zzbop
    public void initialize() {
        zzXD();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void interrupt(String str) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(str);
            zzbrnVar.zzi(valueOf.length() != 0 ? "Connection interrupted for: ".concat(valueOf) : new String("Connection interrupted for: "), new Object[0]);
        }
        this.zzcbM.add(str);
        if (this.zzcbP != null) {
            this.zzcbP.close();
            this.zzcbP = null;
        } else {
            this.zzcca.cancel();
            this.zzcbQ = zzb.Disconnected;
        }
        this.zzcca.zzVU();
    }

    @Override // com.google.android.gms.internal.zzbop
    public boolean isInterrupted(String str) {
        return this.zzcbM.contains(str);
    }

    @Override // com.google.android.gms.internal.zzbop
    public void purgeOutstandingWrites() {
        for (zzf zzfVar : this.zzcbV.values()) {
            if (zzfVar.zzccz != null) {
                zzfVar.zzccz.zzar("write_canceled", null);
            }
        }
        for (zzd zzdVar : this.zzcbU) {
            if (zzdVar.zzccz != null) {
                zzdVar.zzccz.zzar("write_canceled", null);
            }
        }
        this.zzcbV.clear();
        this.zzcbU.clear();
        if (!zzXA()) {
            this.zzccg = false;
        }
        zzXM();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void refreshAuthToken() {
        this.zzcaF.zzi("Auth token refresh requested", new Object[0]);
        interrupt("token_refresh");
        resume("token_refresh");
    }

    @Override // com.google.android.gms.internal.zzbop
    public void resume(String str) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(str);
            zzbrnVar.zzi(valueOf.length() != 0 ? "Connection no longer interrupted for: ".concat(valueOf) : new String("Connection no longer interrupted for: "), new Object[0]);
        }
        this.zzcbM.remove(str);
        if (!zzXC() || this.zzcbQ != zzb.Disconnected) {
            return;
        }
        zzXD();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void shutdown() {
        interrupt("shutdown");
    }

    boolean zzXC() {
        return this.zzcbM.size() == 0;
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, zzbos zzbosVar) {
        if (zzXB()) {
            zza("oc", list, (Object) null, zzbosVar);
        } else {
            this.zzcbU.add(new zzd("oc", list, null, zzbosVar));
        }
        zzXM();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Object obj, zzbos zzbosVar) {
        zza("p", list, obj, (String) null, zzbosVar);
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Object obj, String str, zzbos zzbosVar) {
        zza("p", list, obj, str, zzbosVar);
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Map<String, Object> map) {
        zzc zzcVar = new zzc(list, map);
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(zzcVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 15).append("unlistening on ").append(valueOf).toString(), new Object[0]);
        }
        zze zza2 = zza(zzcVar);
        if (zza2 != null && zzXA()) {
            zza(zza2);
        }
        zzXM();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Map<String, Object> map, zzboo zzbooVar, Long l, zzbos zzbosVar) {
        zzc zzcVar = new zzc(list, map);
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(zzcVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 13).append("Listening on ").append(valueOf).toString(), new Object[0]);
        }
        zzbom.zzc(!this.zzcbW.containsKey(zzcVar), "listen() called twice for same QuerySpec.", new Object[0]);
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar2 = this.zzcaF;
            String valueOf2 = String.valueOf(zzcVar);
            zzbrnVar2.zzi(new StringBuilder(String.valueOf(valueOf2).length() + 21).append("Adding listen query: ").append(valueOf2).toString(), new Object[0]);
        }
        zze zzeVar = new zze(zzbosVar, zzcVar, l, zzbooVar);
        this.zzcbW.put(zzcVar, zzeVar);
        if (zzXA()) {
            zzb(zzeVar);
        }
        zzXM();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zza(List<String> list, Map<String, Object> map, zzbos zzbosVar) {
        zza("m", list, map, (String) null, zzbosVar);
    }

    @Override // com.google.android.gms.internal.zzboj.zza
    public void zzau(Map<String, Object> map) {
        if (map.containsKey("r")) {
            zza remove = this.zzcbT.remove(Long.valueOf(((Integer) map.get("r")).intValue()));
            if (remove == null) {
                return;
            }
            remove.zzaA((Map) map.get("b"));
        } else if (map.containsKey("error")) {
        } else {
            if (map.containsKey("a")) {
                zzk((String) map.get("a"), (Map) map.get("b"));
            } else if (!this.zzcaF.zzaaD()) {
            } else {
                zzbrn zzbrnVar = this.zzcaF;
                String valueOf = String.valueOf(map);
                zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 26).append("Ignoring unknown message: ").append(valueOf).toString(), new Object[0]);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzboj.zza
    public void zzb(zzboj.zzb zzbVar) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(zzbVar.name());
            zzbrnVar.zzi(valueOf.length() != 0 ? "Got on disconnect due to ".concat(valueOf) : new String("Got on disconnect due to "), new Object[0]);
        }
        this.zzcbQ = zzb.Disconnected;
        this.zzcbP = null;
        this.zzccg = false;
        this.zzcbT.clear();
        zzXE();
        if (zzXC()) {
            boolean z = this.zzcbO > 0 ? System.currentTimeMillis() - this.zzcbO > NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS : false;
            if (zzbVar == zzboj.zzb.SERVER_RESET || z) {
                this.zzcca.zzVU();
            }
            zzXD();
        }
        this.zzcbO = 0L;
        this.zzcbK.onDisconnect();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zzb(List<String> list, Object obj, zzbos zzbosVar) {
        this.zzccg = true;
        if (zzXB()) {
            zza("o", list, obj, zzbosVar);
        } else {
            this.zzcbU.add(new zzd("o", list, obj, zzbosVar));
        }
        zzXM();
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zzb(List<String> list, Map<String, Object> map, zzbos zzbosVar) {
        this.zzccg = true;
        if (zzXB()) {
            zza("om", list, map, zzbosVar);
        } else {
            this.zzcbU.add(new zzd("om", list, map, zzbosVar));
        }
        zzXM();
    }

    @Override // com.google.android.gms.internal.zzboj.zza
    public void zziJ(String str) {
        this.zzcbL = str;
    }

    @Override // com.google.android.gms.internal.zzboj.zza
    public void zziK(String str) {
        if (this.zzcaF.zzaaD()) {
            zzbrn zzbrnVar = this.zzcaF;
            String valueOf = String.valueOf(str);
            zzbrnVar.zzi(valueOf.length() != 0 ? "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: ".concat(valueOf) : new String("Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "), new Object[0]);
        }
        interrupt("server_kill");
    }

    @Override // com.google.android.gms.internal.zzbop
    public void zziN(String str) {
        this.zzcaF.zzi("Auth token refreshed.", new Object[0]);
        this.zzcbX = str;
        if (zzXA()) {
            if (str != null) {
                zzXF();
            } else {
                zzXH();
            }
        }
    }

    public void zziO(String str) {
        zzbom.zzc(this.zzcbQ == zzb.GettingToken, "Trying to open network connection while in the wrong state: %s", this.zzcbQ);
        if (str == null) {
            this.zzcbK.zzbc(false);
        }
        this.zzcbX = str;
        this.zzcbQ = zzb.Connecting;
        this.zzcbP = new zzboj(this.zzcbZ, this.zzcbs, this.zzcbL, this, this.zzccb);
        this.zzcbP.open();
    }

    @Override // com.google.android.gms.internal.zzboj.zza
    public void zzj(long j, String str) {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi("onReady", new Object[0]);
        }
        this.zzcbO = System.currentTimeMillis();
        zzaH(j);
        if (this.zzcbN) {
            zzXK();
        }
        zzXI();
        this.zzcbN = false;
        this.zzccb = str;
        this.zzcbK.zzXz();
    }
}
