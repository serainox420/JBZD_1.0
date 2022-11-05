package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzbjf;
import com.google.android.gms.internal.zzbji;
import com.google.android.gms.internal.zzbjj;
import com.google.android.gms.internal.zzbjk;
import com.google.android.gms.tagmanager.zzbn;
import com.google.android.gms.tagmanager.zzcj;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
class zzct implements Runnable {
    private final Context mContext;
    private final String zzbEU;
    private volatile String zzbFs;
    private final zzbjj zzbHr;
    private final String zzbHs;
    private zzbn<zzaj.zzj> zzbHt;
    private volatile zzt zzbHu;
    private volatile String zzbHv;

    zzct(Context context, String str, zzbjj zzbjjVar, zzt zztVar) {
        this.mContext = context;
        this.zzbHr = zzbjjVar;
        this.zzbEU = str;
        this.zzbHu = zztVar;
        String valueOf = String.valueOf("/r?id=");
        String valueOf2 = String.valueOf(str);
        this.zzbHs = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        this.zzbFs = this.zzbHs;
        this.zzbHv = null;
    }

    public zzct(Context context, String str, zzt zztVar) {
        this(context, str, new zzbjj(), zztVar);
    }

    private boolean zzRh() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzbo.v("...no network connectivity");
            return false;
        }
        return true;
    }

    private void zzRi() {
        if (!zzRh()) {
            this.zzbHt.zza(zzbn.zza.NOT_AVAILABLE);
            return;
        }
        zzbo.v("Start loading resource from network ...");
        String zzRj = zzRj();
        zzbji zzTF = this.zzbHr.zzTF();
        InputStream inputStream = null;
        try {
            try {
                try {
                    inputStream = zzTF.zzhX(zzRj);
                } catch (IOException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzbo.zzc(new StringBuilder(String.valueOf(zzRj).length() + 40 + String.valueOf(valueOf).length()).append("Error when loading resources from url: ").append(zzRj).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf).toString(), e);
                    this.zzbHt.zza(zzbn.zza.IO_ERROR);
                    zzTF.close();
                    return;
                }
            } catch (zzbjk e2) {
                String valueOf2 = String.valueOf(zzRj);
                zzbo.zzbh(valueOf2.length() != 0 ? "Error when loading resource for url: ".concat(valueOf2) : new String("Error when loading resource for url: "));
                this.zzbHt.zza(zzbn.zza.SERVER_UNAVAILABLE_ERROR);
            } catch (FileNotFoundException e3) {
                String str = this.zzbEU;
                zzbo.zzbh(new StringBuilder(String.valueOf(zzRj).length() + 79 + String.valueOf(str).length()).append("No data is retrieved from the given url: ").append(zzRj).append(". Make sure container_id: ").append(str).append(" is correct.").toString());
                this.zzbHt.zza(zzbn.zza.SERVER_ERROR);
                zzTF.close();
                return;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzbjf.zzc(inputStream, byteArrayOutputStream);
                zzaj.zzj zzg = zzaj.zzj.zzg(byteArrayOutputStream.toByteArray());
                String valueOf3 = String.valueOf(zzg);
                zzbo.v(new StringBuilder(String.valueOf(valueOf3).length() + 43).append("Successfully loaded supplemented resource: ").append(valueOf3).toString());
                if (zzg.zzlr == null && zzg.zzlq.length == 0) {
                    String valueOf4 = String.valueOf(this.zzbEU);
                    zzbo.v(valueOf4.length() != 0 ? "No change for container: ".concat(valueOf4) : new String("No change for container: "));
                }
                this.zzbHt.onSuccess(zzg);
                zzTF.close();
                zzbo.v("Load resource from network finished.");
            } catch (IOException e4) {
                String valueOf5 = String.valueOf(e4.getMessage());
                zzbo.zzc(new StringBuilder(String.valueOf(zzRj).length() + 51 + String.valueOf(valueOf5).length()).append("Error when parsing downloaded resources from url: ").append(zzRj).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf5).toString(), e4);
                this.zzbHt.zza(zzbn.zza.SERVER_ERROR);
                zzTF.close();
            }
        } catch (Throwable th) {
            zzTF.close();
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.zzbHt == null) {
            throw new IllegalStateException("callback must be set before execute");
        }
        zzRi();
    }

    String zzRj() {
        String valueOf = String.valueOf(this.zzbHu.zzQv());
        String str = this.zzbFs;
        String valueOf2 = String.valueOf("&v=a65833898");
        String sb = new StringBuilder(String.valueOf(valueOf).length() + String.valueOf(str).length() + String.valueOf(valueOf2).length()).append(valueOf).append(str).append(valueOf2).toString();
        if (this.zzbHv != null && !this.zzbHv.trim().equals("")) {
            String valueOf3 = String.valueOf(sb);
            String valueOf4 = String.valueOf("&pv=");
            String str2 = this.zzbHv;
            sb = new StringBuilder(String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(str2).length()).append(valueOf3).append(valueOf4).append(str2).toString();
        }
        if (zzcj.zzRe().zzRf().equals(zzcj.zza.CONTAINER_DEBUG)) {
            String valueOf5 = String.valueOf(sb);
            String valueOf6 = String.valueOf("&gtm_debug=x");
            return valueOf6.length() != 0 ? valueOf5.concat(valueOf6) : new String(valueOf5);
        }
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzbn<zzaj.zzj> zzbnVar) {
        this.zzbHt = zzbnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgZ(String str) {
        if (str == null) {
            this.zzbFs = this.zzbHs;
            return;
        }
        String valueOf = String.valueOf(str);
        zzbo.zzbf(valueOf.length() != 0 ? "Setting CTFE URL path: ".concat(valueOf) : new String("Setting CTFE URL path: "));
        this.zzbFs = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzho(String str) {
        String valueOf = String.valueOf(str);
        zzbo.zzbf(valueOf.length() != 0 ? "Setting previous container version: ".concat(valueOf) : new String("Setting previous container version: "));
        this.zzbHv = str;
    }
}
