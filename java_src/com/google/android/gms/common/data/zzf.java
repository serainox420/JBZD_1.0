package com.google.android.gms.common.data;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public abstract class zzf<T> extends AbstractDataBuffer<T> {
    private boolean zzaEc;
    private ArrayList<Integer> zzaEd;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzf(DataHolder dataHolder) {
        super(dataHolder);
        this.zzaEc = false;
    }

    private void zzxo() {
        synchronized (this) {
            if (!this.zzaEc) {
                int count = this.zzaBi.getCount();
                this.zzaEd = new ArrayList<>();
                if (count > 0) {
                    this.zzaEd.add(0);
                    String zzxn = zzxn();
                    String zzd = this.zzaBi.zzd(zzxn, 0, this.zzaBi.zzcI(0));
                    int i = 1;
                    while (i < count) {
                        int zzcI = this.zzaBi.zzcI(i);
                        String zzd2 = this.zzaBi.zzd(zzxn, i, zzcI);
                        if (zzd2 == null) {
                            throw new NullPointerException(new StringBuilder(String.valueOf(zzxn).length() + 78).append("Missing value for markerColumn: ").append(zzxn).append(", at row: ").append(i).append(", for window: ").append(zzcI).toString());
                        }
                        if (!zzd2.equals(zzd)) {
                            this.zzaEd.add(Integer.valueOf(i));
                        } else {
                            zzd2 = zzd;
                        }
                        i++;
                        zzd = zzd2;
                    }
                }
                this.zzaEc = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: get */
    public final T mo547get(int i) {
        zzxo();
        return zzo(zzcM(i), zzcN(i));
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        zzxo();
        return this.zzaEd.size();
    }

    int zzcM(int i) {
        if (i < 0 || i >= this.zzaEd.size()) {
            throw new IllegalArgumentException(new StringBuilder(53).append("Position ").append(i).append(" is out of bounds for this buffer").toString());
        }
        return this.zzaEd.get(i).intValue();
    }

    protected int zzcN(int i) {
        if (i < 0 || i == this.zzaEd.size()) {
            return 0;
        }
        int count = i == this.zzaEd.size() + (-1) ? this.zzaBi.getCount() - this.zzaEd.get(i).intValue() : this.zzaEd.get(i + 1).intValue() - this.zzaEd.get(i).intValue();
        if (count != 1) {
            return count;
        }
        int zzcM = zzcM(i);
        int zzcI = this.zzaBi.zzcI(zzcM);
        String zzxp = zzxp();
        if (zzxp != null && this.zzaBi.zzd(zzxp, zzcM, zzcI) == null) {
            return 0;
        }
        return count;
    }

    protected abstract T zzo(int i, int i2);

    protected abstract String zzxn();

    protected String zzxp() {
        return null;
    }
}
