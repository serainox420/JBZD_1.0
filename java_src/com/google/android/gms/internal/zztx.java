package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;
/* loaded from: classes2.dex */
public class zztx {

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzty();
        public final Account zzahr;
        public final boolean zzahs;
        public final boolean zzaht;
        public final boolean zzahu;
        public final String zzahv;

        public zza() {
            this(null, false, false, false, null);
        }

        public zza(Account account, boolean z, boolean z2, boolean z3, String str) {
            this.zzahr = account;
            this.zzahs = z;
            this.zzaht = z2;
            this.zzahu = z3;
            this.zzahv = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzty.zza(this, parcel, i);
        }
    }

    /* loaded from: classes.dex */
    public static class zzb extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
        public static final Parcelable.Creator<zzb> CREATOR = new zztz();
        public Status zzahw;
        public List<zzud> zzahx;
        @Deprecated
        public String[] zzahy;

        public zzb() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(Status status, List<zzud> list, String[] strArr) {
            this.zzahw = status;
            this.zzahx = list;
            this.zzahy = strArr;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzahw;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zztz.zza(this, parcel, i);
        }
    }
}
