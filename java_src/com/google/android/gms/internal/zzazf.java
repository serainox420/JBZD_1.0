package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.adcolony.sdk.AdColonyUserMetadata;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.internal.zzacs;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.plus.model.people.Person;
import com.google.firebase.a.a;
import com.madsdk.AdView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzazf extends zzact implements Person {
    public static final Parcelable.Creator<zzazf> CREATOR = new zzazg();
    private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
    String zzE;
    String zzGV;
    String zzacX;
    final int zzaiI;
    String zzakb;
    List<zzg> zzbCA;
    int zzbCB;
    int zzbCC;
    String zzbCD;
    List<zzh> zzbCE;
    boolean zzbCF;
    final Set<Integer> zzbCm;
    String zzbCn;
    zza zzbCo;
    String zzbCp;
    String zzbCq;
    int zzbCr;
    zzb zzbCs;
    String zzbCt;
    zzc zzbCu;
    boolean zzbCv;
    zzd zzbCw;
    String zzbCx;
    int zzbCy;
    List<zzf> zzbCz;
    int zzzk;

    /* loaded from: classes2.dex */
    public static final class zza extends zzact implements Person.AgeRange {
        public static final Parcelable.Creator<zza> CREATOR = new zzazh();
        private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
        final int zzaiI;
        int zzbCG;
        int zzbCH;
        final Set<Integer> zzbCm;

        static {
            zzbCl.put("max", zzacs.zza.zzk("max", 2));
            zzbCl.put("min", zzacs.zza.zzk("min", 3));
        }

        public zza() {
            this.zzaiI = 1;
            this.zzbCm = new HashSet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(Set<Integer> set, int i, int i2, int i3) {
            this.zzbCm = set;
            this.zzaiI = i;
            this.zzbCG = i2;
            this.zzbCH = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zza zzaVar = (zza) obj;
            for (zzacs.zza<?, ?> zzaVar2 : zzbCl.values()) {
                if (zza(zzaVar2)) {
                    if (zzaVar.zza(zzaVar2) && zzb(zzaVar2).equals(zzaVar.zzb(zzaVar2))) {
                    }
                    return false;
                } else if (zzaVar.zza(zzaVar2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public int getMax() {
            return this.zzbCG;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public int getMin() {
            return this.zzbCH;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public boolean hasMax() {
            return this.zzbCm.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public boolean hasMin() {
            return this.zzbCm.contains(3);
        }

        public int hashCode() {
            int i = 0;
            Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    zzacs.zza<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzyx();
                    } else {
                        i = i2;
                    }
                } else {
                    return i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzazh.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.internal.zzacs
        /* renamed from: zzPj */
        public HashMap<String, zzacs.zza<?, ?>> zzyr() {
            return zzbCl;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzPl */
        public zza mo520freeze() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzacs
        protected boolean zza(zzacs.zza zzaVar) {
            return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
        }

        @Override // com.google.android.gms.internal.zzacs
        protected Object zzb(zzacs.zza zzaVar) {
            switch (zzaVar.zzyx()) {
                case 2:
                    return Integer.valueOf(this.zzbCG);
                case 3:
                    return Integer.valueOf(this.zzbCH);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzb extends zzact implements Person.Cover {
        public static final Parcelable.Creator<zzb> CREATOR = new zzazi();
        private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
        final int zzaiI;
        zza zzbCI;
        C0282zzb zzbCJ;
        int zzbCK;
        final Set<Integer> zzbCm;

        /* loaded from: classes2.dex */
        public static final class zza extends zzact implements Person.Cover.CoverInfo {
            public static final Parcelable.Creator<zza> CREATOR = new zzazj();
            private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
            final int zzaiI;
            int zzbCL;
            int zzbCM;
            final Set<Integer> zzbCm;

            static {
                zzbCl.put("leftImageOffset", zzacs.zza.zzk("leftImageOffset", 2));
                zzbCl.put("topImageOffset", zzacs.zza.zzk("topImageOffset", 3));
            }

            public zza() {
                this.zzaiI = 1;
                this.zzbCm = new HashSet();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public zza(Set<Integer> set, int i, int i2, int i3) {
                this.zzbCm = set;
                this.zzaiI = i;
                this.zzbCL = i2;
                this.zzbCM = i3;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof zza)) {
                    return false;
                }
                if (this == obj) {
                    return true;
                }
                zza zzaVar = (zza) obj;
                for (zzacs.zza<?, ?> zzaVar2 : zzbCl.values()) {
                    if (zza(zzaVar2)) {
                        if (zzaVar.zza(zzaVar2) && zzb(zzaVar2).equals(zzaVar.zzb(zzaVar2))) {
                        }
                        return false;
                    } else if (zzaVar.zza(zzaVar2)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public int getLeftImageOffset() {
                return this.zzbCL;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public int getTopImageOffset() {
                return this.zzbCM;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public boolean hasLeftImageOffset() {
                return this.zzbCm.contains(2);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public boolean hasTopImageOffset() {
                return this.zzbCm.contains(3);
            }

            public int hashCode() {
                int i = 0;
                Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
                while (true) {
                    int i2 = i;
                    if (it.hasNext()) {
                        zzacs.zza<?, ?> next = it.next();
                        if (zza(next)) {
                            i = zzb(next).hashCode() + i2 + next.zzyx();
                        } else {
                            i = i2;
                        }
                    } else {
                        return i2;
                    }
                }
            }

            @Override // com.google.android.gms.common.data.Freezable
            public boolean isDataValid() {
                return true;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                zzazj.zza(this, parcel, i);
            }

            @Override // com.google.android.gms.internal.zzacs
            /* renamed from: zzPj */
            public HashMap<String, zzacs.zza<?, ?>> zzyr() {
                return zzbCl;
            }

            @Override // com.google.android.gms.common.data.Freezable
            /* renamed from: zzPn */
            public zza mo520freeze() {
                return this;
            }

            @Override // com.google.android.gms.internal.zzacs
            protected boolean zza(zzacs.zza zzaVar) {
                return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
            }

            @Override // com.google.android.gms.internal.zzacs
            protected Object zzb(zzacs.zza zzaVar) {
                switch (zzaVar.zzyx()) {
                    case 2:
                        return Integer.valueOf(this.zzbCL);
                    case 3:
                        return Integer.valueOf(this.zzbCM);
                    default:
                        throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.zzazf$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0282zzb extends zzact implements Person.Cover.CoverPhoto {
            public static final Parcelable.Creator<C0282zzb> CREATOR = new zzazk();
            private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
            String zzE;
            final int zzaiI;
            final Set<Integer> zzbCm;
            int zzrC;
            int zzrD;

            static {
                zzbCl.put("height", zzacs.zza.zzk("height", 2));
                zzbCl.put("url", zzacs.zza.zzm("url", 3));
                zzbCl.put("width", zzacs.zza.zzk("width", 4));
            }

            public C0282zzb() {
                this.zzaiI = 1;
                this.zzbCm = new HashSet();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0282zzb(Set<Integer> set, int i, int i2, String str, int i3) {
                this.zzbCm = set;
                this.zzaiI = i;
                this.zzrD = i2;
                this.zzE = str;
                this.zzrC = i3;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof C0282zzb)) {
                    return false;
                }
                if (this == obj) {
                    return true;
                }
                C0282zzb c0282zzb = (C0282zzb) obj;
                for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
                    if (zza(zzaVar)) {
                        if (c0282zzb.zza(zzaVar) && zzb(zzaVar).equals(c0282zzb.zzb(zzaVar))) {
                        }
                        return false;
                    } else if (c0282zzb.zza(zzaVar)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public int getHeight() {
                return this.zzrD;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public String getUrl() {
                return this.zzE;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public int getWidth() {
                return this.zzrC;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasHeight() {
                return this.zzbCm.contains(2);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasUrl() {
                return this.zzbCm.contains(3);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasWidth() {
                return this.zzbCm.contains(4);
            }

            public int hashCode() {
                int i = 0;
                Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
                while (true) {
                    int i2 = i;
                    if (it.hasNext()) {
                        zzacs.zza<?, ?> next = it.next();
                        if (zza(next)) {
                            i = zzb(next).hashCode() + i2 + next.zzyx();
                        } else {
                            i = i2;
                        }
                    } else {
                        return i2;
                    }
                }
            }

            @Override // com.google.android.gms.common.data.Freezable
            public boolean isDataValid() {
                return true;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                zzazk.zza(this, parcel, i);
            }

            @Override // com.google.android.gms.internal.zzacs
            /* renamed from: zzPj */
            public HashMap<String, zzacs.zza<?, ?>> zzyr() {
                return zzbCl;
            }

            @Override // com.google.android.gms.common.data.Freezable
            /* renamed from: zzPo */
            public C0282zzb mo520freeze() {
                return this;
            }

            @Override // com.google.android.gms.internal.zzacs
            protected boolean zza(zzacs.zza zzaVar) {
                return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
            }

            @Override // com.google.android.gms.internal.zzacs
            protected Object zzb(zzacs.zza zzaVar) {
                switch (zzaVar.zzyx()) {
                    case 2:
                        return Integer.valueOf(this.zzrD);
                    case 3:
                        return this.zzE;
                    case 4:
                        return Integer.valueOf(this.zzrC);
                    default:
                        throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
                }
            }
        }

        static {
            zzbCl.put("coverInfo", zzacs.zza.zza("coverInfo", 2, zza.class));
            zzbCl.put("coverPhoto", zzacs.zza.zza("coverPhoto", 3, C0282zzb.class));
            zzbCl.put("layout", zzacs.zza.zza("layout", 4, new zzacp().zzj("banner", 0), false));
        }

        public zzb() {
            this.zzaiI = 1;
            this.zzbCm = new HashSet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(Set<Integer> set, int i, zza zzaVar, C0282zzb c0282zzb, int i2) {
            this.zzbCm = set;
            this.zzaiI = i;
            this.zzbCI = zzaVar;
            this.zzbCJ = c0282zzb;
            this.zzbCK = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzb zzbVar = (zzb) obj;
            for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
                if (zza(zzaVar)) {
                    if (zzbVar.zza(zzaVar) && zzb(zzaVar).equals(zzbVar.zzb(zzaVar))) {
                    }
                    return false;
                } else if (zzbVar.zza(zzaVar)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public Person.Cover.CoverInfo getCoverInfo() {
            return this.zzbCI;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public Person.Cover.CoverPhoto getCoverPhoto() {
            return this.zzbCJ;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public int getLayout() {
            return this.zzbCK;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasCoverInfo() {
            return this.zzbCm.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasCoverPhoto() {
            return this.zzbCm.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasLayout() {
            return this.zzbCm.contains(4);
        }

        public int hashCode() {
            int i = 0;
            Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    zzacs.zza<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzyx();
                    } else {
                        i = i2;
                    }
                } else {
                    return i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzazi.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.internal.zzacs
        /* renamed from: zzPj */
        public HashMap<String, zzacs.zza<?, ?>> zzyr() {
            return zzbCl;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzPm */
        public zzb mo520freeze() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzacs
        protected boolean zza(zzacs.zza zzaVar) {
            return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
        }

        @Override // com.google.android.gms.internal.zzacs
        protected Object zzb(zzacs.zza zzaVar) {
            switch (zzaVar.zzyx()) {
                case 2:
                    return this.zzbCI;
                case 3:
                    return this.zzbCJ;
                case 4:
                    return Integer.valueOf(this.zzbCK);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzc extends zzact implements Person.Image {
        public static final Parcelable.Creator<zzc> CREATOR = new zzazl();
        private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
        String zzE;
        final int zzaiI;
        final Set<Integer> zzbCm;

        static {
            zzbCl.put("url", zzacs.zza.zzm("url", 2));
        }

        public zzc() {
            this.zzaiI = 1;
            this.zzbCm = new HashSet();
        }

        public zzc(String str) {
            this.zzbCm = new HashSet();
            this.zzaiI = 1;
            this.zzE = str;
            this.zzbCm.add(2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzc(Set<Integer> set, int i, String str) {
            this.zzbCm = set;
            this.zzaiI = i;
            this.zzE = str;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc zzcVar = (zzc) obj;
            for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
                if (zza(zzaVar)) {
                    if (zzcVar.zza(zzaVar) && zzb(zzaVar).equals(zzcVar.zzb(zzaVar))) {
                    }
                    return false;
                } else if (zzcVar.zza(zzaVar)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Image
        public String getUrl() {
            return this.zzE;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Image
        public boolean hasUrl() {
            return this.zzbCm.contains(2);
        }

        public int hashCode() {
            int i = 0;
            Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    zzacs.zza<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzyx();
                    } else {
                        i = i2;
                    }
                } else {
                    return i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzazl.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.internal.zzacs
        /* renamed from: zzPj */
        public HashMap<String, zzacs.zza<?, ?>> zzyr() {
            return zzbCl;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzPp */
        public zzc mo520freeze() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzacs
        protected boolean zza(zzacs.zza zzaVar) {
            return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
        }

        @Override // com.google.android.gms.internal.zzacs
        protected Object zzb(zzacs.zza zzaVar) {
            switch (zzaVar.zzyx()) {
                case 2:
                    return this.zzE;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzd extends zzact implements Person.Name {
        public static final Parcelable.Creator<zzd> CREATOR = new zzazm();
        private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
        final int zzaiI;
        String zzajl;
        String zzajm;
        String zzbCN;
        String zzbCO;
        String zzbCP;
        String zzbCQ;
        final Set<Integer> zzbCm;

        static {
            zzbCl.put("familyName", zzacs.zza.zzm("familyName", 2));
            zzbCl.put("formatted", zzacs.zza.zzm("formatted", 3));
            zzbCl.put("givenName", zzacs.zza.zzm("givenName", 4));
            zzbCl.put("honorificPrefix", zzacs.zza.zzm("honorificPrefix", 5));
            zzbCl.put("honorificSuffix", zzacs.zza.zzm("honorificSuffix", 6));
            zzbCl.put("middleName", zzacs.zza.zzm("middleName", 7));
        }

        public zzd() {
            this.zzaiI = 1;
            this.zzbCm = new HashSet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzd(Set<Integer> set, int i, String str, String str2, String str3, String str4, String str5, String str6) {
            this.zzbCm = set;
            this.zzaiI = i;
            this.zzajm = str;
            this.zzbCN = str2;
            this.zzajl = str3;
            this.zzbCO = str4;
            this.zzbCP = str5;
            this.zzbCQ = str6;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzd)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzd zzdVar = (zzd) obj;
            for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
                if (zza(zzaVar)) {
                    if (zzdVar.zza(zzaVar) && zzb(zzaVar).equals(zzdVar.zzb(zzaVar))) {
                    }
                    return false;
                } else if (zzdVar.zza(zzaVar)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getFamilyName() {
            return this.zzajm;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getFormatted() {
            return this.zzbCN;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getGivenName() {
            return this.zzajl;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getHonorificPrefix() {
            return this.zzbCO;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getHonorificSuffix() {
            return this.zzbCP;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getMiddleName() {
            return this.zzbCQ;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasFamilyName() {
            return this.zzbCm.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasFormatted() {
            return this.zzbCm.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasGivenName() {
            return this.zzbCm.contains(4);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasHonorificPrefix() {
            return this.zzbCm.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasHonorificSuffix() {
            return this.zzbCm.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasMiddleName() {
            return this.zzbCm.contains(7);
        }

        public int hashCode() {
            int i = 0;
            Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    zzacs.zza<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzyx();
                    } else {
                        i = i2;
                    }
                } else {
                    return i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzazm.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.internal.zzacs
        /* renamed from: zzPj */
        public HashMap<String, zzacs.zza<?, ?>> zzyr() {
            return zzbCl;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzPq */
        public zzd mo520freeze() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzacs
        protected boolean zza(zzacs.zza zzaVar) {
            return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
        }

        @Override // com.google.android.gms.internal.zzacs
        protected Object zzb(zzacs.zza zzaVar) {
            switch (zzaVar.zzyx()) {
                case 2:
                    return this.zzajm;
                case 3:
                    return this.zzbCN;
                case 4:
                    return this.zzajl;
                case 5:
                    return this.zzbCO;
                case 6:
                    return this.zzbCP;
                case 7:
                    return this.zzbCQ;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class zze {
        public static int zzgs(String str) {
            if (str.equals("person")) {
                return 0;
            }
            if (str.equals("page")) {
                return 1;
            }
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown objectType string: ".concat(valueOf) : new String("Unknown objectType string: "));
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzf extends zzact implements Person.Organizations {
        public static final Parcelable.Creator<zzf> CREATOR = new zzazn();
        private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
        String mName;
        String zzade;
        final int zzaiI;
        int zzakD;
        String zzamJ;
        String zzbCR;
        String zzbCS;
        String zzbCT;
        boolean zzbCU;
        String zzbCV;
        final Set<Integer> zzbCm;

        static {
            zzbCl.put("department", zzacs.zza.zzm("department", 2));
            zzbCl.put("description", zzacs.zza.zzm("description", 3));
            zzbCl.put("endDate", zzacs.zza.zzm("endDate", 4));
            zzbCl.put(a.b.LOCATION, zzacs.zza.zzm(a.b.LOCATION, 5));
            zzbCl.put("name", zzacs.zza.zzm("name", 6));
            zzbCl.put("primary", zzacs.zza.zzl("primary", 7));
            zzbCl.put("startDate", zzacs.zza.zzm("startDate", 8));
            zzbCl.put("title", zzacs.zza.zzm("title", 9));
            zzbCl.put("type", zzacs.zza.zza("type", 10, new zzacp().zzj("work", 0).zzj("school", 1), false));
        }

        public zzf() {
            this.zzaiI = 1;
            this.zzbCm = new HashSet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzf(Set<Integer> set, int i, String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i2) {
            this.zzbCm = set;
            this.zzaiI = i;
            this.zzbCR = str;
            this.zzade = str2;
            this.zzbCS = str3;
            this.zzbCT = str4;
            this.mName = str5;
            this.zzbCU = z;
            this.zzbCV = str6;
            this.zzamJ = str7;
            this.zzakD = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzf)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzf zzfVar = (zzf) obj;
            for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
                if (zza(zzaVar)) {
                    if (zzfVar.zza(zzaVar) && zzb(zzaVar).equals(zzfVar.zzb(zzaVar))) {
                    }
                    return false;
                } else if (zzfVar.zza(zzaVar)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getDepartment() {
            return this.zzbCR;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getDescription() {
            return this.zzade;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getEndDate() {
            return this.zzbCS;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getLocation() {
            return this.zzbCT;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getName() {
            return this.mName;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getStartDate() {
            return this.zzbCV;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getTitle() {
            return this.zzamJ;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public int getType() {
            return this.zzakD;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasDepartment() {
            return this.zzbCm.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasDescription() {
            return this.zzbCm.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasEndDate() {
            return this.zzbCm.contains(4);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasLocation() {
            return this.zzbCm.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasName() {
            return this.zzbCm.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasPrimary() {
            return this.zzbCm.contains(7);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasStartDate() {
            return this.zzbCm.contains(8);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasTitle() {
            return this.zzbCm.contains(9);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasType() {
            return this.zzbCm.contains(10);
        }

        public int hashCode() {
            int i = 0;
            Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    zzacs.zza<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzyx();
                    } else {
                        i = i2;
                    }
                } else {
                    return i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean isPrimary() {
            return this.zzbCU;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzazn.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.internal.zzacs
        /* renamed from: zzPj */
        public HashMap<String, zzacs.zza<?, ?>> zzyr() {
            return zzbCl;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzPr */
        public zzf mo520freeze() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzacs
        protected boolean zza(zzacs.zza zzaVar) {
            return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
        }

        @Override // com.google.android.gms.internal.zzacs
        protected Object zzb(zzacs.zza zzaVar) {
            switch (zzaVar.zzyx()) {
                case 2:
                    return this.zzbCR;
                case 3:
                    return this.zzade;
                case 4:
                    return this.zzbCS;
                case 5:
                    return this.zzbCT;
                case 6:
                    return this.mName;
                case 7:
                    return Boolean.valueOf(this.zzbCU);
                case 8:
                    return this.zzbCV;
                case 9:
                    return this.zzamJ;
                case 10:
                    return Integer.valueOf(this.zzakD);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class zzg extends zzact implements Person.PlacesLived {
        public static final Parcelable.Creator<zzg> CREATOR = new zzazo();
        private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
        String mValue;
        final int zzaiI;
        boolean zzbCU;
        final Set<Integer> zzbCm;

        static {
            zzbCl.put("primary", zzacs.zza.zzl("primary", 2));
            zzbCl.put("value", zzacs.zza.zzm("value", 3));
        }

        public zzg() {
            this.zzaiI = 1;
            this.zzbCm = new HashSet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzg(Set<Integer> set, int i, boolean z, String str) {
            this.zzbCm = set;
            this.zzaiI = i;
            this.zzbCU = z;
            this.mValue = str;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzg)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzg zzgVar = (zzg) obj;
            for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
                if (zza(zzaVar)) {
                    if (zzgVar.zza(zzaVar) && zzb(zzaVar).equals(zzgVar.zzb(zzaVar))) {
                    }
                    return false;
                } else if (zzgVar.zza(zzaVar)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public String getValue() {
            return this.mValue;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean hasPrimary() {
            return this.zzbCm.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean hasValue() {
            return this.zzbCm.contains(3);
        }

        public int hashCode() {
            int i = 0;
            Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    zzacs.zza<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzyx();
                    } else {
                        i = i2;
                    }
                } else {
                    return i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean isPrimary() {
            return this.zzbCU;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzazo.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.internal.zzacs
        /* renamed from: zzPj */
        public HashMap<String, zzacs.zza<?, ?>> zzyr() {
            return zzbCl;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzPs */
        public zzg mo520freeze() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzacs
        protected boolean zza(zzacs.zza zzaVar) {
            return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
        }

        @Override // com.google.android.gms.internal.zzacs
        protected Object zzb(zzacs.zza zzaVar) {
            switch (zzaVar.zzyx()) {
                case 2:
                    return Boolean.valueOf(this.zzbCU);
                case 3:
                    return this.mValue;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class zzh extends zzact implements Person.Urls {
        public static final Parcelable.Creator<zzh> CREATOR = new zzazp();
        private static final HashMap<String, zzacs.zza<?, ?>> zzbCl = new HashMap<>();
        String mValue;
        String zzadc;
        final int zzaiI;
        int zzakD;
        private final int zzbCW;
        final Set<Integer> zzbCm;

        static {
            zzbCl.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, zzacs.zza.zzm(PlusShare.KEY_CALL_TO_ACTION_LABEL, 5));
            zzbCl.put("type", zzacs.zza.zza("type", 6, new zzacp().zzj("home", 0).zzj("work", 1).zzj("blog", 2).zzj(Scopes.PROFILE, 3).zzj("other", 4).zzj("otherProfile", 5).zzj("contributor", 6).zzj("website", 7), false));
            zzbCl.put("value", zzacs.zza.zzm("value", 4));
        }

        public zzh() {
            this.zzbCW = 4;
            this.zzaiI = 1;
            this.zzbCm = new HashSet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzh(Set<Integer> set, int i, String str, int i2, String str2, int i3) {
            this.zzbCW = 4;
            this.zzbCm = set;
            this.zzaiI = i;
            this.zzadc = str;
            this.zzakD = i2;
            this.mValue = str2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzh)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzh zzhVar = (zzh) obj;
            for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
                if (zza(zzaVar)) {
                    if (zzhVar.zza(zzaVar) && zzb(zzaVar).equals(zzhVar.zzb(zzaVar))) {
                    }
                    return false;
                } else if (zzhVar.zza(zzaVar)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public String getLabel() {
            return this.zzadc;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public int getType() {
            return this.zzakD;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public String getValue() {
            return this.mValue;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasLabel() {
            return this.zzbCm.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasType() {
            return this.zzbCm.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasValue() {
            return this.zzbCm.contains(4);
        }

        public int hashCode() {
            int i = 0;
            Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    zzacs.zza<?, ?> next = it.next();
                    if (zza(next)) {
                        i = zzb(next).hashCode() + i2 + next.zzyx();
                    } else {
                        i = i2;
                    }
                } else {
                    return i2;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzazp.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.internal.zzacs
        /* renamed from: zzPj */
        public HashMap<String, zzacs.zza<?, ?>> zzyr() {
            return zzbCl;
        }

        @Deprecated
        public int zzPt() {
            return 4;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* renamed from: zzPu */
        public zzh mo520freeze() {
            return this;
        }

        @Override // com.google.android.gms.internal.zzacs
        protected boolean zza(zzacs.zza zzaVar) {
            return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
        }

        @Override // com.google.android.gms.internal.zzacs
        protected Object zzb(zzacs.zza zzaVar) {
            switch (zzaVar.zzyx()) {
                case 4:
                    return this.mValue;
                case 5:
                    return this.zzadc;
                case 6:
                    return Integer.valueOf(this.zzakD);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            }
        }
    }

    static {
        zzbCl.put("aboutMe", zzacs.zza.zzm("aboutMe", 2));
        zzbCl.put("ageRange", zzacs.zza.zza("ageRange", 3, zza.class));
        zzbCl.put("birthday", zzacs.zza.zzm("birthday", 4));
        zzbCl.put("braggingRights", zzacs.zza.zzm("braggingRights", 5));
        zzbCl.put("circledByCount", zzacs.zza.zzk("circledByCount", 6));
        zzbCl.put("cover", zzacs.zza.zza("cover", 7, zzb.class));
        zzbCl.put("currentLocation", zzacs.zza.zzm("currentLocation", 8));
        zzbCl.put("displayName", zzacs.zza.zzm("displayName", 9));
        zzbCl.put("gender", zzacs.zza.zza("gender", 12, new zzacp().zzj(AdColonyUserMetadata.USER_MALE, 0).zzj(AdColonyUserMetadata.USER_FEMALE, 1).zzj("other", 2), false));
        zzbCl.put("id", zzacs.zza.zzm("id", 14));
        zzbCl.put(AdView.DEFAULT_IMAGE_NAME, zzacs.zza.zza(AdView.DEFAULT_IMAGE_NAME, 15, zzc.class));
        zzbCl.put("isPlusUser", zzacs.zza.zzl("isPlusUser", 16));
        zzbCl.put("language", zzacs.zza.zzm("language", 18));
        zzbCl.put("name", zzacs.zza.zza("name", 19, zzd.class));
        zzbCl.put("nickname", zzacs.zza.zzm("nickname", 20));
        zzbCl.put("objectType", zzacs.zza.zza("objectType", 21, new zzacp().zzj("person", 0).zzj("page", 1), false));
        zzbCl.put("organizations", zzacs.zza.zzb("organizations", 22, zzf.class));
        zzbCl.put("placesLived", zzacs.zza.zzb("placesLived", 23, zzg.class));
        zzbCl.put("plusOneCount", zzacs.zza.zzk("plusOneCount", 24));
        zzbCl.put("relationshipStatus", zzacs.zza.zza("relationshipStatus", 25, new zzacp().zzj(AdColonyUserMetadata.USER_SINGLE, 0).zzj("in_a_relationship", 1).zzj("engaged", 2).zzj(AdColonyUserMetadata.USER_MARRIED, 3).zzj("its_complicated", 4).zzj("open_relationship", 5).zzj("widowed", 6).zzj("in_domestic_partnership", 7).zzj("in_civil_union", 8), false));
        zzbCl.put("tagline", zzacs.zza.zzm("tagline", 26));
        zzbCl.put("url", zzacs.zza.zzm("url", 27));
        zzbCl.put("urls", zzacs.zza.zzb("urls", 28, zzh.class));
        zzbCl.put("verified", zzacs.zza.zzl("verified", 29));
    }

    public zzazf() {
        this.zzaiI = 1;
        this.zzbCm = new HashSet();
    }

    public zzazf(String str, String str2, zzc zzcVar, int i, String str3) {
        this.zzaiI = 1;
        this.zzbCm = new HashSet();
        this.zzakb = str;
        this.zzbCm.add(9);
        this.zzGV = str2;
        this.zzbCm.add(14);
        this.zzbCu = zzcVar;
        this.zzbCm.add(15);
        this.zzbCy = i;
        this.zzbCm.add(21);
        this.zzE = str3;
        this.zzbCm.add(27);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzazf(Set<Integer> set, int i, String str, zza zzaVar, String str2, String str3, int i2, zzb zzbVar, String str4, String str5, int i3, String str6, zzc zzcVar, boolean z, String str7, zzd zzdVar, String str8, int i4, List<zzf> list, List<zzg> list2, int i5, int i6, String str9, String str10, List<zzh> list3, boolean z2) {
        this.zzbCm = set;
        this.zzaiI = i;
        this.zzbCn = str;
        this.zzbCo = zzaVar;
        this.zzbCp = str2;
        this.zzbCq = str3;
        this.zzbCr = i2;
        this.zzbCs = zzbVar;
        this.zzbCt = str4;
        this.zzakb = str5;
        this.zzzk = i3;
        this.zzGV = str6;
        this.zzbCu = zzcVar;
        this.zzbCv = z;
        this.zzacX = str7;
        this.zzbCw = zzdVar;
        this.zzbCx = str8;
        this.zzbCy = i4;
        this.zzbCz = list;
        this.zzbCA = list2;
        this.zzbCB = i5;
        this.zzbCC = i6;
        this.zzbCD = str9;
        this.zzE = str10;
        this.zzbCE = list3;
        this.zzbCF = z2;
    }

    public static zzazf zzG(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        zzazf createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzazf)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzazf zzazfVar = (zzazf) obj;
        for (zzacs.zza<?, ?> zzaVar : zzbCl.values()) {
            if (zza(zzaVar)) {
                if (zzazfVar.zza(zzaVar) && zzb(zzaVar).equals(zzazfVar.zzb(zzaVar))) {
                }
                return false;
            } else if (zzazfVar.zza(zzaVar)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getAboutMe() {
        return this.zzbCn;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.AgeRange getAgeRange() {
        return this.zzbCo;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBirthday() {
        return this.zzbCp;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBraggingRights() {
        return this.zzbCq;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getCircledByCount() {
        return this.zzbCr;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Cover getCover() {
        return this.zzbCs;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getCurrentLocation() {
        return this.zzbCt;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getDisplayName() {
        return this.zzakb;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getGender() {
        return this.zzzk;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getId() {
        return this.zzGV;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Image getImage() {
        return this.zzbCu;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getLanguage() {
        return this.zzacX;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Name getName() {
        return this.zzbCw;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getNickname() {
        return this.zzbCx;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getObjectType() {
        return this.zzbCy;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.Organizations> getOrganizations() {
        return (ArrayList) this.zzbCz;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.PlacesLived> getPlacesLived() {
        return (ArrayList) this.zzbCA;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getPlusOneCount() {
        return this.zzbCB;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getRelationshipStatus() {
        return this.zzbCC;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getTagline() {
        return this.zzbCD;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getUrl() {
        return this.zzE;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.Urls> getUrls() {
        return (ArrayList) this.zzbCE;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAboutMe() {
        return this.zzbCm.contains(2);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAgeRange() {
        return this.zzbCm.contains(3);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBirthday() {
        return this.zzbCm.contains(4);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBraggingRights() {
        return this.zzbCm.contains(5);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCircledByCount() {
        return this.zzbCm.contains(6);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCover() {
        return this.zzbCm.contains(7);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCurrentLocation() {
        return this.zzbCm.contains(8);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasDisplayName() {
        return this.zzbCm.contains(9);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasGender() {
        return this.zzbCm.contains(12);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasId() {
        return this.zzbCm.contains(14);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasImage() {
        return this.zzbCm.contains(15);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasIsPlusUser() {
        return this.zzbCm.contains(16);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasLanguage() {
        return this.zzbCm.contains(18);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasName() {
        return this.zzbCm.contains(19);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasNickname() {
        return this.zzbCm.contains(20);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasObjectType() {
        return this.zzbCm.contains(21);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasOrganizations() {
        return this.zzbCm.contains(22);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlacesLived() {
        return this.zzbCm.contains(23);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlusOneCount() {
        return this.zzbCm.contains(24);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasRelationshipStatus() {
        return this.zzbCm.contains(25);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasTagline() {
        return this.zzbCm.contains(26);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrl() {
        return this.zzbCm.contains(27);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrls() {
        return this.zzbCm.contains(28);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasVerified() {
        return this.zzbCm.contains(29);
    }

    public int hashCode() {
        int i = 0;
        Iterator<zzacs.zza<?, ?>> it = zzbCl.values().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                zzacs.zza<?, ?> next = it.next();
                if (zza(next)) {
                    i = zzb(next).hashCode() + i2 + next.zzyx();
                } else {
                    i = i2;
                }
            } else {
                return i2;
            }
        }
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isPlusUser() {
        return this.zzbCv;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isVerified() {
        return this.zzbCF;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzazg.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.internal.zzacs
    /* renamed from: zzPj */
    public HashMap<String, zzacs.zza<?, ?>> zzyr() {
        return zzbCl;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzPk */
    public zzazf mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzacs
    protected boolean zza(zzacs.zza zzaVar) {
        return this.zzbCm.contains(Integer.valueOf(zzaVar.zzyx()));
    }

    @Override // com.google.android.gms.internal.zzacs
    protected Object zzb(zzacs.zza zzaVar) {
        switch (zzaVar.zzyx()) {
            case 2:
                return this.zzbCn;
            case 3:
                return this.zzbCo;
            case 4:
                return this.zzbCp;
            case 5:
                return this.zzbCq;
            case 6:
                return Integer.valueOf(this.zzbCr);
            case 7:
                return this.zzbCs;
            case 8:
                return this.zzbCt;
            case 9:
                return this.zzakb;
            case 10:
            case 11:
            case 13:
            case 17:
            default:
                throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(zzaVar.zzyx()).toString());
            case 12:
                return Integer.valueOf(this.zzzk);
            case 14:
                return this.zzGV;
            case 15:
                return this.zzbCu;
            case 16:
                return Boolean.valueOf(this.zzbCv);
            case 18:
                return this.zzacX;
            case 19:
                return this.zzbCw;
            case 20:
                return this.zzbCx;
            case 21:
                return Integer.valueOf(this.zzbCy);
            case 22:
                return this.zzbCz;
            case 23:
                return this.zzbCA;
            case 24:
                return Integer.valueOf(this.zzbCB);
            case 25:
                return Integer.valueOf(this.zzbCC);
            case 26:
                return this.zzbCD;
            case 27:
                return this.zzE;
            case 28:
                return this.zzbCE;
            case 29:
                return Boolean.valueOf(this.zzbCF);
        }
    }
}
