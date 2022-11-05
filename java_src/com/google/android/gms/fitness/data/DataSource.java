package com.google.android.gms.fitness.data;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
/* loaded from: classes2.dex */
public class DataSource extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int DATA_QUALITY_BLOOD_GLUCOSE_ISO151972003 = 8;
    public static final int DATA_QUALITY_BLOOD_GLUCOSE_ISO151972013 = 9;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_AAMI = 3;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_A_A = 4;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_A_B = 5;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_B_A = 6;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_BHS_B_B = 7;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_ESH2002 = 1;
    public static final int DATA_QUALITY_BLOOD_PRESSURE_ESH2010 = 2;
    public static final String EXTRA_DATA_SOURCE = "vnd.google.fitness.data_source";
    public static final int TYPE_DERIVED = 1;
    public static final int TYPE_RAW = 0;
    private final String name;
    private final int type;
    private final int versionCode;
    private final Device zzaSK;
    private final zzb zzaSL;
    private final String zzaSM;
    private final int[] zzaSN;
    private final String zzaSO;
    private final DataType zzaSg;
    private static final int[] zzaSJ = new int[0];
    public static final Parcelable.Creator<DataSource> CREATOR = new zzj();

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String name;
        private Device zzaSK;
        private zzb zzaSL;
        private int[] zzaSN;
        private DataType zzaSg;
        private int type = -1;
        private String zzaSM = "";

        public DataSource build() {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zza(this.zzaSg != null, "Must set data type");
            if (this.type < 0) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Must set data source type");
            return new DataSource(this);
        }

        public Builder setAppPackageName(Context context) {
            return setAppPackageName(context.getPackageName());
        }

        public Builder setAppPackageName(String str) {
            this.zzaSL = zzb.zzdV(str);
            return this;
        }

        public Builder setDataQualityStandards(int... iArr) {
            this.zzaSN = iArr;
            return this;
        }

        public Builder setDataType(DataType dataType) {
            this.zzaSg = dataType;
            return this;
        }

        public Builder setDevice(Device device) {
            this.zzaSK = device;
            return this;
        }

        public Builder setName(String str) {
            this.name = str;
            return this;
        }

        public Builder setStreamName(String str) {
            com.google.android.gms.common.internal.zzac.zzb(str != null, "Must specify a valid stream name");
            this.zzaSM = str;
            return this;
        }

        public Builder setType(int i) {
            this.type = i;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataSource(int i, DataType dataType, String str, int i2, Device device, zzb zzbVar, String str2, int[] iArr) {
        this.versionCode = i;
        this.zzaSg = dataType;
        this.type = i2;
        this.name = str;
        this.zzaSK = device;
        this.zzaSL = zzbVar;
        this.zzaSM = str2;
        this.zzaSO = zzCj();
        this.zzaSN = iArr == null ? zzaSJ : iArr;
    }

    private DataSource(Builder builder) {
        this.versionCode = 3;
        this.zzaSg = builder.zzaSg;
        this.type = builder.type;
        this.name = builder.name;
        this.zzaSK = builder.zzaSK;
        this.zzaSL = builder.zzaSL;
        this.zzaSM = builder.zzaSM;
        this.zzaSO = zzCj();
        this.zzaSN = builder.zzaSN;
    }

    public static DataSource extract(Intent intent) {
        if (intent == null) {
            return null;
        }
        return (DataSource) com.google.android.gms.common.internal.safeparcel.zzd.zza(intent, EXTRA_DATA_SOURCE, CREATOR);
    }

    private String getTypeString() {
        switch (this.type) {
            case 0:
                return "raw";
            case 1:
                return "derived";
            case 2:
                return "cleaned";
            case 3:
                return "converted";
            default:
                return "derived";
        }
    }

    private String zzCj() {
        StringBuilder sb = new StringBuilder();
        sb.append(getTypeString());
        sb.append(":").append(this.zzaSg.getName());
        if (this.zzaSL != null) {
            sb.append(":").append(this.zzaSL.getPackageName());
        }
        if (this.zzaSK != null) {
            sb.append(":").append(this.zzaSK.getStreamIdentifier());
        }
        if (this.zzaSM != null) {
            sb.append(":").append(this.zzaSM);
        }
        return sb.toString();
    }

    private boolean zza(DataSource dataSource) {
        return this.zzaSO.equals(dataSource.zzaSO);
    }

    private static String zzgC(int i) {
        switch (i) {
            case 0:
                return "r";
            case 1:
                return PhoenixConstants.DEBUG_PARAM;
            case 2:
                return "c";
            case 3:
                return "v";
            default:
                return "?";
        }
    }

    public static String zzgD(int i) {
        switch (i) {
            case 1:
                return "blood_pressure_esh2002";
            case 2:
                return "blood_pressure_esh2010";
            case 3:
                return "blood_pressure_aami";
            case 4:
                return "blood_pressure_bhs_a_a";
            case 5:
                return "blood_pressure_bhs_a_b";
            case 6:
                return "blood_pressure_bhs_b_a";
            case 7:
                return "blood_pressure_bhs_b_b";
            case 8:
                return "blood_glucose_iso151972003";
            case 9:
                return "blood_glucose_iso151972013";
            default:
                return "unknown";
        }
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof DataSource) && zza((DataSource) obj));
    }

    public String getAppPackageName() {
        if (this.zzaSL == null) {
            return null;
        }
        return this.zzaSL.getPackageName();
    }

    public int[] getDataQualityStandards() {
        return this.zzaSN;
    }

    public DataType getDataType() {
        return this.zzaSg;
    }

    public Device getDevice() {
        return this.zzaSK;
    }

    public String getName() {
        return this.name;
    }

    public String getStreamIdentifier() {
        return this.zzaSO;
    }

    public String getStreamName() {
        return this.zzaSM;
    }

    public int getType() {
        return this.type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return this.zzaSO.hashCode();
    }

    public String toDebugString() {
        String concat;
        String str;
        String str2;
        String valueOf = String.valueOf(zzgC(this.type));
        String valueOf2 = String.valueOf(this.zzaSg.zzCk());
        if (this.zzaSL == null) {
            concat = "";
        } else if (this.zzaSL.equals(zzb.zzaSo)) {
            concat = ":gms";
        } else {
            String valueOf3 = String.valueOf(this.zzaSL.getPackageName());
            concat = valueOf3.length() != 0 ? ":".concat(valueOf3) : new String(":");
        }
        if (this.zzaSK != null) {
            String valueOf4 = String.valueOf(this.zzaSK.getModel());
            String valueOf5 = String.valueOf(this.zzaSK.getUid());
            str = new StringBuilder(String.valueOf(valueOf4).length() + 2 + String.valueOf(valueOf5).length()).append(":").append(valueOf4).append(":").append(valueOf5).toString();
        } else {
            str = "";
        }
        if (this.zzaSM != null) {
            String valueOf6 = String.valueOf(this.zzaSM);
            str2 = valueOf6.length() != 0 ? ":".concat(valueOf6) : new String(":");
        } else {
            str2 = "";
        }
        return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length() + String.valueOf(concat).length() + String.valueOf(str).length() + String.valueOf(str2).length()).append(valueOf).append(":").append(valueOf2).append(concat).append(str).append(str2).toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DataSource{");
        sb.append(getTypeString());
        if (this.name != null) {
            sb.append(":").append(this.name);
        }
        if (this.zzaSL != null) {
            sb.append(":").append(this.zzaSL);
        }
        if (this.zzaSK != null) {
            sb.append(":").append(this.zzaSK);
        }
        if (this.zzaSM != null) {
            sb.append(":").append(this.zzaSM);
        }
        sb.append(":").append(this.zzaSg);
        return sb.append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public zzb zzCi() {
        return this.zzaSL;
    }
}
