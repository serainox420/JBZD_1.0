package com.google.firebase.database;

import com.google.android.gms.internal.zzbph;
import com.google.android.gms.internal.zzbpj;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes2.dex */
public class d extends k {

    /* loaded from: classes2.dex */
    public interface a {
        void onComplete(c cVar, d dVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(zzbpj zzbpjVar, zzbph zzbphVar) {
        super(zzbpjVar, zzbphVar);
    }

    public d a() {
        zzbph zzYU = c().zzYU();
        if (zzYU != null) {
            return new d(this.f3576a, zzYU);
        }
        return null;
    }

    public String b() {
        if (c().isEmpty()) {
            return null;
        }
        return c().zzYV().asString();
    }

    public boolean equals(Object obj) {
        return (obj instanceof d) && toString().equals(obj.toString());
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        d a2 = a();
        if (a2 == null) {
            return this.f3576a.toString();
        }
        try {
            String valueOf = String.valueOf(a2.toString());
            String valueOf2 = String.valueOf(URLEncoder.encode(b(), "UTF-8").replace("+", "%20"));
            return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("/").append(valueOf2).toString();
        } catch (UnsupportedEncodingException e) {
            String valueOf3 = String.valueOf(b());
            throw new DatabaseException(valueOf3.length() != 0 ? "Failed to URLEncode key: ".concat(valueOf3) : new String("Failed to URLEncode key: "), e);
        }
    }
}
