package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzuz;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class Credential extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new zza();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    private final String mName;
    private final String zzGV;
    final int zzaiI;
    private final Uri zzajf;
    private final List<IdToken> zzajg;
    private final String zzajh;
    private final String zzaji;
    private final String zzajj;
    private final String zzajk;
    private final String zzajl;
    private final String zzajm;

    /* loaded from: classes2.dex */
    public static class Builder {
        private String mName;
        private final String zzGV;
        private Uri zzajf;
        private List<IdToken> zzajg;
        private String zzajh;
        private String zzaji;
        private String zzajj;
        private String zzajk;
        private String zzajl;
        private String zzajm;

        public Builder(Credential credential) {
            this.zzGV = credential.zzGV;
            this.mName = credential.mName;
            this.zzajf = credential.zzajf;
            this.zzajg = credential.zzajg;
            this.zzajh = credential.zzajh;
            this.zzaji = credential.zzaji;
            this.zzajj = credential.zzajj;
            this.zzajk = credential.zzajk;
            this.zzajl = credential.zzajl;
            this.zzajm = credential.zzajm;
        }

        public Builder(String str) {
            this.zzGV = str;
        }

        public Credential build() {
            return new Credential(4, this.zzGV, this.mName, this.zzajf, this.zzajg, this.zzajh, this.zzaji, this.zzajj, this.zzajk, this.zzajl, this.zzajm);
        }

        public Builder setAccountType(String str) {
            this.zzaji = str;
            return this;
        }

        public Builder setName(String str) {
            this.mName = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.zzajh = str;
            return this;
        }

        public Builder setProfilePictureUri(Uri uri) {
            this.zzajf = uri;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Credential(int i, String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.zzaiI = i;
        String trim = ((String) zzac.zzb(str, "credential identifier cannot be null")).trim();
        zzac.zzh(trim, "credential identifier cannot be empty");
        this.zzGV = trim;
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.mName = str2;
        this.zzajf = uri;
        this.zzajg = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzajh = str3;
        if (str3 == null || !str3.isEmpty()) {
            if (!TextUtils.isEmpty(str4)) {
                zzuz.zzct(str4);
            }
            this.zzaji = str4;
            this.zzajj = str5;
            this.zzajk = str6;
            this.zzajl = str7;
            this.zzajm = str8;
            if (!TextUtils.isEmpty(this.zzajh) && !TextUtils.isEmpty(this.zzaji)) {
                throw new IllegalStateException("password and accountType cannot both be set");
            }
            return;
        }
        throw new IllegalArgumentException("password cannot be empty");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.zzGV, credential.zzGV) && TextUtils.equals(this.mName, credential.mName) && zzaa.equal(this.zzajf, credential.zzajf) && TextUtils.equals(this.zzajh, credential.zzajh) && TextUtils.equals(this.zzaji, credential.zzaji) && TextUtils.equals(this.zzajj, credential.zzajj);
    }

    public String getAccountType() {
        return this.zzaji;
    }

    public String getFamilyName() {
        return this.zzajm;
    }

    public String getGeneratedPassword() {
        return this.zzajj;
    }

    public String getGivenName() {
        return this.zzajl;
    }

    public String getId() {
        return this.zzGV;
    }

    public List<IdToken> getIdTokens() {
        return this.zzajg;
    }

    public String getName() {
        return this.mName;
    }

    public String getPassword() {
        return this.zzajh;
    }

    public Uri getProfilePictureUri() {
        return this.zzajf;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzGV, this.mName, this.zzajf, this.zzajh, this.zzaji, this.zzajj);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public String zzqV() {
        return this.zzajk;
    }
}
