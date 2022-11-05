package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzbjd;
import com.google.android.gms.internal.zzbjf;
import com.google.android.gms.internal.zzbxs;
import com.google.android.gms.internal.zzbxt;
import com.google.android.gms.tagmanager.zzbn;
import com.google.android.gms.tagmanager.zzcj;
import com.google.android.gms.tagmanager.zzp;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzcv implements zzp.zzf {
    private final Context mContext;
    private final String zzbEU;
    private zzbn<zzbjd.zza> zzbHt;
    private final ExecutorService zzbtI = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcv(Context context, String str) {
        this.mContext = context;
        this.zzbEU = str;
    }

    private zzbjf.zzc zzM(byte[] bArr) {
        try {
            zzbjf.zzc zzb = zzbjf.zzb(zzaj.zzf.zzf(bArr));
            if (zzb == null) {
                return zzb;
            }
            zzbo.v("The container was successfully loaded from the resource (using binary file)");
            return zzb;
        } catch (zzbjf.zzg e) {
            zzbo.zzbh("The resource file is invalid. The container from the binary file is invalid");
            return null;
        } catch (zzbxs e2) {
            zzbo.e("The resource file is corrupted. The container cannot be extracted from the binary file");
            return null;
        }
    }

    private zzbjf.zzc zza(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            return zzbh.zzhl(byteArrayOutputStream.toString("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            zzbo.zzbf("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        } catch (JSONException e2) {
            zzbo.zzbh("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private void zzd(zzbjd.zza zzaVar) throws IllegalArgumentException {
        if (zzaVar.zzlr == null && zzaVar.zzbNf == null) {
            throw new IllegalArgumentException("Resource and SupplementedResource are NULL.");
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public synchronized void release() {
        this.zzbtI.shutdown();
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zzQp() {
        this.zzbtI.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzcv.1
            @Override // java.lang.Runnable
            public void run() {
                zzcv.this.zzRm();
            }
        });
    }

    void zzRm() {
        if (this.zzbHt == null) {
            throw new IllegalStateException("Callback must be set before execute");
        }
        zzbo.v("Attempting to load resource from disk");
        if ((zzcj.zzRe().zzRf() == zzcj.zza.CONTAINER || zzcj.zzRe().zzRf() == zzcj.zza.CONTAINER_DEBUG) && this.zzbEU.equals(zzcj.zzRe().getContainerId())) {
            this.zzbHt.zza(zzbn.zza.NOT_AVAILABLE);
            return;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(zzRn());
            try {
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        zzbjf.zzc(fileInputStream, byteArrayOutputStream);
                        zzbjd.zza zzQ = zzbjd.zza.zzQ(byteArrayOutputStream.toByteArray());
                        zzd(zzQ);
                        this.zzbHt.onSuccess(zzQ);
                    } finally {
                        try {
                            fileInputStream.close();
                        } catch (IOException e) {
                            zzbo.zzbh("Error closing stream for reading resource from disk");
                        }
                    }
                } catch (IOException e2) {
                    this.zzbHt.zza(zzbn.zza.IO_ERROR);
                    zzbo.zzbh("Failed to read the resource from disk");
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                        zzbo.zzbh("Error closing stream for reading resource from disk");
                    }
                }
            } catch (IllegalArgumentException e4) {
                this.zzbHt.zza(zzbn.zza.IO_ERROR);
                zzbo.zzbh("Failed to read the resource from disk. The resource is inconsistent");
                try {
                    fileInputStream.close();
                } catch (IOException e5) {
                    zzbo.zzbh("Error closing stream for reading resource from disk");
                }
            }
            zzbo.v("The Disk resource was successfully read.");
        } catch (FileNotFoundException e6) {
            zzbo.zzbf("Failed to find the resource in the disk");
            this.zzbHt.zza(zzbn.zza.NOT_AVAILABLE);
        }
    }

    File zzRn() {
        String valueOf = String.valueOf("resource_");
        String valueOf2 = String.valueOf(this.zzbEU);
        return new File(this.mContext.getDir("google_tagmanager", 0), valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zza(zzbn<zzbjd.zza> zzbnVar) {
        this.zzbHt = zzbnVar;
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zzb(final zzbjd.zza zzaVar) {
        this.zzbtI.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzcv.2
            @Override // java.lang.Runnable
            public void run() {
                zzcv.this.zzc(zzaVar);
            }
        });
    }

    boolean zzc(zzbjd.zza zzaVar) {
        File zzRn = zzRn();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(zzRn);
            try {
                try {
                    fileOutputStream.write(zzbxt.zzf(zzaVar));
                    return true;
                } catch (IOException e) {
                    zzbo.zzbh("Error writing resource to disk. Removing resource from disk.");
                    zzRn.delete();
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (IOException e2) {
                        zzbo.zzbh("error closing stream for writing resource to disk");
                        return false;
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException e3) {
                    zzbo.zzbh("error closing stream for writing resource to disk");
                }
            }
        } catch (FileNotFoundException e4) {
            zzbo.e("Error opening resource file for writing");
            return false;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public zzbjf.zzc zznz(int i) {
        try {
            InputStream openRawResource = this.mContext.getResources().openRawResource(i);
            String valueOf = String.valueOf(this.mContext.getResources().getResourceName(i));
            zzbo.v(new StringBuilder(String.valueOf(valueOf).length() + 66).append("Attempting to load a container from the resource ID ").append(i).append(" (").append(valueOf).append(")").toString());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzbjf.zzc(openRawResource, byteArrayOutputStream);
                zzbjf.zzc zza = zza(byteArrayOutputStream);
                if (zza != null) {
                    zzbo.v("The container was successfully loaded from the resource (using JSON file format)");
                } else {
                    zza = zzM(byteArrayOutputStream.toByteArray());
                }
                return zza;
            } catch (IOException e) {
                String valueOf2 = String.valueOf(this.mContext.getResources().getResourceName(i));
                zzbo.zzbh(new StringBuilder(String.valueOf(valueOf2).length() + 67).append("Error reading the default container with resource ID ").append(i).append(" (").append(valueOf2).append(")").toString());
                return null;
            }
        } catch (Resources.NotFoundException e2) {
            zzbo.zzbh(new StringBuilder(98).append("Failed to load the container. No default container resource found with the resource ID ").append(i).toString());
            return null;
        }
    }
}
