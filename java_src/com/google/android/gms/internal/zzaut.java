package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzauu;
import com.google.android.gms.internal.zzauw;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.a.a;
import com.loopme.debugging.Params;
import io.fabric.sdk.android.services.b.b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.BitSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes2.dex */
public class zzaut extends zzauh {
    private final AtomicLong zzbwh;
    private int zzbwi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaut(zzaue zzaueVar) {
        super(zzaueVar);
        this.zzbwh = new AtomicLong(0L);
    }

    public static Object zzH(Object obj) {
        ObjectInputStream objectInputStream;
        ObjectOutputStream objectOutputStream;
        try {
            if (obj == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                } catch (Throwable th) {
                    th = th;
                    objectInputStream = null;
                }
                try {
                    Object readObject = objectInputStream.readObject();
                    objectOutputStream.close();
                    objectInputStream.close();
                    return readObject;
                } catch (Throwable th2) {
                    th = th2;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                    }
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
                objectOutputStream = null;
            }
        } catch (IOException e) {
            return null;
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    private Object zza(int i, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return null;
            }
            return zza(String.valueOf(obj), i, z);
        }
    }

    public static String zza(zzauu.zzb zzbVar) {
        if (zzbVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        zza(sb, 0, "filter_id", zzbVar.zzbwo);
        zza(sb, 0, "event_name", zzbVar.zzbwp);
        zza(sb, 1, "event_count_filter", zzbVar.zzbws);
        sb.append("  filters {\n");
        for (zzauu.zzc zzcVar : zzbVar.zzbwq) {
            zza(sb, 2, zzcVar);
        }
        zza(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    public static String zza(zzauu.zze zzeVar) {
        if (zzeVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        zza(sb, 0, "filter_id", zzeVar.zzbwo);
        zza(sb, 0, "property_name", zzeVar.zzbwE);
        zza(sb, 1, zzeVar.zzbwF);
        sb.append("}\n");
        return sb.toString();
    }

    private static void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private static void zza(StringBuilder sb, int i, zzauu.zzc zzcVar) {
        if (zzcVar == null) {
            return;
        }
        zza(sb, i);
        sb.append("filter {\n");
        zza(sb, i, "complement", zzcVar.zzbww);
        zza(sb, i, "param_name", zzcVar.zzbwx);
        zza(sb, i + 1, "string_filter", zzcVar.zzbwu);
        zza(sb, i + 1, "number_filter", zzcVar.zzbwv);
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i, zzauw.zze zzeVar) {
        if (zzeVar == null) {
            return;
        }
        zza(sb, i);
        sb.append("bundle {\n");
        zza(sb, i, "protocol_version", zzeVar.zzbxf);
        zza(sb, i, "platform", zzeVar.zzbxn);
        zza(sb, i, "gmp_version", zzeVar.zzbxr);
        zza(sb, i, "uploading_gmp_version", zzeVar.zzbxs);
        zza(sb, i, "config_version", zzeVar.zzbxE);
        zza(sb, i, "gmp_app_id", zzeVar.zzbqL);
        zza(sb, i, "app_id", zzeVar.zzaS);
        zza(sb, i, "app_version", zzeVar.zzbhN);
        zza(sb, i, "app_version_major", zzeVar.zzbxA);
        zza(sb, i, "app_version_minor", zzeVar.zzbxB);
        zza(sb, i, "app_version_release", zzeVar.zzbxC);
        zza(sb, i, "firebase_instance_id", zzeVar.zzbqT);
        zza(sb, i, "dev_cert_hash", zzeVar.zzbxw);
        zza(sb, i, "app_store", zzeVar.zzbqM);
        zza(sb, i, "upload_timestamp_millis", zzeVar.zzbxi);
        zza(sb, i, "start_timestamp_millis", zzeVar.zzbxj);
        zza(sb, i, "end_timestamp_millis", zzeVar.zzbxk);
        zza(sb, i, "previous_bundle_start_timestamp_millis", zzeVar.zzbxl);
        zza(sb, i, "previous_bundle_end_timestamp_millis", zzeVar.zzbxm);
        zza(sb, i, "app_instance_id", zzeVar.zzbxv);
        zza(sb, i, "resettable_device_id", zzeVar.zzbxt);
        zza(sb, i, Params.DEVICE_ID, zzeVar.zzbxD);
        zza(sb, i, "limited_ad_tracking", zzeVar.zzbxu);
        zza(sb, i, "os_version", zzeVar.zzbb);
        zza(sb, i, "device_model", zzeVar.zzbxo);
        zza(sb, i, "user_default_language", zzeVar.zzbxp);
        zza(sb, i, "time_zone_offset_minutes", zzeVar.zzbxq);
        zza(sb, i, "bundle_sequential_index", zzeVar.zzbxx);
        zza(sb, i, "service_upload", zzeVar.zzbxy);
        zza(sb, i, "health_monitor", zzeVar.zzbqP);
        if (zzeVar.zzbxF.longValue() != 0) {
            zza(sb, i, "android_id", zzeVar.zzbxF);
        }
        zza(sb, i, zzeVar.zzbxh);
        zza(sb, i, zzeVar.zzbxz);
        zza(sb, i, zzeVar.zzbxg);
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i, String str, zzauu.zzd zzdVar) {
        if (zzdVar == null) {
            return;
        }
        zza(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzdVar.zzbwy != null) {
            String str2 = "UNKNOWN_COMPARISON_TYPE";
            switch (zzdVar.zzbwy.intValue()) {
                case 1:
                    str2 = "LESS_THAN";
                    break;
                case 2:
                    str2 = "GREATER_THAN";
                    break;
                case 3:
                    str2 = "EQUAL";
                    break;
                case 4:
                    str2 = "BETWEEN";
                    break;
            }
            zza(sb, i, "comparison_type", str2);
        }
        zza(sb, i, "match_as_float", zzdVar.zzbwz);
        zza(sb, i, "comparison_value", zzdVar.zzbwA);
        zza(sb, i, "min_comparison_value", zzdVar.zzbwB);
        zza(sb, i, "max_comparison_value", zzdVar.zzbwC);
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i, String str, zzauu.zzf zzfVar) {
        String[] strArr;
        if (zzfVar == null) {
            return;
        }
        zza(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (zzfVar.zzbwG != null) {
            String str2 = "UNKNOWN_MATCH_TYPE";
            switch (zzfVar.zzbwG.intValue()) {
                case 1:
                    str2 = "REGEXP";
                    break;
                case 2:
                    str2 = "BEGINS_WITH";
                    break;
                case 3:
                    str2 = "ENDS_WITH";
                    break;
                case 4:
                    str2 = "PARTIAL";
                    break;
                case 5:
                    str2 = "EXACT";
                    break;
                case 6:
                    str2 = "IN_LIST";
                    break;
            }
            zza(sb, i, "match_type", str2);
        }
        zza(sb, i, "expression", zzfVar.zzbwH);
        zza(sb, i, "case_sensitive", zzfVar.zzbwI);
        if (zzfVar.zzbwJ.length > 0) {
            zza(sb, i + 1);
            sb.append("expression_list {\n");
            for (String str3 : zzfVar.zzbwJ) {
                zza(sb, i + 2);
                sb.append(str3);
                sb.append("\n");
            }
            sb.append("}\n");
        }
        zza(sb, i);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i, String str, zzauw.zzf zzfVar) {
        int i2 = 0;
        if (zzfVar == null) {
            return;
        }
        int i3 = i + 1;
        zza(sb, i3);
        sb.append(str);
        sb.append(" {\n");
        if (zzfVar.zzbxH != null) {
            zza(sb, i3 + 1);
            sb.append("results: ");
            long[] jArr = zzfVar.zzbxH;
            int length = jArr.length;
            int i4 = 0;
            int i5 = 0;
            while (i4 < length) {
                Long valueOf = Long.valueOf(jArr[i4]);
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(valueOf);
                i4++;
                i5 = i6;
            }
            sb.append('\n');
        }
        if (zzfVar.zzbxG != null) {
            zza(sb, i3 + 1);
            sb.append("status: ");
            long[] jArr2 = zzfVar.zzbxG;
            int length2 = jArr2.length;
            int i7 = 0;
            while (i2 < length2) {
                Long valueOf2 = Long.valueOf(jArr2[i2]);
                int i8 = i7 + 1;
                if (i7 != 0) {
                    sb.append(", ");
                }
                sb.append(valueOf2);
                i2++;
                i7 = i8;
            }
            sb.append('\n');
        }
        zza(sb, i3);
        sb.append("}\n");
    }

    private static void zza(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zza(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    private static void zza(StringBuilder sb, int i, zzauw.zza[] zzaVarArr) {
        if (zzaVarArr == null) {
            return;
        }
        int i2 = i + 1;
        for (zzauw.zza zzaVar : zzaVarArr) {
            if (zzaVar != null) {
                zza(sb, i2);
                sb.append("audience_membership {\n");
                zza(sb, i2, "audience_id", zzaVar.zzbwk);
                zza(sb, i2, "new_audience", zzaVar.zzbwW);
                zza(sb, i2, "current_data", zzaVar.zzbwU);
                zza(sb, i2, "previous_data", zzaVar.zzbwV);
                zza(sb, i2);
                sb.append("}\n");
            }
        }
    }

    private static void zza(StringBuilder sb, int i, zzauw.zzb[] zzbVarArr) {
        if (zzbVarArr == null) {
            return;
        }
        int i2 = i + 1;
        for (zzauw.zzb zzbVar : zzbVarArr) {
            if (zzbVar != null) {
                zza(sb, i2);
                sb.append("event {\n");
                zza(sb, i2, "name", zzbVar.name);
                zza(sb, i2, "timestamp_millis", zzbVar.zzbwZ);
                zza(sb, i2, "previous_timestamp_millis", zzbVar.zzbxa);
                zza(sb, i2, "count", zzbVar.count);
                zza(sb, i2, zzbVar.zzbwY);
                zza(sb, i2);
                sb.append("}\n");
            }
        }
    }

    private static void zza(StringBuilder sb, int i, zzauw.zzc[] zzcVarArr) {
        if (zzcVarArr == null) {
            return;
        }
        int i2 = i + 1;
        for (zzauw.zzc zzcVar : zzcVarArr) {
            if (zzcVar != null) {
                zza(sb, i2);
                sb.append("param {\n");
                zza(sb, i2, "name", zzcVar.name);
                zza(sb, i2, "string_value", zzcVar.zzaGV);
                zza(sb, i2, "int_value", zzcVar.zzbxc);
                zza(sb, i2, "double_value", zzcVar.zzbwf);
                zza(sb, i2);
                sb.append("}\n");
            }
        }
    }

    private static void zza(StringBuilder sb, int i, zzauw.zzg[] zzgVarArr) {
        if (zzgVarArr == null) {
            return;
        }
        int i2 = i + 1;
        for (zzauw.zzg zzgVar : zzgVarArr) {
            if (zzgVar != null) {
                zza(sb, i2);
                sb.append("user_property {\n");
                zza(sb, i2, "set_timestamp_millis", zzgVar.zzbxJ);
                zza(sb, i2, "name", zzgVar.name);
                zza(sb, i2, "string_value", zzgVar.zzaGV);
                zza(sb, i2, "int_value", zzgVar.zzbxc);
                zza(sb, i2, "double_value", zzgVar.zzbwf);
                zza(sb, i2);
                sb.append("}\n");
            }
        }
    }

    public static boolean zza(Context context, String str, boolean z) {
        ActivityInfo receiverInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, str), 2)) == null || !receiverInfo.enabled) {
                return false;
            }
            if (z) {
                if (!receiverInfo.exported) {
                    return false;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static boolean zza(long[] jArr, int i) {
        return i < jArr.length * 64 && (jArr[i / 64] & (1 << (i % 64))) != 0;
    }

    public static long[] zza(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = 0;
            for (int i2 = 0; i2 < 64 && (i * 64) + i2 < bitSet.length(); i2++) {
                if (bitSet.get((i * 64) + i2)) {
                    jArr[i] = jArr[i] | (1 << i2);
                }
            }
        }
        return jArr;
    }

    public static boolean zzae(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str != null) {
            return str.equals(str2);
        }
        return false;
    }

    public static String zzb(zzauw.zzd zzdVar) {
        zzauw.zze[] zzeVarArr;
        if (zzdVar == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (zzdVar.zzbxd != null) {
            for (zzauw.zze zzeVar : zzdVar.zzbxd) {
                if (zzeVar != null) {
                    zza(sb, 1, zzeVar);
                }
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MessageDigest zzch(String str) {
        MessageDigest messageDigest;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 2) {
                try {
                    messageDigest = MessageDigest.getInstance(str);
                } catch (NoSuchAlgorithmException e) {
                }
                if (messageDigest != null) {
                    return messageDigest;
                }
                i = i2 + 1;
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzfT(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        return str.charAt(0) != '_';
    }

    private int zzgc(String str) {
        return "_ldl".equals(str) ? zzKn().zzKS() : zzKn().zzKR();
    }

    public static boolean zzgd(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith(b.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzgf(String str) {
        return str != null && str.matches("(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    static long zzy(byte[] bArr) {
        int i = 0;
        com.google.android.gms.common.internal.zzac.zzw(bArr);
        com.google.android.gms.common.internal.zzac.zzaw(bArr.length > 0);
        long j = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j += (bArr[length] & 255) << i;
            i += 8;
        }
        return j;
    }

    public static boolean zzy(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 4)) == null) {
                return false;
            }
            return serviceInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public boolean zzA(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x006b -> B:18:0x0078). Please submit an issue!!! */
    public long zzL(Context context, String str) {
        long j = -1;
        zzmR();
        com.google.android.gms.common.internal.zzac.zzw(context);
        com.google.android.gms.common.internal.zzac.zzdr(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest zzch = zzch("MD5");
        if (zzch == null) {
            zzKl().zzLY().log("Could not get MD5 instance");
        } else {
            if (packageManager != null) {
                try {
                } catch (PackageManager.NameNotFoundException e) {
                    zzKl().zzLY().zzj("Package name not found", e);
                }
                if (!zzM(context, str)) {
                    PackageInfo packageInfo = zzadg.zzbi(context).getPackageInfo(getContext().getPackageName(), 64);
                    if (packageInfo.signatures == null || packageInfo.signatures.length <= 0) {
                        zzKl().zzMa().log("Could not get signatures");
                    } else {
                        j = zzy(zzch.digest(packageInfo.signatures[0].toByteArray()));
                    }
                }
            }
            j = 0;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle zzM(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object zzl = zzKh().zzl(str, bundle.get(str));
                if (zzl == null) {
                    zzKl().zzMa().zzj("Param value can't be null", str);
                } else {
                    zzKh().zza(bundle2, str, zzl);
                }
            }
        }
        return bundle2;
    }

    boolean zzM(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = zzadg.zzbi(context).getPackageInfo(str, 64);
            if (packageInfo != null && packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(packageInfo.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
            }
        } catch (PackageManager.NameNotFoundException e) {
            zzKl().zzLY().zzj("Package name not found", e);
        } catch (CertificateException e2) {
            zzKl().zzLY().zzj("Error obtaining certificate", e2);
        }
        return true;
    }

    public long zzNi() {
        long andIncrement;
        if (this.zzbwh.get() == 0) {
            synchronized (this.zzbwh) {
                long nextLong = new Random(System.nanoTime() ^ zznR().currentTimeMillis()).nextLong();
                int i = this.zzbwi + 1;
                this.zzbwi = i;
                andIncrement = nextLong + i;
            }
        } else {
            synchronized (this.zzbwh) {
                this.zzbwh.compareAndSet(-1L, 1L);
                andIncrement = this.zzbwh.getAndIncrement();
            }
        }
        return andIncrement;
    }

    public Bundle zza(String str, Bundle bundle, List<String> list, boolean z) {
        int zzfY;
        if (bundle != null) {
            Bundle bundle2 = new Bundle(bundle);
            zzKn().zzKL();
            int i = 0;
            for (String str2 : bundle.keySet()) {
                if (list == null || !list.contains(str2)) {
                    zzfY = z ? zzfY(str2) : 0;
                    if (zzfY == 0) {
                        zzfY = zzfZ(str2);
                    }
                } else {
                    zzfY = 0;
                }
                if (zzfY != 0) {
                    if (zzd(bundle2, zzfY)) {
                        bundle2.putString("_ev", zza(str2, zzKn().zzKO(), true));
                        if (zzfY == 3) {
                            zzb(bundle2, str2);
                        }
                    }
                    bundle2.remove(str2);
                } else if (!zzk(str2, bundle.get(str2)) && !"_ev".equals(str2)) {
                    if (zzd(bundle2, 4)) {
                        bundle2.putString("_ev", zza(str2, zzKn().zzKO(), true));
                        zzb(bundle2, bundle.get(str2));
                    }
                    bundle2.remove(str2);
                } else if (!zzfT(str2) || (i = i + 1) <= 25) {
                    i = i;
                } else {
                    zzKl().zzLY().zze(new StringBuilder(48).append("Event can't contain more then ").append(25).append(" params").toString(), str, bundle);
                    zzd(bundle2, 5);
                    bundle2.remove(str2);
                }
            }
            return bundle2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatq zza(String str, Bundle bundle, String str2, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (zzKh().zzfV(str) != 0) {
            zzKl().zzLY().zzj("Invalid conditional property event name", str);
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle zza = zzKh().zza(str, bundle2, com.google.android.gms.common.util.zzf.zzx("_o"), z2);
        return new zzatq(str, new zzato(z ? zzM(zza) : zza), str2, j);
    }

    public String zza(String str, int i, boolean z) {
        if (str.length() > i) {
            if (!z) {
                return null;
            }
            return String.valueOf(str.substring(0, i)).concat("...");
        }
        return str;
    }

    public void zza(int i, String str, String str2, int i2) {
        zza(null, i, str, str2, i2);
    }

    public void zza(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (str == null) {
        } else {
            zzKl().zzMb().zze("Not putting event parameter. Invalid value type. name, type", str, obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public void zza(zzauw.zzc zzcVar, Object obj) {
        com.google.android.gms.common.internal.zzac.zzw(obj);
        zzcVar.zzaGV = null;
        zzcVar.zzbxc = null;
        zzcVar.zzbwf = null;
        if (obj instanceof String) {
            zzcVar.zzaGV = (String) obj;
        } else if (obj instanceof Long) {
            zzcVar.zzbxc = (Long) obj;
        } else if (obj instanceof Double) {
            zzcVar.zzbwf = (Double) obj;
        } else {
            zzKl().zzLY().zzj("Ignoring invalid (type) event param value", obj);
        }
    }

    public void zza(zzauw.zzg zzgVar, Object obj) {
        com.google.android.gms.common.internal.zzac.zzw(obj);
        zzgVar.zzaGV = null;
        zzgVar.zzbxc = null;
        zzgVar.zzbwf = null;
        if (obj instanceof String) {
            zzgVar.zzaGV = (String) obj;
        } else if (obj instanceof Long) {
            zzgVar.zzbxc = (Long) obj;
        } else if (obj instanceof Double) {
            zzgVar.zzbwf = (Double) obj;
        } else {
            zzKl().zzLY().zzj("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public void zza(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        zzd(bundle, i);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        this.zzbqc.zzKn().zzLg();
        this.zzbqc.zzKa().zze("auto", "_err", bundle);
    }

    boolean zza(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.length() <= i) {
                return true;
            }
            zzKl().zzMa().zzd("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] zza(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    public byte[] zza(zzauw.zzd zzdVar) {
        try {
            byte[] bArr = new byte[zzdVar.zzaeT()];
            zzbxm zzag = zzbxm.zzag(bArr);
            zzdVar.zza(zzag);
            zzag.zzaeG();
            return bArr;
        } catch (IOException e) {
            zzKl().zzLY().zzj("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    boolean zzac(String str, String str2) {
        if (str2 == null) {
            zzKl().zzLY().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzKl().zzLY().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                zzKl().zzLY().zze("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    zzKl().zzLY().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    boolean zzad(String str, String str2) {
        if (str2 == null) {
            zzKl().zzLY().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            zzKl().zzLY().zzj("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt) && codePointAt != 95) {
                zzKl().zzLY().zze("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                    zzKl().zzLY().zze("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
                charCount += Character.charCount(codePointAt2);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T extends Parcelable> T zzb(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return creator.createFromParcel(obtain);
        } catch (zzb.zza e) {
            zzKl().zzLY().log("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    public void zzb(Bundle bundle, Object obj) {
        com.google.android.gms.common.internal.zzac.zzw(bundle);
        if (obj != null) {
            if (!(obj instanceof String) && !(obj instanceof CharSequence)) {
                return;
            }
            bundle.putLong("_el", String.valueOf(obj).length());
        }
    }

    boolean zzb(String str, int i, String str2) {
        if (str2 == null) {
            zzKl().zzLY().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() <= i) {
            return true;
        } else {
            zzKl().zzLY().zzd("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    public boolean zzbW(String str) {
        zzmR();
        if (zzadg.zzbi(getContext()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzKl().zzMd().zzj("Permission not granted", str);
        return false;
    }

    boolean zzc(String str, Map<String, String> map, String str2) {
        if (str2 == null) {
            zzKl().zzLY().zzj("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.startsWith("firebase_")) {
            zzKl().zzLY().zze("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        } else if (map == null || !map.containsKey(str2)) {
            return true;
        } else {
            zzKl().zzLY().zze("Name is reserved. Type, name", str, str2);
            return false;
        }
    }

    public boolean zzd(Bundle bundle, int i) {
        if (bundle != null && bundle.getLong("_err") == 0) {
            bundle.putLong("_err", i);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzd(zzatq zzatqVar, zzatd zzatdVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzatqVar);
        com.google.android.gms.common.internal.zzac.zzw(zzatdVar);
        if (TextUtils.isEmpty(zzatdVar.zzbqL)) {
            zzKn().zzLg();
            return false;
        }
        return true;
    }

    public int zzfU(String str) {
        if (!zzac("event", str)) {
            return 2;
        }
        if (!zzc("event", AppMeasurement.zza.zzbqd, str)) {
            return 13;
        }
        return zzb("event", zzKn().zzKM(), str) ? 0 : 2;
    }

    public int zzfV(String str) {
        if (!zzad("event", str)) {
            return 2;
        }
        if (!zzc("event", AppMeasurement.zza.zzbqd, str)) {
            return 13;
        }
        return zzb("event", zzKn().zzKM(), str) ? 0 : 2;
    }

    public int zzfW(String str) {
        if (!zzac("user property", str)) {
            return 6;
        }
        if (!zzc("user property", AppMeasurement.zzg.zzbqi, str)) {
            return 15;
        }
        return zzb("user property", zzKn().zzKN(), str) ? 0 : 6;
    }

    public int zzfX(String str) {
        if (!zzad("user property", str)) {
            return 6;
        }
        if (!zzc("user property", AppMeasurement.zzg.zzbqi, str)) {
            return 15;
        }
        return zzb("user property", zzKn().zzKN(), str) ? 0 : 6;
    }

    public int zzfY(String str) {
        if (!zzac("event param", str)) {
            return 3;
        }
        if (!zzc("event param", null, str)) {
            return 14;
        }
        return zzb("event param", zzKn().zzKO(), str) ? 0 : 3;
    }

    public int zzfZ(String str) {
        if (!zzad("event param", str)) {
            return 3;
        }
        if (!zzc("event param", null, str)) {
            return 14;
        }
        return zzb("event param", zzKn().zzKO(), str) ? 0 : 3;
    }

    public boolean zzga(String str) {
        if (TextUtils.isEmpty(str)) {
            zzKl().zzLY().log("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        } else if (zzgb(str)) {
            return true;
        } else {
            zzKl().zzLY().zzj("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", str);
            return false;
        }
    }

    boolean zzgb(String str) {
        com.google.android.gms.common.internal.zzac.zzw(str);
        return str.matches("^1:\\d+:android:[a-f0-9]+$");
    }

    public boolean zzge(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String zzLC = zzKn().zzLC();
        zzKn().zzLg();
        return zzLC.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzgg(String str) {
        return "1".equals(zzKi().zzZ(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzgh(String str) {
        return "1".equals(zzKi().zzZ(str, "measurement.upload.blacklist_public"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzgi(String str) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        char c = 65535;
        switch (str.hashCode()) {
            case 94660:
                if (str.equals("_in")) {
                    c = 0;
                    break;
                }
                break;
            case 95025:
                if (str.equals("_ug")) {
                    c = 2;
                    break;
                }
                break;
            case 95027:
                if (str.equals("_ui")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    public boolean zzh(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(zznR().currentTimeMillis() - j) > j2;
    }

    public boolean zzk(String str, Object obj) {
        return zzgd(str) ? zza("param", str, zzKn().zzKQ(), obj) : zza("param", str, zzKn().zzKP(), obj);
    }

    public byte[] zzk(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            zzKl().zzLY().zzj("Failed to gzip content", e);
            throw e;
        }
    }

    public Object zzl(String str, Object obj) {
        if ("_ev".equals(str)) {
            return zza(zzKn().zzKQ(), obj, true);
        }
        return zza(zzgd(str) ? zzKn().zzKQ() : zzKn().zzKP(), obj, false);
    }

    public int zzm(String str, Object obj) {
        return "_ldl".equals(str) ? zza("user property referrer", str, zzgc(str), obj) : zza("user property", str, zzgc(str), obj) ? 0 : 7;
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                zzKl().zzMa().log("Utils falling back to Random for random id");
            }
        }
        this.zzbwh.set(nextLong);
    }

    public Object zzn(String str, Object obj) {
        return "_ldl".equals(str) ? zza(zzgc(str), obj, true) : zza(zzgc(str), obj, false);
    }

    @Override // com.google.android.gms.internal.zzaug
    public /* bridge */ /* synthetic */ com.google.android.gms.common.util.zze zznR() {
        return super.zznR();
    }

    public Bundle zzu(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        Bundle bundle = null;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    str4 = uri.getQueryParameter("utm_campaign");
                    str3 = uri.getQueryParameter("utm_source");
                    str2 = uri.getQueryParameter("utm_medium");
                    str = uri.getQueryParameter("gclid");
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                    str4 = null;
                }
                if (!TextUtils.isEmpty(str4) || !TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str)) {
                    bundle = new Bundle();
                    if (!TextUtils.isEmpty(str4)) {
                        bundle.putString(a.b.CAMPAIGN, str4);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        bundle.putString("source", str3);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        bundle.putString(a.b.MEDIUM, str2);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        bundle.putString("gclid", str);
                    }
                    String queryParameter = uri.getQueryParameter("utm_term");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        bundle.putString(a.b.TERM, queryParameter);
                    }
                    String queryParameter2 = uri.getQueryParameter("utm_content");
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        bundle.putString("content", queryParameter2);
                    }
                    String queryParameter3 = uri.getQueryParameter(a.b.ACLID);
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        bundle.putString(a.b.ACLID, queryParameter3);
                    }
                    String queryParameter4 = uri.getQueryParameter(a.b.CP1);
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        bundle.putString(a.b.CP1, queryParameter4);
                    }
                    String queryParameter5 = uri.getQueryParameter("anid");
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        bundle.putString("anid", queryParameter5);
                    }
                }
            } catch (UnsupportedOperationException e) {
                zzKl().zzMa().zzj("Install referrer url isn't a hierarchical URI", e);
            }
        }
        return bundle;
    }

    public byte[] zzx(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read <= 0) {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
        } catch (IOException e) {
            zzKl().zzLY().zzj("Failed to ungzip content", e);
            throw e;
        }
    }

    public long zzz(byte[] bArr) {
        com.google.android.gms.common.internal.zzac.zzw(bArr);
        zzmR();
        MessageDigest zzch = zzch("MD5");
        if (zzch == null) {
            zzKl().zzLY().log("Failed to get MD5");
            return 0L;
        }
        return zzy(zzch.digest(bArr));
    }
}
