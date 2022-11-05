package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.GraphRequest;
import com.google.android.gms.fitness.data.Field;
import com.google.android.gms.internal.zzaoo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class DataTypeCreateRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<DataTypeCreateRequest> CREATOR = new zzm();
    private final String mName;
    private final List<Field> zzaVS;
    private final zzaoo zzaVT;
    private final int zzaiI;

    /* loaded from: classes2.dex */
    public static class Builder {
        private String mName;
        private List<Field> zzaVS = new ArrayList();

        public Builder addField(Field field) {
            if (!this.zzaVS.contains(field)) {
                this.zzaVS.add(field);
            }
            return this;
        }

        public Builder addField(String str, int i) {
            com.google.android.gms.common.internal.zzac.zzb(str != null && !str.isEmpty(), "Invalid name specified");
            return addField(Field.zzn(str, i));
        }

        public DataTypeCreateRequest build() {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zza(this.mName != null, "Must set the name");
            if (this.zzaVS.isEmpty()) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Must specify the data fields");
            return new DataTypeCreateRequest(this);
        }

        public Builder setName(String str) {
            this.mName = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataTypeCreateRequest(int i, String str, List<Field> list, IBinder iBinder) {
        this.zzaiI = i;
        this.mName = str;
        this.zzaVS = Collections.unmodifiableList(list);
        this.zzaVT = zzaoo.zza.zzcs(iBinder);
    }

    private DataTypeCreateRequest(Builder builder) {
        this(builder.mName, builder.zzaVS, null);
    }

    public DataTypeCreateRequest(DataTypeCreateRequest dataTypeCreateRequest, zzaoo zzaooVar) {
        this(dataTypeCreateRequest.mName, dataTypeCreateRequest.zzaVS, zzaooVar);
    }

    public DataTypeCreateRequest(String str, List<Field> list, zzaoo zzaooVar) {
        this.zzaiI = 3;
        this.mName = str;
        this.zzaVS = Collections.unmodifiableList(list);
        this.zzaVT = zzaooVar;
    }

    private boolean zzb(DataTypeCreateRequest dataTypeCreateRequest) {
        return com.google.android.gms.common.internal.zzaa.equal(this.mName, dataTypeCreateRequest.mName) && com.google.android.gms.common.internal.zzaa.equal(this.zzaVS, dataTypeCreateRequest.zzaVS);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof DataTypeCreateRequest) && zzb((DataTypeCreateRequest) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVT == null) {
            return null;
        }
        return this.zzaVT.asBinder();
    }

    public List<Field> getFields() {
        return this.zzaVS;
    }

    public String getName() {
        return this.mName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.mName, this.zzaVS);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("name", this.mName).zzg(GraphRequest.FIELDS_PARAM, this.zzaVS).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
