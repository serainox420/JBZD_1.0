package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzrk;
import com.google.android.gms.internal.zzrl;
import com.google.android.gms.internal.zzrm;
import com.google.android.gms.internal.zzrn;
import com.google.android.gms.internal.zzro;
import com.google.android.gms.internal.zzrp;
import com.google.android.gms.internal.zzrq;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.internal.zzrs;
import com.google.android.gms.internal.zzrt;
import com.google.android.gms.internal.zzru;
import com.google.android.gms.internal.zzrv;
import com.google.android.gms.internal.zzrw;
import com.google.android.gms.internal.zzrz;
import com.google.android.gms.internal.zzsb;
import com.google.android.gms.internal.zzsc;
import com.google.android.gms.internal.zzse;
import com.google.android.gms.internal.zzsz;
import com.google.android.gms.internal.zztm;
import com.google.firebase.a.a;
import com.openx.view.mraid.JSInterface;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzb extends zzrz implements zzi {
    private static DecimalFormat zzabr;
    private final zzsc zzabn;
    private final String zzabs;
    private final Uri zzabt;
    private final boolean zzabu;
    private final boolean zzabv;

    public zzb(zzsc zzscVar, String str) {
        this(zzscVar, str, true, false);
    }

    public zzb(zzsc zzscVar, String str, boolean z, boolean z2) {
        super(zzscVar);
        zzac.zzdr(str);
        this.zzabn = zzscVar;
        this.zzabs = str;
        this.zzabu = z;
        this.zzabv = z2;
        this.zzabt = zzbq(this.zzabs);
    }

    private static String zzR(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() != 0) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        return sb.toString();
    }

    private static void zza(Map<String, String> map, String str, double d) {
        if (d != 0.0d) {
            map.put(str, zzb(d));
        }
    }

    private static void zza(Map<String, String> map, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        map.put(str, new StringBuilder(23).append(i).append(JSInterface.JSON_X).append(i2).toString());
    }

    private static void zza(Map<String, String> map, String str, boolean z) {
        if (z) {
            map.put(str, "1");
        }
    }

    static String zzb(double d) {
        if (zzabr == null) {
            zzabr = new DecimalFormat("0.######");
        }
        return zzabr.format(d);
    }

    private static void zzb(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri zzbq(String str) {
        zzac.zzdr(str);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(ShareConstants.MEDIA_URI);
        builder.authority("google-analytics.com");
        builder.path(str);
        return builder.build();
    }

    public static Map<String, String> zzc(zze zzeVar) {
        HashMap hashMap = new HashMap();
        zzro zzroVar = (zzro) zzeVar.zza(zzro.class);
        if (zzroVar != null) {
            for (Map.Entry<String, Object> entry : zzroVar.zznj().entrySet()) {
                String zzi = zzi(entry.getValue());
                if (zzi != null) {
                    hashMap.put(entry.getKey(), zzi);
                }
            }
        }
        zzrt zzrtVar = (zzrt) zzeVar.zza(zzrt.class);
        if (zzrtVar != null) {
            zzb(hashMap, "t", zzrtVar.zznu());
            zzb(hashMap, "cid", zzrtVar.zzmy());
            zzb(hashMap, "uid", zzrtVar.getUserId());
            zzb(hashMap, "sc", zzrtVar.zznx());
            zza(hashMap, "sf", zzrtVar.zznz());
            zza(hashMap, "ni", zzrtVar.zzny());
            zzb(hashMap, "adid", zzrtVar.zznv());
            zza(hashMap, "ate", zzrtVar.zznw());
        }
        zzru zzruVar = (zzru) zzeVar.zza(zzru.class);
        if (zzruVar != null) {
            zzb(hashMap, "cd", zzruVar.zznB());
            zza(hashMap, "a", zzruVar.zznC());
            zzb(hashMap, "dr", zzruVar.zznD());
        }
        zzrr zzrrVar = (zzrr) zzeVar.zza(zzrr.class);
        if (zzrrVar != null) {
            zzb(hashMap, "ec", zzrrVar.getCategory());
            zzb(hashMap, "ea", zzrrVar.getAction());
            zzb(hashMap, "el", zzrrVar.getLabel());
            zza(hashMap, "ev", zzrrVar.getValue());
        }
        zzrl zzrlVar = (zzrl) zzeVar.zza(zzrl.class);
        if (zzrlVar != null) {
            zzb(hashMap, "cn", zzrlVar.getName());
            zzb(hashMap, "cs", zzrlVar.getSource());
            zzb(hashMap, "cm", zzrlVar.zznb());
            zzb(hashMap, "ck", zzrlVar.zznc());
            zzb(hashMap, "cc", zzrlVar.getContent());
            zzb(hashMap, "ci", zzrlVar.getId());
            zzb(hashMap, "anid", zzrlVar.zznd());
            zzb(hashMap, "gclid", zzrlVar.zzne());
            zzb(hashMap, "dclid", zzrlVar.zznf());
            zzb(hashMap, a.b.ACLID, zzrlVar.zzng());
        }
        zzrs zzrsVar = (zzrs) zzeVar.zza(zzrs.class);
        if (zzrsVar != null) {
            zzb(hashMap, "exd", zzrsVar.getDescription());
            zza(hashMap, "exf", zzrsVar.zznt());
        }
        zzrv zzrvVar = (zzrv) zzeVar.zza(zzrv.class);
        if (zzrvVar != null) {
            zzb(hashMap, "sn", zzrvVar.zznE());
            zzb(hashMap, "sa", zzrvVar.getAction());
            zzb(hashMap, "st", zzrvVar.getTarget());
        }
        zzrw zzrwVar = (zzrw) zzeVar.zza(zzrw.class);
        if (zzrwVar != null) {
            zzb(hashMap, "utv", zzrwVar.zznF());
            zza(hashMap, "utt", zzrwVar.getTimeInMillis());
            zzb(hashMap, "utc", zzrwVar.getCategory());
            zzb(hashMap, "utl", zzrwVar.getLabel());
        }
        zzrm zzrmVar = (zzrm) zzeVar.zza(zzrm.class);
        if (zzrmVar != null) {
            for (Map.Entry<Integer, String> entry2 : zzrmVar.zznh().entrySet()) {
                String zzao = zzc.zzao(entry2.getKey().intValue());
                if (!TextUtils.isEmpty(zzao)) {
                    hashMap.put(zzao, entry2.getValue());
                }
            }
        }
        zzrn zzrnVar = (zzrn) zzeVar.zza(zzrn.class);
        if (zzrnVar != null) {
            for (Map.Entry<Integer, Double> entry3 : zzrnVar.zzni().entrySet()) {
                String zzaq = zzc.zzaq(entry3.getKey().intValue());
                if (!TextUtils.isEmpty(zzaq)) {
                    hashMap.put(zzaq, zzb(entry3.getValue().doubleValue()));
                }
            }
        }
        zzrq zzrqVar = (zzrq) zzeVar.zza(zzrq.class);
        if (zzrqVar != null) {
            ProductAction zznp = zzrqVar.zznp();
            if (zznp != null) {
                for (Map.Entry<String, String> entry4 : zznp.build().entrySet()) {
                    if (entry4.getKey().startsWith("&")) {
                        hashMap.put(entry4.getKey().substring(1), entry4.getValue());
                    } else {
                        hashMap.put(entry4.getKey(), entry4.getValue());
                    }
                }
            }
            int i = 1;
            for (Promotion promotion : zzrqVar.zzns()) {
                hashMap.putAll(promotion.zzbM(zzc.zzau(i)));
                i++;
            }
            int i2 = 1;
            for (Product product : zzrqVar.zznq()) {
                hashMap.putAll(product.zzbM(zzc.zzas(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry5 : zzrqVar.zznr().entrySet()) {
                String zzax = zzc.zzax(i3);
                int i4 = 1;
                for (Product product2 : entry5.getValue()) {
                    String valueOf = String.valueOf(zzax);
                    String valueOf2 = String.valueOf(zzc.zzav(i4));
                    hashMap.putAll(product2.zzbM(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry5.getKey())) {
                    String valueOf3 = String.valueOf(zzax);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), entry5.getKey());
                }
                i3++;
            }
        }
        zzrp zzrpVar = (zzrp) zzeVar.zza(zzrp.class);
        if (zzrpVar != null) {
            zzb(hashMap, "ul", zzrpVar.getLanguage());
            zza(hashMap, "sd", zzrpVar.zznk());
            zza(hashMap, "sr", zzrpVar.zznl(), zzrpVar.zznm());
            zza(hashMap, "vp", zzrpVar.zznn(), zzrpVar.zzno());
        }
        zzrk zzrkVar = (zzrk) zzeVar.zza(zzrk.class);
        if (zzrkVar != null) {
            zzb(hashMap, "an", zzrkVar.zzmY());
            zzb(hashMap, "aid", zzrkVar.zzke());
            zzb(hashMap, "aiid", zzrkVar.zzna());
            zzb(hashMap, "av", zzrkVar.zzmZ());
        }
        return hashMap;
    }

    private static String zzi(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            return null;
        } else if (obj instanceof Double) {
            Double d = (Double) obj;
            if (d.doubleValue() == 0.0d) {
                return null;
            }
            return zzb(d.doubleValue());
        } else if (!(obj instanceof Boolean)) {
            return String.valueOf(obj);
        } else {
            if (obj == Boolean.FALSE) {
                return null;
            }
            return "1";
        }
    }

    @Override // com.google.android.gms.analytics.zzi
    public void zzb(zze zzeVar) {
        zzac.zzw(zzeVar);
        zzac.zzb(zzeVar.zzmH(), "Can't deliver not submitted measurement");
        zzac.zzdk("deliver should be called on worker thread");
        zze zzmC = zzeVar.zzmC();
        zzrt zzrtVar = (zzrt) zzmC.zzb(zzrt.class);
        if (TextUtils.isEmpty(zzrtVar.zznu())) {
            zznS().zzg(zzc(zzmC), "Ignoring measurement without type");
        } else if (TextUtils.isEmpty(zzrtVar.zzmy())) {
            zznS().zzg(zzc(zzmC), "Ignoring measurement without client id");
        } else if (this.zzabn.zzof().getAppOptOut()) {
        } else {
            double zznz = zzrtVar.zznz();
            if (zztm.zza(zznz, zzrtVar.zzmy())) {
                zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(zznz));
                return;
            }
            Map<String, String> zzc = zzc(zzmC);
            zzc.put("v", "1");
            zzc.put("_v", zzsb.zzadQ);
            zzc.put("tid", this.zzabs);
            if (this.zzabn.zzof().isDryRunEnabled()) {
                zzc("Dry run is enabled. GoogleAnalytics would have sent", zzR(zzc));
                return;
            }
            HashMap hashMap = new HashMap();
            zztm.zzc(hashMap, "uid", zzrtVar.getUserId());
            zzrk zzrkVar = (zzrk) zzeVar.zza(zzrk.class);
            if (zzrkVar != null) {
                zztm.zzc(hashMap, "an", zzrkVar.zzmY());
                zztm.zzc(hashMap, "aid", zzrkVar.zzke());
                zztm.zzc(hashMap, "av", zzrkVar.zzmZ());
                zztm.zzc(hashMap, "aiid", zzrkVar.zzna());
            }
            zzc.put("_s", String.valueOf(zzmA().zza(new zzse(0L, zzrtVar.zzmy(), this.zzabs, !TextUtils.isEmpty(zzrtVar.zznv()), 0L, hashMap))));
            zzmA().zza(new zzsz(zznS(), zzc, zzeVar.zzmF(), true));
        }
    }

    @Override // com.google.android.gms.analytics.zzi
    public Uri zzmr() {
        return this.zzabt;
    }
}
