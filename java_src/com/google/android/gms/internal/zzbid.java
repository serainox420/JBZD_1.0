package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbif;
import org.json.JSONException;
/* loaded from: classes2.dex */
public final class zzbid {
    public static final zzbic zzbMb = new zzbic() { // from class: com.google.android.gms.internal.zzbid.1
        @Override // com.google.android.gms.internal.zzbic
        public zzbif zzP(byte[] bArr) throws zzbhy {
            if (bArr == null) {
                throw new zzbhy("Cannot parse a null byte[]");
            }
            if (bArr.length == 0) {
                throw new zzbhy("Cannot parse a 0 length byte[]");
            }
            try {
                zzbio zzhQ = zzbhz.zzhQ(new String(bArr));
                if (zzhQ != null) {
                    zzbbu.v("The container was successfully parsed from the resource");
                }
                return new zzbif(Status.zzazx, 0, new zzbif.zza(zzhQ), zzbid.zzbMc.zzP(bArr).zzSM());
            } catch (zzbhy e) {
                throw new zzbhy("The resource data is invalid. The container cannot be extracted from the JSON data");
            } catch (JSONException e2) {
                throw new zzbhy("The resource data is corrupted. The container cannot be extracted from the JSON data");
            }
        }
    };
    public static final zzbic zzbMc = new zzbic() { // from class: com.google.android.gms.internal.zzbid.2
        @Override // com.google.android.gms.internal.zzbic
        public zzbif zzP(byte[] bArr) throws zzbhy {
            if (bArr == null) {
                throw new zzbhy("Cannot parse a null byte[]");
            }
            if (bArr.length == 0) {
                throw new zzbhy("Cannot parse a 0 length byte[]");
            }
            try {
                zzbir zzhR = zzbhz.zzhR(new String(bArr));
                if (zzhR != null) {
                    zzbbu.v("The runtime configuration was successfully parsed from the resource");
                }
                return new zzbif(Status.zzazx, 0, null, zzhR);
            } catch (zzbhy e) {
                throw new zzbhy("The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data");
            } catch (JSONException e2) {
                throw new zzbhy("The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data");
            }
        }
    };
}
