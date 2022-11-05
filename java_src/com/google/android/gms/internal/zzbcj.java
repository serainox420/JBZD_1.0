package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.internal.zzbbr;
import com.google.android.gms.tagmanager.TagManagerService;
import com.google.android.gms.tagmanager.zzaz;
import com.google.android.gms.tagmanager.zzba;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class zzbcj {
    private static volatile zzbcj zzbKD;
    private final Context mContext;
    private String zzbEU;
    private final ExecutorService zzbJj;
    private final ScheduledExecutorService zzbJk;
    private final com.google.android.gms.tagmanager.zzbb zzbJl;
    private final com.google.android.gms.tagmanager.zzay zzbJu;
    private final zzbcm zzbKE;
    private final zzbbz zzbKF;
    private final zza zzbKG;
    private String zzbKI;
    private static final Pattern zzbKC = Pattern.compile("(gtm-[a-z0-9]{1,10})\\.json", 2);
    private static zzc zzbKM = new zzc() { // from class: com.google.android.gms.internal.zzbcj.1
        @Override // com.google.android.gms.internal.zzbcj.zzc
        public zzbcj zzb(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar) {
            return new zzbcj(context, zzbbVar, zzayVar, new zzbcm(context), zzbcl.zzcg(context), zzbcl.zzSw(), zzbbz.zzSg(), new zza(context));
        }
    };
    private final Object zzbKH = new Object();
    private int zzbKJ = 1;
    private final Queue<Runnable> zzbKK = new LinkedList();
    private volatile boolean zztZ = false;
    private volatile boolean zzbKL = false;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class zza {
        private final Context mContext;

        public zza(Context context) {
            this.mContext = context;
        }

        public String[] zzSv() throws IOException {
            return this.mContext.getAssets().list("");
        }

        public String[] zzhN(String str) throws IOException {
            return this.mContext.getAssets().list(str);
        }
    }

    /* loaded from: classes2.dex */
    private class zzb extends zzbbr.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.internal.zzbbr
        public void zza(final boolean z, final String str) throws RemoteException {
            zzbcj.this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.zzb.1
                @Override // java.lang.Runnable
                public void run() {
                    if (zzbcj.this.zzbKJ != 2) {
                        zzbbu.zzbh("Container load callback completed after timeout");
                        return;
                    }
                    if (z) {
                        zzbcj.this.zzbKJ = 3;
                        String str2 = str;
                        zzbbu.v(new StringBuilder(String.valueOf(str2).length() + 18).append("Container ").append(str2).append(" loaded.").toString());
                    } else {
                        zzbcj.this.zzbKJ = 4;
                        String valueOf = String.valueOf(str);
                        zzbbu.e(valueOf.length() != 0 ? "Error loading container:".concat(valueOf) : new String("Error loading container:"));
                    }
                    while (!zzbcj.this.zzbKK.isEmpty()) {
                        zzbcj.this.zzbJj.execute((Runnable) zzbcj.this.zzbKK.remove());
                    }
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    public interface zzc {
        zzbcj zzb(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar);
    }

    zzbcj(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar, zzbcm zzbcmVar, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService, zzbbz zzbbzVar, zza zzaVar) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        com.google.android.gms.common.internal.zzac.zzw(zzbbVar);
        this.mContext = context;
        this.zzbJl = zzbbVar;
        this.zzbJu = zzayVar;
        this.zzbKE = zzbcmVar;
        this.zzbJj = executorService;
        this.zzbJk = scheduledExecutorService;
        this.zzbKF = zzbbzVar;
        this.zzbKG = zzaVar;
    }

    @TargetApi(14)
    private void zzRE() {
        int i = Build.VERSION.SDK_INT;
        this.mContext.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.google.android.gms.internal.zzbcj.6
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int i2) {
                if (i2 == 20) {
                    zzbcj.this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            zzbbu.v("App's UI deactivated. Dispatching hits.");
                            zzbcj.this.zzbKE.dispatch();
                        }
                    });
                }
            }
        });
    }

    private zza zzSt() {
        return this.zzbKG;
    }

    private void zzSu() {
        try {
            this.zzbJl.zza(new zzba.zza() { // from class: com.google.android.gms.internal.zzbcj.2
                @Override // com.google.android.gms.tagmanager.zzba
                public void zzb(final String str, final String str2, final Bundle bundle, final long j) throws RemoteException {
                    final String sb = new StringBuilder(String.valueOf(str).length() + 4).append(str).append("+").append("gtm").toString();
                    zzbcj.this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.2.1
                        private boolean zzbKO = false;

                        @Override // java.lang.Runnable
                        public void run() {
                            if (zzbcj.this.zzbKJ == 3) {
                                zzbcj.this.zzbKE.zza(str2, bundle, sb, j, true);
                            } else if (zzbcj.this.zzbKJ == 4) {
                                zzbbu.v(String.format("Container failed to load: skipping  event interceptor by logging event back to Firebase directly: name = %s, origin = %s, params = %s.", str2, sb, bundle));
                                try {
                                    zzbcj.this.zzbJl.zza(sb, str2, bundle, j);
                                } catch (RemoteException e) {
                                    zzbbe.zza("Error logging event on measurement proxy: ", e, zzbcj.this.mContext);
                                }
                            } else if (zzbcj.this.zzbKJ != 1 && zzbcj.this.zzbKJ != 2) {
                                zzbbe.zzc(new StringBuilder(28).append("Unexpected state:").append(zzbcj.this.zzbKJ).toString(), zzbcj.this.mContext);
                            } else if (this.zzbKO) {
                                zzbbe.zzc("Invalid state - not expecting to see a deferredevent during container loading.", zzbcj.this.mContext);
                            } else {
                                zzbbu.v(String.format("Container not loaded yet: deferring event interceptor by enqueuing the event: name = %s, origin = %s, params = %s.", str2, str, bundle));
                                this.zzbKO = true;
                                zzbcj.this.zzbKK.add(this);
                            }
                        }
                    });
                }
            });
        } catch (RemoteException e) {
            zzbbe.zza("Error communicating with measurement proxy: ", e, this.mContext);
        }
        try {
            this.zzbJl.zza(new zzaz.zza() { // from class: com.google.android.gms.internal.zzbcj.3
                @Override // com.google.android.gms.tagmanager.zzaz
                public void zzc(final String str, final String str2, final Bundle bundle, final long j) {
                    if (!str.endsWith("+gtm")) {
                        final String sb = new StringBuilder(String.valueOf(str).length() + 4).append(str).append("+").append("gtm").toString();
                        zzbcj.this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.3.1
                            private boolean zzbKO = false;

                            @Override // java.lang.Runnable
                            public void run() {
                                if (zzbcj.this.zzbKJ == 3) {
                                    zzbcj.this.zzbKE.zza(str2, bundle, sb, j, false);
                                } else if (zzbcj.this.zzbKJ != 1 && zzbcj.this.zzbKJ != 2) {
                                    if (zzbcj.this.zzbKJ == 4) {
                                        zzbbu.v(String.format("Container failed to load: skipping event listener by ignoring the event: name = %s, origin = %s, params = %s.", str2, str, bundle));
                                    } else {
                                        zzbbe.zzc(new StringBuilder(28).append("Unexpected state:").append(zzbcj.this.zzbKJ).toString(), zzbcj.this.mContext);
                                    }
                                } else if (this.zzbKO) {
                                    zzbbu.zzbh("Invalid state - not expecting to see a deferred event during container loading.");
                                } else {
                                    zzbbu.v(String.format("Container not loaded yet: deferring event listener by enqueuing the event: name = %s, origin = %s, params = %s.", str2, str, bundle));
                                    this.zzbKO = true;
                                    zzbcj.this.zzbKK.add(this);
                                }
                            }
                        });
                    }
                }
            });
        } catch (RemoteException e2) {
            zzbbe.zza("Error communicating with measurement proxy: ", e2, this.mContext);
        }
    }

    public static zzbcj zza(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        com.google.android.gms.common.internal.zzac.zzw(context);
        zzbcj zzbcjVar = zzbKD;
        if (zzbcjVar == null) {
            synchronized (zzbcj.class) {
                zzbcjVar = zzbKD;
                if (zzbcjVar == null) {
                    zzbcjVar = zzbKM.zzb(context, zzbbVar, zzayVar);
                    zzbKD = zzbcjVar;
                }
            }
        }
        return zzbcjVar;
    }

    private static boolean zzb(Context context, Class<? extends Service> cls) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 4);
            if (serviceInfo != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pair<String, String> zzj(String[] strArr) {
        zzbbu.v("Looking up container asset.");
        if (this.zzbEU == null || this.zzbKI == null) {
            if (strArr == null) {
                try {
                    strArr = zzSt().zzhN("containers");
                } catch (IOException e) {
                    zzbbu.zzb(String.format("Failed to enumerate assets in folder %s", "containers"), e);
                    return Pair.create(null, null);
                }
            }
            boolean z = false;
            for (int i = 0; i < strArr.length; i++) {
                Matcher matcher = zzbKC.matcher(strArr[i]);
                if (!matcher.matches()) {
                    zzbbu.zzbh(String.format("Ignoring container asset %s (does not match %s)", strArr[i], zzbKC.pattern()));
                } else if (!z) {
                    this.zzbEU = matcher.group(1);
                    String valueOf = String.valueOf("containers");
                    String valueOf2 = String.valueOf(File.separator);
                    String valueOf3 = String.valueOf(strArr[i]);
                    this.zzbKI = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append(valueOf).append(valueOf2).append(valueOf3).toString();
                    String valueOf4 = String.valueOf(this.zzbEU);
                    zzbbu.v(valueOf4.length() != 0 ? "Asset found for container ".concat(valueOf4) : new String("Asset found for container "));
                    z = true;
                } else {
                    String valueOf5 = String.valueOf(strArr[i]);
                    zzbbu.zzbh(valueOf5.length() != 0 ? "Extra container asset found, will not be loaded: ".concat(valueOf5) : new String("Extra container asset found, will not be loaded: "));
                }
            }
            if (!z) {
                zzbbu.zzbh("No container asset found in /assets/containers. Checking top level /assets directory for container assets.");
                try {
                    String[] zzSv = zzSt().zzSv();
                    for (int i2 = 0; i2 < zzSv.length; i2++) {
                        Matcher matcher2 = zzbKC.matcher(zzSv[i2]);
                        if (matcher2.matches()) {
                            if (!z) {
                                this.zzbEU = matcher2.group(1);
                                this.zzbKI = zzSv[i2];
                                String valueOf6 = String.valueOf(this.zzbEU);
                                zzbbu.v(valueOf6.length() != 0 ? "Asset found for container ".concat(valueOf6) : new String("Asset found for container "));
                                zzbbu.zzbh("Loading container assets from top level /assets directory. Please move the container asset to /assets/containers");
                                z = true;
                            } else {
                                String valueOf7 = String.valueOf(zzSv[i2]);
                                zzbbu.zzbh(valueOf7.length() != 0 ? "Extra container asset found, will not be loaded: ".concat(valueOf7) : new String("Extra container asset found, will not be loaded: "));
                            }
                        }
                    }
                } catch (IOException e2) {
                    zzbbu.zzb("Failed to enumerate assets.", e2);
                    return Pair.create(null, null);
                }
            }
            return Pair.create(this.zzbEU, this.zzbKI);
        }
        return Pair.create(this.zzbEU, this.zzbKI);
    }

    public void initialize() {
        zzi((String[]) null);
    }

    public void zzal(String str, String str2) {
        zzr(str, str2, null);
    }

    public void zzi(String[] strArr) {
        zzbbu.v("Initializing Tag Manager.");
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.zzbKH) {
            if (this.zztZ) {
                return;
            }
            if (!zzb(this.mContext, TagManagerService.class)) {
                zzbbu.zzbh("Tag Manager fails to initialize (TagManagerService not enabled in the manifest)");
                this.zztZ = true;
                return;
            }
            Pair<String, String> zzj = zzj(strArr);
            String str = (String) zzj.first;
            String str2 = (String) zzj.second;
            if (str == null || str2 == null) {
                zzbbu.zzbh("Tag Manager's event handler WILL NOT be installed (no container loaded)");
            } else {
                String valueOf = String.valueOf(str);
                zzbbu.zzbg(valueOf.length() != 0 ? "Loading container ".concat(valueOf) : new String("Loading container "));
                zzal(str, str2);
                if (!this.zzbKL) {
                    zzbbu.zzbg("Installing Tag Manager event handler.");
                    this.zzbKL = true;
                    zzSu();
                    zzRE();
                    zzbbu.zzbg("Tag Manager event handler installed.");
                }
            }
            this.zztZ = true;
            zzbbu.zzbg(new StringBuilder(53).append("Tag Manager initilization took ").append(System.currentTimeMillis() - currentTimeMillis).append("ms").toString());
        }
    }

    public void zzr(final String str, final String str2, final String str3) {
        this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.4
            @Override // java.lang.Runnable
            public void run() {
                String str4 = str;
                zzbbu.v(new StringBuilder(String.valueOf(str4).length() + 28).append("Starting to load container ").append(str4).append(".").toString());
                if (zzbcj.this.zzbKJ != 1) {
                    zzbbe.zzc("Unexpected state - container loading already initiated.", zzbcj.this.mContext);
                    return;
                }
                zzbcj.this.zzbKJ = 2;
                zzbcj.this.zzbKE.zzb(str, str2, str3, new zzb());
            }
        });
        this.zzbJk.schedule(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.5
            @Override // java.lang.Runnable
            public void run() {
                zzbcj.this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (zzbcj.this.zzbKJ == 1 || zzbcj.this.zzbKJ == 2) {
                            zzbcj.this.zzbKJ = 4;
                            zzbbu.e("Container load timed out after 5000ms.");
                            while (!zzbcj.this.zzbKK.isEmpty()) {
                                zzbcj.this.zzbJj.execute((Runnable) zzbcj.this.zzbKK.remove());
                            }
                        }
                    }
                });
            }
        }, 5000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzx(final Uri uri) {
        this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbcj.7
            @Override // java.lang.Runnable
            public void run() {
                String valueOf = String.valueOf(uri);
                zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 25).append("Preview requested to uri ").append(valueOf).toString());
                synchronized (zzbcj.this.zzbKH) {
                    if (zzbcj.this.zzbKJ == 2) {
                        zzbbu.v("Still initializing. Defer preview container loading.");
                        zzbcj.this.zzbKK.add(this);
                        return;
                    }
                    String str = (String) zzbcj.this.zzj(null).first;
                    if (str == null) {
                        zzbbu.zzbh("Preview failed (no container found)");
                    } else if (!zzbcj.this.zzbKF.zzc(str, uri)) {
                        String valueOf2 = String.valueOf(uri);
                        zzbbu.zzbh(new StringBuilder(String.valueOf(valueOf2).length() + 73).append("Cannot preview the app with the uri: ").append(valueOf2).append(". Launching current version instead.").toString());
                    } else if (!zzbcj.this.zztZ) {
                        String valueOf3 = String.valueOf(uri);
                        zzbbu.v(new StringBuilder(String.valueOf(valueOf3).length() + 84).append("Deferring container loading for preview uri: ").append(valueOf3).append("(Tag Manager has not been initialized).").toString());
                    } else {
                        String valueOf4 = String.valueOf(uri);
                        zzbbu.zzbg(new StringBuilder(String.valueOf(valueOf4).length() + 36).append("Starting to load preview container: ").append(valueOf4).toString());
                        if (!zzbcj.this.zzbKE.zzSz()) {
                            zzbbu.zzbh("Failed to reset TagManager service for preview");
                            return;
                        }
                        zzbcj.this.zztZ = false;
                        zzbcj.this.zzbKJ = 1;
                        zzbcj.this.initialize();
                    }
                }
            }
        });
    }
}
