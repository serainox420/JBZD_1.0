package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzbjf;
import com.google.android.gms.tagmanager.zzcj;
import com.google.android.gms.tagmanager.zzu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Container {
    private final Context mContext;
    private final String zzbEU;
    private final DataLayer zzbEV;
    private zzcx zzbEW;
    private volatile long zzbEZ;
    private Map<String, FunctionCallMacroCallback> zzbEX = new HashMap();
    private Map<String, FunctionCallTagCallback> zzbEY = new HashMap();
    private volatile String zzbFa = "";

    /* loaded from: classes2.dex */
    public interface FunctionCallMacroCallback {
        Object getValue(String str, Map<String, Object> map);
    }

    /* loaded from: classes2.dex */
    public interface FunctionCallTagCallback {
        void execute(String str, Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements zzu.zza {
        private zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzu.zza
        public Object zze(String str, Map<String, Object> map) {
            FunctionCallMacroCallback zzgS = Container.this.zzgS(str);
            if (zzgS == null) {
                return null;
            }
            return zzgS.getValue(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements zzu.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.tagmanager.zzu.zza
        public Object zze(String str, Map<String, Object> map) {
            FunctionCallTagCallback zzgT = Container.this.zzgT(str);
            if (zzgT != null) {
                zzgT.execute(str, map);
            }
            return zzdl.zzRQ();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Container(Context context, DataLayer dataLayer, String str, long j, zzaj.zzj zzjVar) {
        this.mContext = context;
        this.zzbEV = dataLayer;
        this.zzbEU = str;
        this.zzbEZ = j;
        zza(zzjVar.zzlr);
        if (zzjVar.zzlq != null) {
            zza(zzjVar.zzlq);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Container(Context context, DataLayer dataLayer, String str, long j, zzbjf.zzc zzcVar) {
        this.mContext = context;
        this.zzbEV = dataLayer;
        this.zzbEU = str;
        this.zzbEZ = j;
        zza(zzcVar);
    }

    private synchronized zzcx zzQg() {
        return this.zzbEW;
    }

    private void zza(zzaj.zzf zzfVar) {
        if (zzfVar == null) {
            throw new NullPointerException();
        }
        try {
            zza(zzbjf.zzb(zzfVar));
        } catch (zzbjf.zzg e) {
            String valueOf = String.valueOf(zzfVar);
            String valueOf2 = String.valueOf(e.toString());
            zzbo.e(new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(valueOf2).length()).append("Not loading resource: ").append(valueOf).append(" because it is invalid: ").append(valueOf2).toString());
        }
    }

    private void zza(zzbjf.zzc zzcVar) {
        this.zzbFa = zzcVar.getVersion();
        zza(new zzcx(this.mContext, zzcVar, this.zzbEV, new zza(), new zzb(), zzgV(this.zzbFa)));
        if (getBoolean("_gtm.loadEventEnabled")) {
            this.zzbEV.pushEvent("gtm.load", DataLayer.mapOf("gtm.id", this.zzbEU));
        }
    }

    private synchronized void zza(zzcx zzcxVar) {
        this.zzbEW = zzcxVar;
    }

    private void zza(zzaj.zzi[] zziVarArr) {
        ArrayList arrayList = new ArrayList();
        for (zzaj.zzi zziVar : zziVarArr) {
            arrayList.add(zziVar);
        }
        zzQg().zzQ(arrayList);
    }

    public boolean getBoolean(String str) {
        zzcx zzQg = zzQg();
        if (zzQg == null) {
            zzbo.e("getBoolean called for closed container.");
            return zzdl.zzRO().booleanValue();
        }
        try {
            return zzdl.zzi(zzQg.zzhq(str).getObject()).booleanValue();
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbo.e(new StringBuilder(String.valueOf(valueOf).length() + 66).append("Calling getBoolean() threw an exception: ").append(valueOf).append(" Returning default value.").toString());
            return zzdl.zzRO().booleanValue();
        }
    }

    public String getContainerId() {
        return this.zzbEU;
    }

    public double getDouble(String str) {
        zzcx zzQg = zzQg();
        if (zzQg == null) {
            zzbo.e("getDouble called for closed container.");
            return zzdl.zzRN().doubleValue();
        }
        try {
            return zzdl.zzh(zzQg.zzhq(str).getObject()).doubleValue();
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbo.e(new StringBuilder(String.valueOf(valueOf).length() + 65).append("Calling getDouble() threw an exception: ").append(valueOf).append(" Returning default value.").toString());
            return zzdl.zzRN().doubleValue();
        }
    }

    public long getLastRefreshTime() {
        return this.zzbEZ;
    }

    public long getLong(String str) {
        zzcx zzQg = zzQg();
        if (zzQg == null) {
            zzbo.e("getLong called for closed container.");
            return zzdl.zzRM().longValue();
        }
        try {
            return zzdl.zzg(zzQg.zzhq(str).getObject()).longValue();
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbo.e(new StringBuilder(String.valueOf(valueOf).length() + 63).append("Calling getLong() threw an exception: ").append(valueOf).append(" Returning default value.").toString());
            return zzdl.zzRM().longValue();
        }
    }

    public String getString(String str) {
        zzcx zzQg = zzQg();
        if (zzQg == null) {
            zzbo.e("getString called for closed container.");
            return zzdl.zzRQ();
        }
        try {
            return zzdl.zze(zzQg.zzhq(str).getObject());
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbo.e(new StringBuilder(String.valueOf(valueOf).length() + 65).append("Calling getString() threw an exception: ").append(valueOf).append(" Returning default value.").toString());
            return zzdl.zzRQ();
        }
    }

    public boolean isDefault() {
        return getLastRefreshTime() == 0;
    }

    public void registerFunctionCallMacroCallback(String str, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback == null) {
            throw new NullPointerException("Macro handler must be non-null");
        }
        synchronized (this.zzbEX) {
            this.zzbEX.put(str, functionCallMacroCallback);
        }
    }

    public void registerFunctionCallTagCallback(String str, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback == null) {
            throw new NullPointerException("Tag callback must be non-null");
        }
        synchronized (this.zzbEY) {
            this.zzbEY.put(str, functionCallTagCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release() {
        this.zzbEW = null;
    }

    public void unregisterFunctionCallMacroCallback(String str) {
        synchronized (this.zzbEX) {
            this.zzbEX.remove(str);
        }
    }

    public void unregisterFunctionCallTagCallback(String str) {
        synchronized (this.zzbEY) {
            this.zzbEY.remove(str);
        }
    }

    public String zzQf() {
        return this.zzbFa;
    }

    FunctionCallMacroCallback zzgS(String str) {
        FunctionCallMacroCallback functionCallMacroCallback;
        synchronized (this.zzbEX) {
            functionCallMacroCallback = this.zzbEX.get(str);
        }
        return functionCallMacroCallback;
    }

    public FunctionCallTagCallback zzgT(String str) {
        FunctionCallTagCallback functionCallTagCallback;
        synchronized (this.zzbEY) {
            functionCallTagCallback = this.zzbEY.get(str);
        }
        return functionCallTagCallback;
    }

    public void zzgU(String str) {
        zzQg().zzgU(str);
    }

    zzaj zzgV(String str) {
        zzcj.zzRe().zzRf().equals(zzcj.zza.CONTAINER_DEBUG);
        return new zzbw();
    }
}
