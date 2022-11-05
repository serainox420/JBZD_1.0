package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public class zzbph implements Comparable<zzbph>, Iterable<zzbrq> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final zzbph zzcel;
    private final int end;
    private final int start;
    private final zzbrq[] zzcek;

    static {
        $assertionsDisabled = !zzbph.class.desiredAssertionStatus();
        zzcel = new zzbph("");
    }

    public zzbph(String str) {
        int i;
        String[] split = str.split("/");
        int i2 = 0;
        for (String str2 : split) {
            if (str2.length() > 0) {
                i2++;
            }
        }
        this.zzcek = new zzbrq[i2];
        int length = split.length;
        int i3 = 0;
        int i4 = 0;
        while (i3 < length) {
            String str3 = split[i3];
            if (str3.length() > 0) {
                i = i4 + 1;
                this.zzcek[i4] = zzbrq.zzja(str3);
            } else {
                i = i4;
            }
            i3++;
            i4 = i;
        }
        this.start = 0;
        this.end = this.zzcek.length;
    }

    public zzbph(List<String> list) {
        this.zzcek = new zzbrq[list.size()];
        int i = 0;
        for (String str : list) {
            this.zzcek[i] = zzbrq.zzja(str);
            i++;
        }
        this.start = 0;
        this.end = list.size();
    }

    public zzbph(zzbrq... zzbrqVarArr) {
        this.zzcek = (zzbrq[]) Arrays.copyOf(zzbrqVarArr, zzbrqVarArr.length);
        this.start = 0;
        this.end = zzbrqVarArr.length;
        for (zzbrq zzbrqVar : zzbrqVarArr) {
            if (!$assertionsDisabled && zzbrqVar == null) {
                throw new AssertionError("Can't construct a path with a null value!");
            }
        }
    }

    private zzbph(zzbrq[] zzbrqVarArr, int i, int i2) {
        this.zzcek = zzbrqVarArr;
        this.start = i;
        this.end = i2;
    }

    public static zzbph zzYP() {
        return zzcel;
    }

    public static zzbph zza(zzbph zzbphVar, zzbph zzbphVar2) {
        zzbrq zzYS = zzbphVar.zzYS();
        zzbrq zzYS2 = zzbphVar2.zzYS();
        if (zzYS == null) {
            return zzbphVar2;
        }
        if (zzYS.equals(zzYS2)) {
            return zza(zzbphVar.zzYT(), zzbphVar2.zzYT());
        }
        String valueOf = String.valueOf(zzbphVar2);
        String valueOf2 = String.valueOf(zzbphVar);
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(valueOf2).length()).append("INTERNAL ERROR: ").append(valueOf).append(" is not contained in ").append(valueOf2).toString());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbph)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzbph zzbphVar = (zzbph) obj;
        if (size() != zzbphVar.size()) {
            return false;
        }
        int i = this.start;
        for (int i2 = zzbphVar.start; i < this.end && i2 < zzbphVar.end; i2++) {
            if (!this.zzcek[i].equals(zzbphVar.zzcek[i2])) {
                return false;
            }
            i++;
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        for (int i2 = this.start; i2 < this.end; i2++) {
            i = (i * 37) + this.zzcek[i2].hashCode();
        }
        return i;
    }

    public boolean isEmpty() {
        return this.start >= this.end;
    }

    @Override // java.lang.Iterable
    public Iterator<zzbrq> iterator() {
        return new Iterator<zzbrq>() { // from class: com.google.android.gms.internal.zzbph.1
            int offset;

            {
                this.offset = zzbph.this.start;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.offset < zzbph.this.end;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Can't remove component from immutable Path!");
            }

            @Override // java.util.Iterator
            /* renamed from: zzYW */
            public zzbrq next() {
                if (!hasNext()) {
                    throw new NoSuchElementException("No more elements.");
                }
                zzbrq zzbrqVar = zzbph.this.zzcek[this.offset];
                this.offset++;
                return zzbrqVar;
            }
        };
    }

    public int size() {
        return this.end - this.start;
    }

    public String toString() {
        if (isEmpty()) {
            return "/";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = this.start; i < this.end; i++) {
            sb.append("/");
            sb.append(this.zzcek[i].asString());
        }
        return sb.toString();
    }

    public String zzYQ() {
        if (isEmpty()) {
            return "/";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = this.start; i < this.end; i++) {
            if (i > this.start) {
                sb.append("/");
            }
            sb.append(this.zzcek[i].asString());
        }
        return sb.toString();
    }

    public List<String> zzYR() {
        ArrayList arrayList = new ArrayList(size());
        Iterator<zzbrq> it = iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().asString());
        }
        return arrayList;
    }

    public zzbrq zzYS() {
        if (isEmpty()) {
            return null;
        }
        return this.zzcek[this.start];
    }

    public zzbph zzYT() {
        int i = this.start;
        if (!isEmpty()) {
            i++;
        }
        return new zzbph(this.zzcek, i, this.end);
    }

    public zzbph zzYU() {
        if (isEmpty()) {
            return null;
        }
        return new zzbph(this.zzcek, this.start, this.end - 1);
    }

    public zzbrq zzYV() {
        if (!isEmpty()) {
            return this.zzcek[this.end - 1];
        }
        return null;
    }

    public zzbph zza(zzbrq zzbrqVar) {
        int size = size();
        zzbrq[] zzbrqVarArr = new zzbrq[size + 1];
        System.arraycopy(this.zzcek, this.start, zzbrqVarArr, 0, size);
        zzbrqVarArr[size] = zzbrqVar;
        return new zzbph(zzbrqVarArr, 0, size + 1);
    }

    public zzbph zzh(zzbph zzbphVar) {
        int size = size() + zzbphVar.size();
        zzbrq[] zzbrqVarArr = new zzbrq[size];
        System.arraycopy(this.zzcek, this.start, zzbrqVarArr, 0, size());
        System.arraycopy(zzbphVar.zzcek, zzbphVar.start, zzbrqVarArr, size(), zzbphVar.size());
        return new zzbph(zzbrqVarArr, 0, size);
    }

    public boolean zzi(zzbph zzbphVar) {
        if (size() > zzbphVar.size()) {
            return false;
        }
        int i = this.start;
        int i2 = zzbphVar.start;
        while (i < this.end) {
            if (!this.zzcek[i].equals(zzbphVar.zzcek[i2])) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzj */
    public int compareTo(zzbph zzbphVar) {
        int i = this.start;
        int i2 = zzbphVar.start;
        while (i < this.end && i2 < zzbphVar.end) {
            int compareTo = this.zzcek[i].compareTo(zzbphVar.zzcek[i2]);
            if (compareTo != 0) {
                return compareTo;
            }
            i++;
            i2++;
        }
        if (i == this.end && i2 == zzbphVar.end) {
            return 0;
        }
        return i == this.end ? -1 : 1;
    }
}
