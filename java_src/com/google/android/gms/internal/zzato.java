package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzato extends com.google.android.gms.common.internal.safeparcel.zza implements Iterable<String> {
    public static final Parcelable.Creator<zzato> CREATOR = new zzatp();
    private final Bundle zzbrD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzato(Bundle bundle) {
        this.zzbrD = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object get(String str) {
        return this.zzbrD.get(str);
    }

    @Override // java.lang.Iterable
    public Iterator<String> iterator() {
        return new Iterator<String>() { // from class: com.google.android.gms.internal.zzato.1
            Iterator<String> zzbrE;

            {
                this.zzbrE = zzato.this.zzbrD.keySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.zzbrE.hasNext();
            }

            @Override // java.util.Iterator
            public String next() {
                return this.zzbrE.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Remove not supported");
            }
        };
    }

    public int size() {
        return this.zzbrD.size();
    }

    public String toString() {
        return this.zzbrD.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzatp.zza(this, parcel, i);
    }

    public Bundle zzLW() {
        return new Bundle(this.zzbrD);
    }
}
