package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Patterns;
import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ProxyRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int VERSION_CODE = 2;
    public final byte[] body;
    public final int httpMethod;
    public final long timeoutMillis;
    public final String url;
    final int versionCode;
    Bundle zzajR;
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new zzc();
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int LAST_CODE = 7;

    /* loaded from: classes2.dex */
    public static class Builder {
        private String zzajS;
        private int zzajT = ProxyRequest.HTTP_METHOD_GET;
        private long zzVv = 3000;
        private byte[] zzajU = null;
        private Bundle zzajV = new Bundle();

        public Builder(String str) {
            zzac.zzdr(str);
            if (Patterns.WEB_URL.matcher(str).matches()) {
                this.zzajS = str;
                return;
            }
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 51).append("The supplied url [ ").append(str).append("] is not match Patterns.WEB_URL!").toString());
        }

        public ProxyRequest build() {
            if (this.zzajU == null) {
                this.zzajU = new byte[0];
            }
            return new ProxyRequest(2, this.zzajS, this.zzajT, this.zzVv, this.zzajU, this.zzajV);
        }

        public Builder putHeader(String str, String str2) {
            zzac.zzh(str, "Header name cannot be null or empty!");
            Bundle bundle = this.zzajV;
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString(str, str2);
            return this;
        }

        public Builder setBody(byte[] bArr) {
            this.zzajU = bArr;
            return this;
        }

        public Builder setHttpMethod(int i) {
            zzac.zzb(i >= 0 && i <= ProxyRequest.LAST_CODE, "Unrecognized http method code.");
            this.zzajT = i;
            return this;
        }

        public Builder setTimeoutMillis(long j) {
            zzac.zzb(j >= 0, "The specified timeout must be non-negative.");
            this.zzVv = j;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.versionCode = i;
        this.url = str;
        this.httpMethod = i2;
        this.timeoutMillis = j;
        this.body = bArr;
        this.zzajR = bundle;
    }

    public Map<String, String> getHeaderMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.zzajR.size());
        for (String str : this.zzajR.keySet()) {
            linkedHashMap.put(str, this.zzajR.getString(str));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public String toString() {
        String str = this.url;
        return new StringBuilder(String.valueOf(str).length() + 42).append("ProxyRequest[ url: ").append(str).append(", method: ").append(this.httpMethod).append(" ]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
