package com.google.android.gms.internal;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class zzbig {
    private final Context mContext;
    private final zza zzbMj;
    private final ExecutorService zzbtI;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        InputStream open(String str) throws IOException;
    }

    public zzbig(final Context context) {
        this(context, Executors.newSingleThreadExecutor(), new zza() { // from class: com.google.android.gms.internal.zzbig.1
            @Override // com.google.android.gms.internal.zzbig.zza
            public InputStream open(String str) throws IOException {
                return context.getAssets().open(str);
            }
        });
    }

    zzbig(Context context, ExecutorService executorService, zza zzaVar) {
        this.mContext = context;
        this.zzbtI = executorService;
        this.zzbMj = zzaVar;
    }

    private String zzhW(String str) {
        String valueOf = String.valueOf("resource_");
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private byte[] zzl(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                com.google.android.gms.common.util.zzp.zza(inputStream, byteArrayOutputStream);
            } catch (IOException e) {
                zzbbu.zzbh("Failed to read the resource from disk");
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    zzbbu.zzbh("Error closing stream for reading resource from disk");
                    return null;
                }
            }
            try {
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e3) {
                zzbbu.zzbh("Error closing stream for reading resource from disk");
                return null;
            }
        } catch (Throwable th) {
            try {
                inputStream.close();
                throw th;
            } catch (IOException e4) {
                zzbbu.zzbh("Error closing stream for reading resource from disk");
                return null;
            }
        }
    }

    public void zza(final String str, final zzbia zzbiaVar) {
        this.zzbtI.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbig.2
            @Override // java.lang.Runnable
            public void run() {
                zzbig.this.zzb(str, zzbiaVar);
            }
        });
    }

    public void zza(final String str, final String str2, final zzbia zzbiaVar) {
        this.zzbtI.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbig.3
            @Override // java.lang.Runnable
            public void run() {
                zzbig.this.zzb(str, str2, zzbiaVar);
            }
        });
    }

    void zzb(String str, zzbia zzbiaVar) {
        zzbbu.v("Starting to load a saved resource file from Disk.");
        try {
            zzbiaVar.zzN(zzl(new FileInputStream(zzhV(str))));
        } catch (FileNotFoundException e) {
            String valueOf = String.valueOf(zzhW(str));
            zzbbu.e(valueOf.length() != 0 ? "Saved resource not found: ".concat(valueOf) : new String("Saved resource not found: "));
            zzbiaVar.zzA(0, 1);
        }
    }

    void zzb(String str, String str2, zzbia zzbiaVar) {
        zzbbu.v("Starting to load a default asset file from Disk.");
        if (str2 == null) {
            zzbbu.v("Default asset file is not specified. Not proceeding with the loading");
            zzbiaVar.zzA(0, 2);
            return;
        }
        try {
            InputStream open = this.zzbMj.open(str2);
            if (open != null) {
                zzbiaVar.zzN(zzl(open));
            } else {
                zzbiaVar.zzA(0, 2);
            }
        } catch (IOException e) {
            zzbbu.e(new StringBuilder(String.valueOf(str).length() + 42 + String.valueOf(str2).length()).append("Default asset file not found. ").append(str).append(". Filename: ").append(str2).toString());
            zzbiaVar.zzA(0, 2);
        }
    }

    public void zzg(final String str, final byte[] bArr) {
        this.zzbtI.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbig.4
            @Override // java.lang.Runnable
            public void run() {
                zzbig.this.zzh(str, bArr);
            }
        });
    }

    void zzh(String str, byte[] bArr) {
        File zzhV = zzhV(str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(zzhV);
            try {
                try {
                    fileOutputStream.write(bArr);
                } catch (IOException e) {
                    zzbbu.e("Error writing resource to disk. Removing resource from disk");
                    zzhV.delete();
                    try {
                        fileOutputStream.close();
                        zzbbu.v(new StringBuilder(String.valueOf(str).length() + 24).append("Resource ").append(str).append(" saved on Disk.").toString());
                    } catch (IOException e2) {
                        zzbbu.e("Error closing stream for writing resource to disk");
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                    zzbbu.v(new StringBuilder(String.valueOf(str).length() + 24).append("Resource ").append(str).append(" saved on Disk.").toString());
                } catch (IOException e3) {
                    zzbbu.e("Error closing stream for writing resource to disk");
                }
            }
        } catch (FileNotFoundException e4) {
            zzbbu.e("Error opening resource file for writing");
        }
    }

    public long zzhU(String str) {
        File zzhV = zzhV(str);
        if (zzhV.exists()) {
            return zzhV.lastModified();
        }
        return 0L;
    }

    File zzhV(String str) {
        return new File(this.mContext.getDir("google_tagmanager", 0), zzhW(str));
    }
}
