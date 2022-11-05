package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.UserMetadata;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class zzs extends zzl<UserMetadata> {
    public zzs(String str, int i) {
        super(str, zzdN(str), Collections.emptyList(), i);
    }

    private static String zzJ(String str, String str2) {
        return new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(".").append(str2).toString();
    }

    private String zzdM(String str) {
        return zzJ(getName(), str);
    }

    private static Collection<String> zzdN(String str) {
        return Arrays.asList(zzJ(str, "permissionId"), zzJ(str, "displayName"), zzJ(str, "picture"), zzJ(str, "isAuthenticatedUser"), zzJ(str, "emailAddress"));
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected boolean zzb(DataHolder dataHolder, int i, int i2) {
        return dataHolder.zzdf(zzdM("permissionId")) && !dataHolder.zzi(zzdM("permissionId"), i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzj */
    public UserMetadata zzc(DataHolder dataHolder, int i, int i2) {
        String zzd = dataHolder.zzd(zzdM("permissionId"), i, i2);
        if (zzd != null) {
            String zzd2 = dataHolder.zzd(zzdM("displayName"), i, i2);
            String zzd3 = dataHolder.zzd(zzdM("picture"), i, i2);
            Boolean valueOf = Boolean.valueOf(dataHolder.zze(zzdM("isAuthenticatedUser"), i, i2));
            return new UserMetadata(zzd, zzd2, zzd3, valueOf.booleanValue(), dataHolder.zzd(zzdM("emailAddress"), i, i2));
        }
        return null;
    }
}
