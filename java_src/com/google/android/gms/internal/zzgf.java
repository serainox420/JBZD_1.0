package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
@zzme
/* loaded from: classes.dex */
public class zzgf {
    final Context mContext;
    BlockingQueue<zzgl> zzFA;
    ExecutorService zzFB;
    LinkedHashMap<String, String> zzFC = new LinkedHashMap<>();
    Map<String, zzgi> zzFD = new HashMap();
    private AtomicBoolean zzFE = new AtomicBoolean(false);
    private File zzFF;
    String zzFy;
    final String zzwd;

    public zzgf(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.mContext = context;
        this.zzwd = str;
        this.zzFy = str2;
        this.zzFE.set(zzgd.zzCb.get().booleanValue());
        if (this.zzFE.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzFF = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzFC.put(entry.getKey(), entry.getValue());
        }
        this.zzFA = new ArrayBlockingQueue(30);
        this.zzFB = Executors.newSingleThreadExecutor();
        this.zzFB.execute(new Runnable() { // from class: com.google.android.gms.internal.zzgf.1
            @Override // java.lang.Runnable
            public void run() {
                zzgf.this.zzfx();
            }
        });
        this.zzFD.put(NativeProtocol.WEB_DIALOG_ACTION, zzgi.zzFI);
        this.zzFD.put("ad_format", zzgi.zzFI);
        this.zzFD.put("e", zzgi.zzFJ);
    }

    private void zzb(Map<String, String> map, String str) {
        String zza = zza(this.zzFy, map, str);
        if (this.zzFE.get()) {
            zzc(this.zzFF, zza);
        } else {
            com.google.android.gms.ads.internal.zzw.zzcM().zzf(this.mContext, this.zzwd, zza);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void zzc(File file, String str) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        if (file == null) {
            zzpk.zzbh("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
            return;
        }
        try {
            try {
                fileOutputStream2 = new FileOutputStream(file, true);
                try {
                    fileOutputStream2.write(str.getBytes());
                    fileOutputStream2.write(10);
                    try {
                        fileOutputStream2.close();
                        fileOutputStream = fileOutputStream2;
                    } catch (IOException e) {
                        String str2 = "CsiReporter: Cannot close file: sdk_csi_data.txt.";
                        zzpk.zzc(str2, e);
                        fileOutputStream = str2;
                    }
                } catch (IOException e2) {
                    e = e2;
                    zzpk.zzc("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            fileOutputStream = fileOutputStream2;
                        } catch (IOException e3) {
                            String str3 = "CsiReporter: Cannot close file: sdk_csi_data.txt.";
                            zzpk.zzc(str3, e3);
                            fileOutputStream = str3;
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        zzpk.zzc("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            fileOutputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
            if (fileOutputStream != null) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzfx() {
        while (true) {
            try {
                zzgl take = this.zzFA.take();
                String zzfD = take.zzfD();
                if (!TextUtils.isEmpty(zzfD)) {
                    zzb(zza(this.zzFC, take.zzfE()), zzfD);
                }
            } catch (InterruptedException e) {
                zzpk.zzc("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    public zzgi zzV(String str) {
        zzgi zzgiVar = this.zzFD.get(str);
        return zzgiVar != null ? zzgiVar : zzgi.zzFH;
    }

    String zza(String str, Map<String, String> map, String str2) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(buildUpon.build().toString());
        sb.append("&").append("it").append("=").append(str2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> zza(Map<String, String> map, Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String str = (String) linkedHashMap.get(key);
            linkedHashMap.put(key, zzV(key).zzg(str, entry.getValue()));
        }
        return linkedHashMap;
    }

    public boolean zza(zzgl zzglVar) {
        return this.zzFA.offer(zzglVar);
    }

    public void zzc(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzFC.put("e", TextUtils.join(",", list));
    }
}
