package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2.dex */
public class TagManager {
    private static TagManager zzbIu;
    private final Context mContext;
    private final DataLayer zzbEV;
    private final zzt zzbHu;
    private final zza zzbIr;
    private final zzdb zzbIs;
    private final ConcurrentMap<String, zzo> zzbIt;

    /* loaded from: classes2.dex */
    public interface zza {
        zzp zza(Context context, TagManager tagManager, Looper looper, String str, int i, zzt zztVar);
    }

    TagManager(Context context, zza zzaVar, DataLayer dataLayer, zzdb zzdbVar) {
        if (context == null) {
            throw new NullPointerException(AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        }
        this.mContext = context.getApplicationContext();
        this.zzbIs = zzdbVar;
        this.zzbIr = zzaVar;
        this.zzbIt = new ConcurrentHashMap();
        this.zzbEV = dataLayer;
        this.zzbEV.zza(new DataLayer.zzb() { // from class: com.google.android.gms.tagmanager.TagManager.1
            @Override // com.google.android.gms.tagmanager.DataLayer.zzb
            public void zzaa(Map<String, Object> map) {
                Object obj = map.get("event");
                if (obj != null) {
                    TagManager.this.zzhs(obj.toString());
                }
            }
        });
        this.zzbEV.zza(new zzd(this.mContext));
        this.zzbHu = new zzt();
        zzRE();
        zzRF();
    }

    public static TagManager getInstance(Context context) {
        TagManager tagManager;
        synchronized (TagManager.class) {
            if (zzbIu == null) {
                if (context == null) {
                    zzbo.e("TagManager.getInstance requires non-null context.");
                    throw new NullPointerException();
                }
                zzbIu = new TagManager(context, new zza() { // from class: com.google.android.gms.tagmanager.TagManager.2
                    @Override // com.google.android.gms.tagmanager.TagManager.zza
                    public zzp zza(Context context2, TagManager tagManager2, Looper looper, String str, int i, zzt zztVar) {
                        return new zzp(context2, tagManager2, looper, str, i, zztVar);
                    }
                }, new DataLayer(new zzx(context)), zzdc.zzRy());
            }
            tagManager = zzbIu;
        }
        return tagManager;
    }

    @TargetApi(14)
    private void zzRE() {
        int i = Build.VERSION.SDK_INT;
        this.mContext.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.google.android.gms.tagmanager.TagManager.3
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int i2) {
                if (i2 == 20) {
                    TagManager.this.dispatch();
                }
            }
        });
    }

    private void zzRF() {
        com.google.android.gms.tagmanager.zza.zzbS(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzhs(String str) {
        for (zzo zzoVar : this.zzbIt.values()) {
            zzoVar.zzgU(str);
        }
    }

    public void dispatch() {
        this.zzbIs.dispatch();
    }

    public DataLayer getDataLayer() {
        return this.zzbEV;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, int i) {
        zzp zza2 = this.zzbIr.zza(this.mContext, this, null, str, i, this.zzbHu);
        zza2.zzQk();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, int i, Handler handler) {
        zzp zza2 = this.zzbIr.zza(this.mContext, this, handler.getLooper(), str, i, this.zzbHu);
        zza2.zzQk();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, int i) {
        zzp zza2 = this.zzbIr.zza(this.mContext, this, null, str, i, this.zzbHu);
        zza2.zzQm();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, int i, Handler handler) {
        zzp zza2 = this.zzbIr.zza(this.mContext, this, handler.getLooper(), str, i, this.zzbHu);
        zza2.zzQm();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, int i) {
        zzp zza2 = this.zzbIr.zza(this.mContext, this, null, str, i, this.zzbHu);
        zza2.zzQl();
        return zza2;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, int i, Handler handler) {
        zzp zza2 = this.zzbIr.zza(this.mContext, this, handler.getLooper(), str, i, this.zzbHu);
        zza2.zzQl();
        return zza2;
    }

    public void setVerboseLoggingEnabled(boolean z) {
        zzbo.setLogLevel(z ? 2 : 5);
    }

    public int zza(zzo zzoVar) {
        this.zzbIt.put(zzoVar.getContainerId(), zzoVar);
        return this.zzbIt.size();
    }

    public boolean zzb(zzo zzoVar) {
        return this.zzbIt.remove(zzoVar.getContainerId()) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean zzv(Uri uri) {
        boolean z;
        zzcj zzRe = zzcj.zzRe();
        if (zzRe.zzv(uri)) {
            String containerId = zzRe.getContainerId();
            switch (zzRe.zzRf()) {
                case NONE:
                    zzo zzoVar = this.zzbIt.get(containerId);
                    if (zzoVar != null) {
                        zzoVar.zzgW(null);
                        zzoVar.refresh();
                        break;
                    }
                    break;
                case CONTAINER:
                case CONTAINER_DEBUG:
                    for (String str : this.zzbIt.keySet()) {
                        zzo zzoVar2 = this.zzbIt.get(str);
                        if (str.equals(containerId)) {
                            zzoVar2.zzgW(zzRe.zzRg());
                            zzoVar2.refresh();
                        } else if (zzoVar2.zzQh() != null) {
                            zzoVar2.zzgW(null);
                            zzoVar2.refresh();
                        }
                    }
                    break;
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
