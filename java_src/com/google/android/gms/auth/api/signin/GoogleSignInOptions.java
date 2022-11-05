package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.auth.api.signin.internal.zzh;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class GoogleSignInOptions extends com.google.android.gms.common.internal.safeparcel.zza implements Api.ApiOptions.Optional, ReflectedParcelable {
    final int versionCode;
    private Account zzahh;
    private boolean zzajv;
    private String zzajw;
    private final ArrayList<Scope> zzakk;
    private final boolean zzakl;
    private final boolean zzakm;
    private String zzakn;
    private ArrayList<zzg> zzako;
    private Map<Integer, zzg> zzakp;
    public static final Scope zzakh = new Scope(Scopes.PROFILE);
    public static final Scope zzaki = new Scope(Scopes.EMAIL);
    public static final Scope zzakj = new Scope("openid");
    public static final Scope SCOPE_GAMES = new Scope(Scopes.GAMES);
    public static final GoogleSignInOptions DEFAULT_SIGN_IN = new Builder().requestId().requestProfile().build();
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN = new Builder().requestScopes(SCOPE_GAMES, new Scope[0]).build();
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new zzb();
    private static Comparator<Scope> zzakg = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInOptions.1
        @Override // java.util.Comparator
        /* renamed from: zza */
        public int compare(Scope scope, Scope scope2) {
            return scope.zzvt().compareTo(scope2.zzvt());
        }
    };

    /* loaded from: classes2.dex */
    public static final class Builder {
        private Account zzahh;
        private boolean zzajv;
        private String zzajw;
        private boolean zzakl;
        private boolean zzakm;
        private String zzakn;
        private Set<Scope> zzakq;
        private Map<Integer, zzg> zzakr;

        public Builder() {
            this.zzakq = new HashSet();
            this.zzakr = new HashMap();
        }

        public Builder(GoogleSignInOptions googleSignInOptions) {
            this.zzakq = new HashSet();
            this.zzakr = new HashMap();
            zzac.zzw(googleSignInOptions);
            this.zzakq = new HashSet(googleSignInOptions.zzakk);
            this.zzakl = googleSignInOptions.zzakl;
            this.zzakm = googleSignInOptions.zzakm;
            this.zzajv = googleSignInOptions.zzajv;
            this.zzajw = googleSignInOptions.zzajw;
            this.zzahh = googleSignInOptions.zzahh;
            this.zzakn = googleSignInOptions.zzakn;
            this.zzakr = GoogleSignInOptions.zzx(googleSignInOptions.zzako);
        }

        private String zzcy(String str) {
            zzac.zzdr(str);
            zzac.zzb(this.zzajw == null || this.zzajw.equals(str), "two different server client ids provided");
            return str;
        }

        public Builder addExtension(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            if (this.zzakr.containsKey(1)) {
                throw new IllegalStateException("Only one extension per type may be added");
            }
            this.zzakr.put(1, new zzg(googleSignInOptionsExtension));
            return this;
        }

        public GoogleSignInOptions build() {
            if (this.zzajv && (this.zzahh == null || !this.zzakq.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.zzakq), this.zzahh, this.zzajv, this.zzakl, this.zzakm, this.zzajw, this.zzakn, this.zzakr);
        }

        public Builder requestEmail() {
            this.zzakq.add(GoogleSignInOptions.zzaki);
            return this;
        }

        public Builder requestId() {
            this.zzakq.add(GoogleSignInOptions.zzakj);
            return this;
        }

        public Builder requestIdToken(String str) {
            this.zzajv = true;
            this.zzajw = zzcy(str);
            return this;
        }

        public Builder requestProfile() {
            this.zzakq.add(GoogleSignInOptions.zzakh);
            return this;
        }

        public Builder requestScopes(Scope scope, Scope... scopeArr) {
            this.zzakq.add(scope);
            this.zzakq.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public Builder requestServerAuthCode(String str) {
            return requestServerAuthCode(str, false);
        }

        public Builder requestServerAuthCode(String str, boolean z) {
            this.zzakl = true;
            this.zzajw = zzcy(str);
            this.zzakm = z;
            return this;
        }

        public Builder setAccountName(String str) {
            this.zzahh = new Account(zzac.zzdr(str), "com.google");
            return this;
        }

        public Builder setHostedDomain(String str) {
            this.zzakn = zzac.zzdr(str);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<zzg> arrayList2) {
        this(i, arrayList, account, z, z2, z3, str, str2, zzx(arrayList2));
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, zzg> map) {
        this.versionCode = i;
        this.zzakk = arrayList;
        this.zzahh = account;
        this.zzajv = z;
        this.zzakl = z2;
        this.zzakm = z3;
        this.zzajw = str;
        this.zzakn = str2;
        this.zzako = new ArrayList<>(map.values());
        this.zzakp = map;
    }

    public static GoogleSignInOptions zzcx(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap());
    }

    private JSONObject zzri() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zzakk, zzakg);
            Iterator<Scope> it = this.zzakk.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().zzvt());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.zzahh != null) {
                jSONObject.put("accountName", this.zzahh.name);
            }
            jSONObject.put("idTokenRequested", this.zzajv);
            jSONObject.put("forceCodeForRefreshToken", this.zzakm);
            jSONObject.put("serverAuthRequested", this.zzakl);
            if (!TextUtils.isEmpty(this.zzajw)) {
                jSONObject.put("serverClientId", this.zzajw);
            }
            if (!TextUtils.isEmpty(this.zzakn)) {
                jSONObject.put("hostedDomain", this.zzakn);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Integer, zzg> zzx(List<zzg> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (zzg zzgVar : list) {
            hashMap.put(Integer.valueOf(zzgVar.getType()), zzgVar);
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.zzako.size() > 0 || googleSignInOptions.zzako.size() > 0 || this.zzakk.size() != googleSignInOptions.zzrj().size() || !this.zzakk.containsAll(googleSignInOptions.zzrj())) {
                return false;
            }
            if (this.zzahh == null) {
                if (googleSignInOptions.getAccount() != null) {
                    return false;
                }
            } else if (!this.zzahh.equals(googleSignInOptions.getAccount())) {
                return false;
            }
            if (TextUtils.isEmpty(this.zzajw)) {
                if (!TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                    return false;
                }
            } else if (!this.zzajw.equals(googleSignInOptions.getServerClientId())) {
                return false;
            }
            if (this.zzakm != googleSignInOptions.zzrl() || this.zzajv != googleSignInOptions.isIdTokenRequested()) {
                return false;
            }
            return this.zzakl == googleSignInOptions.zzrk();
        } catch (ClassCastException e) {
            return false;
        }
    }

    public Account getAccount() {
        return this.zzahh;
    }

    public Scope[] getScopeArray() {
        return (Scope[]) this.zzakk.toArray(new Scope[this.zzakk.size()]);
    }

    public String getServerClientId() {
        return this.zzajw;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        Iterator<Scope> it = this.zzakk.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().zzvt());
        }
        Collections.sort(arrayList);
        return new zzh().zzq(arrayList).zzq(this.zzahh).zzq(this.zzajw).zzae(this.zzakm).zzae(this.zzajv).zzae(this.zzakl).zzru();
    }

    public boolean isIdTokenRequested() {
        return this.zzajv;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public String zzrg() {
        return zzri().toString();
    }

    public ArrayList<Scope> zzrj() {
        return new ArrayList<>(this.zzakk);
    }

    public boolean zzrk() {
        return this.zzakl;
    }

    public boolean zzrl() {
        return this.zzakm;
    }

    public String zzrm() {
        return this.zzakn;
    }

    public ArrayList<zzg> zzrn() {
        return this.zzako;
    }
}
