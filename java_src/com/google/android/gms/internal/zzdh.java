package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import com.google.android.gms.internal.zzdk;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
@zzme
/* loaded from: classes.dex */
public class zzdh {
    private final int zzyo;
    private final zzdg zzyq = new zzdj();
    private final int zzyn = 6;
    private final int zzyp = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza {
        ByteArrayOutputStream zzyr = new ByteArrayOutputStream(4096);
        Base64OutputStream zzys = new Base64OutputStream(this.zzyr, 10);

        /* JADX WARN: Type inference failed for: r2v0, types: [java.io.ByteArrayOutputStream, android.util.Base64OutputStream] */
        public String toString() {
            String str;
            try {
                this.zzys.close();
            } catch (IOException e) {
                zzpk.zzb("HashManager: Unable to convert to Base64.", e);
            }
            try {
                this.zzyr.close();
                str = this.zzyr.toString();
            } catch (IOException e2) {
                zzpk.zzb("HashManager: Unable to convert to Base64.", e2);
                str = "";
            } finally {
                this.zzyr = null;
                this.zzys = null;
            }
            return str;
        }

        public void write(byte[] bArr) throws IOException {
            this.zzys.write(bArr);
        }
    }

    public zzdh(int i) {
        this.zzyo = i;
    }

    String zzG(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        zza zzeu = zzeu();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzyo, new Comparator<zzdk.zza>(this) { // from class: com.google.android.gms.internal.zzdh.1
            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(zzdk.zza zzaVar, zzdk.zza zzaVar2) {
                int i = zzaVar.zzyv - zzaVar2.zzyv;
                return i != 0 ? i : (int) (zzaVar.value - zzaVar2.value);
            }
        });
        for (String str2 : split) {
            String[] zzI = zzdi.zzI(str2);
            if (zzI.length != 0) {
                zzdk.zza(zzI, this.zzyo, this.zzyn, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzeu.write(this.zzyq.zzF(((zzdk.zza) it.next()).zzyu));
            } catch (IOException e) {
                zzpk.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzeu.toString();
    }

    public String zza(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next().toLowerCase(Locale.US));
            stringBuffer.append('\n');
        }
        return zzG(stringBuffer.toString());
    }

    zza zzeu() {
        return new zza();
    }
}
