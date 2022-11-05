package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzag;
import com.google.android.gms.internal.zzay;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class zzbd {
    protected Context zzqn;
    protected Context zzqo;
    private ExecutorService zzqp;
    private DexClassLoader zzqq;
    private zzay zzqr;
    private byte[] zzqs;
    private zzaq zzqz;
    private static final String TAG = zzbd.class.getSimpleName();
    protected static final Object zzqy = new Object();
    protected static final Object zzqC = new Object();
    private static com.google.android.gms.common.zze zzqE = null;
    private volatile AdvertisingIdClient zzqt = null;
    private volatile boolean zzpU = false;
    private Future zzqu = null;
    private volatile zzag.zza zzqv = null;
    private Future zzqw = null;
    private volatile boolean zzqx = false;
    private GoogleApiClient zzqA = null;
    protected boolean zzqB = false;
    protected boolean zzqD = false;
    protected boolean zzqF = false;
    private Map<Pair<String, String>, zzbz> zzqG = new HashMap();

    private zzbd(Context context) {
        this.zzqn = context;
        this.zzqo = context.getApplicationContext();
    }

    public static zzbd zza(Context context, String str, String str2, boolean z) {
        zzbd zzbdVar = new zzbd(context);
        try {
            zzbdVar.zzb(str, str2, z);
            return zzbdVar;
        } catch (zzba e) {
            return null;
        }
    }

    private File zza(String str, File file, String str2) throws zzay.zza, IOException {
        File file2 = new File(String.format("%s/%s.jar", file, str2));
        if (!file2.exists()) {
            byte[] zzc = this.zzqr.zzc(this.zzqs, str);
            file2.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write(zzc, 0, zzc.length);
            fileOutputStream.close();
        }
        return file2;
    }

    private void zza(File file) {
        if (!file.exists()) {
            Log.d(TAG, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        } else {
            file.delete();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void zza(File file, String str) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        fileOutputStream2 = null;
        r1 = null;
        r1 = null;
        FileInputStream fileInputStream2 = null;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        try {
            fileInputStream = new FileInputStream(file3);
            try {
                if (fileInputStream.read(bArr) <= 0) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                    }
                    zza(file3);
                    return;
                }
                zzag.zzd zzdVar = new zzag.zzd();
                zzdVar.zzcx = Build.VERSION.SDK.getBytes();
                zzdVar.zzcw = str.getBytes();
                byte[] bytes = this.zzqr.zzd(this.zzqs, bArr).getBytes();
                zzdVar.data = bytes;
                zzdVar.zzcv = zzao.zzh(bytes);
                file2.createNewFile();
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] zzf = zzbxt.zzf(zzdVar);
                    fileOutputStream.write(zzf, 0, zzf.length);
                    fileOutputStream.close();
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                    }
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                    }
                    zza(file3);
                } catch (zzay.zza e4) {
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e5) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                    zza(file3);
                } catch (IOException e7) {
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    zza(file3);
                } catch (NoSuchAlgorithmException e8) {
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                    }
                    if (fileOutputStream != null) {
                    }
                    zza(file3);
                } catch (Throwable th) {
                    fileOutputStream2 = fileOutputStream;
                    th = th;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e9) {
                        }
                    }
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e10) {
                        }
                    }
                    zza(file3);
                    throw th;
                }
            } catch (zzay.zza e11) {
                fileOutputStream = null;
                fileInputStream2 = fileInputStream;
            } catch (IOException e12) {
                fileOutputStream = null;
                fileInputStream2 = fileInputStream;
            } catch (NoSuchAlgorithmException e13) {
                fileOutputStream = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (zzay.zza e14) {
            fileOutputStream = null;
        } catch (IOException e15) {
            fileOutputStream = null;
        } catch (NoSuchAlgorithmException e16) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzaT() {
        try {
            if (this.zzqt != null || this.zzqo == null) {
                return;
            }
            AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zzqo);
            advertisingIdClient.start();
            this.zzqt = advertisingIdClient;
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            this.zzqt = null;
        }
    }

    private void zzaU() {
        if (!zzgd.zzDV.get().booleanValue()) {
            return;
        }
        zzaV();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzaW() {
        if (this.zzqD) {
            try {
                this.zzqv = zzaqg.zzq(this.zzqn, this.zzqn.getPackageName(), Integer.toString(this.zzqn.getPackageManager().getPackageInfo(this.zzqn.getPackageName(), 0).versionCode));
            } catch (Throwable th) {
            }
        }
    }

    private void zzaX() {
        boolean z = true;
        this.zzqp.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbd.3
            @Override // java.lang.Runnable
            public void run() {
                zzgd.initialize(zzbd.this.zzqn);
            }
        });
        try {
            zzqE = com.google.android.gms.common.zze.zzuY();
            this.zzqB = zzqE.zzaC(this.zzqn) > 0;
            if (zzqE.isGooglePlayServicesAvailable(this.zzqn) != 0) {
                z = false;
            }
            this.zzqD = z;
            if (this.zzqn.getApplicationContext() == null) {
                return;
            }
            this.zzqA = new GoogleApiClient.Builder(this.zzqn).addApi(zzzk.API).build();
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean zzb(File file, String str) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream2;
        FileOutputStream e = null;
        e = 0;
        e = 0;
        e = 0;
        e = 0;
        e = null;
        e = null;
        e = null;
        e = 0;
        e = null;
        e = null;
        boolean z = true;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            return false;
        }
        try {
            long length = file2.length();
            if (length <= 0) {
                zza(file2);
                z = false;
            } else {
                byte[] bArr = new byte[(int) length];
                fileInputStream = new FileInputStream(file2);
                try {
                    if (fileInputStream.read(bArr) <= 0) {
                        Log.d(TAG, "Cannot read the cache data.");
                        zza(file2);
                        try {
                            fileInputStream.close();
                        } catch (IOException e2) {
                        }
                        z = false;
                    } else {
                        zzag.zzd zze = zzag.zzd.zze(bArr);
                        if (!str.equals(new String(zze.zzcw)) || !Arrays.equals(zze.zzcv, zzao.zzh(zze.data)) || !Arrays.equals(zze.zzcx, Build.VERSION.SDK.getBytes())) {
                            zza(file2);
                            try {
                                fileInputStream.close();
                            } catch (IOException e3) {
                            }
                            z = false;
                        } else {
                            byte[] zzc = this.zzqr.zzc(this.zzqs, new String(zze.data));
                            file3.createNewFile();
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file3);
                            e = 0;
                            try {
                                fileOutputStream2.write(zzc, 0, zzc.length);
                                try {
                                    fileInputStream.close();
                                } catch (IOException e4) {
                                    e = e4;
                                }
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e5) {
                                    e = e5;
                                }
                            } catch (zzay.zza e6) {
                                fileOutputStream = fileOutputStream2;
                                fileInputStream2 = fileInputStream;
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e7) {
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e8) {
                                    }
                                }
                                return false;
                            } catch (IOException e9) {
                                fileOutputStream = fileOutputStream2;
                                fileInputStream2 = fileInputStream;
                                if (fileInputStream2 != null) {
                                }
                                if (fileOutputStream != null) {
                                }
                                return false;
                            } catch (NoSuchAlgorithmException e10) {
                                fileOutputStream = fileOutputStream2;
                                fileInputStream2 = fileInputStream;
                                if (fileInputStream2 != null) {
                                }
                                if (fileOutputStream != null) {
                                }
                                return false;
                            } catch (Throwable th) {
                                th = th;
                                e = fileOutputStream2;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e11) {
                                    }
                                }
                                if (e != 0) {
                                    try {
                                        e.close();
                                    } catch (IOException e12) {
                                    }
                                }
                                throw th;
                            }
                        }
                    }
                } catch (zzay.zza e13) {
                    fileOutputStream = e;
                    fileInputStream2 = fileInputStream;
                } catch (IOException e14) {
                    fileOutputStream = e;
                    fileInputStream2 = fileInputStream;
                } catch (NoSuchAlgorithmException e15) {
                    fileOutputStream = e;
                    fileInputStream2 = fileInputStream;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            return z;
        } catch (zzay.zza e16) {
            fileOutputStream = e;
            fileInputStream2 = e;
        } catch (IOException e17) {
            fileOutputStream = e;
            fileInputStream2 = e;
        } catch (NoSuchAlgorithmException e18) {
            fileOutputStream = e;
            fileInputStream2 = e;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = e;
        }
    }

    private boolean zzb(String str, String str2, boolean z) throws zzba {
        this.zzqp = Executors.newCachedThreadPool();
        zzc(z);
        zzaX();
        zzaU();
        if (!zzbf.zzbc() || !zzgd.zzDT.get().booleanValue()) {
            zzo(str);
            zzp(str2);
            this.zzqz = new zzaq(this);
            return true;
        }
        throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
    }

    private void zzc(boolean z) {
        this.zzpU = z;
        if (!z) {
            return;
        }
        this.zzqu = this.zzqp.submit(new Runnable() { // from class: com.google.android.gms.internal.zzbd.1
            @Override // java.lang.Runnable
            public void run() {
                zzbd.this.zzaT();
            }
        });
    }

    private void zzo(String str) throws zzba {
        this.zzqr = new zzay(null);
        try {
            this.zzqs = this.zzqr.zzn(str);
        } catch (zzay.zza e) {
            throw new zzba(e);
        }
    }

    private boolean zzp(String str) throws zzba {
        try {
            File cacheDir = this.zzqn.getCacheDir();
            if (cacheDir == null && (cacheDir = this.zzqn.getDir("dex", 0)) == null) {
                throw new zzba();
            }
            File file = cacheDir;
            String zzU = zzaz.zzU();
            File zza = zza(str, file, zzU);
            zzb(file, zzU);
            try {
                this.zzqq = new DexClassLoader(zza.getAbsolutePath(), file.getAbsolutePath(), null, this.zzqn.getClassLoader());
                zza(zza);
                zza(file, zzU);
                zzq(String.format("%s/%s.dex", file, zzU));
                return true;
            } catch (Throwable th) {
                zza(zza);
                zza(file, zzU);
                zzq(String.format("%s/%s.dex", file, zzU));
                throw th;
            }
        } catch (zzay.zza e) {
            throw new zzba(e);
        } catch (FileNotFoundException e2) {
            throw new zzba(e2);
        } catch (IOException e3) {
            throw new zzba(e3);
        } catch (NullPointerException e4) {
            throw new zzba(e4);
        }
    }

    private void zzq(String str) {
        zza(new File(str));
    }

    public Context getApplicationContext() {
        return this.zzqo;
    }

    public Context getContext() {
        return this.zzqn;
    }

    public int zzQ() {
        zzaq zzaP = zzaP();
        if (zzaP != null) {
            return zzaP.zzQ();
        }
        return Integer.MIN_VALUE;
    }

    public boolean zza(String str, String str2, List<Class> list) {
        if (!this.zzqG.containsKey(new Pair(str, str2))) {
            this.zzqG.put(new Pair<>(str, str2), new zzbz(this, str, str2, list));
            return true;
        }
        return false;
    }

    public ExecutorService zzaI() {
        return this.zzqp;
    }

    public DexClassLoader zzaJ() {
        return this.zzqq;
    }

    public zzay zzaK() {
        return this.zzqr;
    }

    public byte[] zzaL() {
        return this.zzqs;
    }

    public GoogleApiClient zzaM() {
        return this.zzqA;
    }

    public boolean zzaN() {
        return this.zzqB;
    }

    public boolean zzaO() {
        return this.zzqF;
    }

    public zzaq zzaP() {
        return this.zzqz;
    }

    public boolean zzaQ() {
        return this.zzqD;
    }

    public zzag.zza zzaR() {
        return this.zzqv;
    }

    public Future zzaS() {
        return this.zzqw;
    }

    public void zzaV() {
        synchronized (zzqy) {
            if (!this.zzqx) {
                this.zzqw = this.zzqp.submit(new Runnable() { // from class: com.google.android.gms.internal.zzbd.2
                    @Override // java.lang.Runnable
                    public void run() {
                        zzbd.this.zzaW();
                        synchronized (zzbd.zzqy) {
                            zzbd.this.zzqx = false;
                        }
                    }
                });
                this.zzqx = true;
            }
        }
    }

    public AdvertisingIdClient zzaY() {
        if (!this.zzpU) {
            return null;
        }
        if (this.zzqt != null) {
            return this.zzqt;
        }
        if (this.zzqu != null) {
            try {
                this.zzqu.get(2000L, TimeUnit.MILLISECONDS);
                this.zzqu = null;
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
            } catch (TimeoutException e3) {
                this.zzqu.cancel(true);
            }
        }
        return this.zzqt;
    }

    public void zzaZ() {
        try {
            synchronized (zzqC) {
                if (this.zzqF) {
                    return;
                }
                if (!this.zzqD || this.zzqA == null) {
                    this.zzqF = false;
                } else {
                    this.zzqA.connect();
                    this.zzqF = true;
                }
            }
        } catch (Throwable th) {
        }
    }

    public void zzba() {
        synchronized (zzqC) {
            if (this.zzqF && this.zzqA != null) {
                this.zzqA.disconnect();
                this.zzqF = false;
            }
        }
    }

    public Method zzc(String str, String str2) {
        zzbz zzbzVar = this.zzqG.get(new Pair(str, str2));
        if (zzbzVar == null) {
            return null;
        }
        return zzbzVar.zzbm();
    }
}
