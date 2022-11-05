package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzv {
    protected static final Comparator<byte[]> zzav = new Comparator<byte[]>() { // from class: com.google.android.gms.internal.zzv.1
        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };
    private List<byte[]> zzar = new LinkedList();
    private List<byte[]> zzas = new ArrayList(64);
    private int zzat = 0;
    private final int zzau;

    public zzv(int i) {
        this.zzau = i;
    }

    private synchronized void zzt() {
        while (this.zzat > this.zzau) {
            byte[] remove = this.zzar.remove(0);
            this.zzas.remove(remove);
            this.zzat -= remove.length;
        }
    }

    public synchronized void zza(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.zzau) {
                this.zzar.add(bArr);
                int binarySearch = Collections.binarySearch(this.zzas, bArr, zzav);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.zzas.add(binarySearch, bArr);
                this.zzat += bArr.length;
                zzt();
            }
        }
    }

    public synchronized byte[] zzb(int i) {
        byte[] bArr;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.zzas.size()) {
                bArr = new byte[i];
                break;
            }
            bArr = this.zzas.get(i3);
            if (bArr.length >= i) {
                this.zzat -= bArr.length;
                this.zzas.remove(i3);
                this.zzar.remove(bArr);
                break;
            }
            i2 = i3 + 1;
        }
        return bArr;
    }
}
