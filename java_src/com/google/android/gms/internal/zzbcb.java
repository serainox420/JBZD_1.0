package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.internal.zzbfy;
import com.intentsoftware.addapptr.ad.NativeAd;
import com.intentsoftware.addapptr.b.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbcb {
    private final Context mContext;
    private final String zzbEU;
    private int zzbHN;
    private final com.google.android.gms.tagmanager.zzbb zzbJl;
    private final com.google.android.gms.tagmanager.zzay zzbJu;
    private final zzbio zzbKg;
    private zzbgm zzbKl;
    private zzbbi zzbKm;
    private final zzbcd zzbKh = new zzbcd();
    private final zzbiz zzbKi = new zzbiz(new HashMap(50));
    private final zzbiz zzbKj = new zzbiz(new HashMap(10));
    private final Set<String> zzbKk = new HashSet();
    private final zzc zzbKn = new zzc() { // from class: com.google.android.gms.internal.zzbcb.1
        @Override // com.google.android.gms.internal.zzbcb.zzc
        public zzbbi zzSp() {
            return zzbcb.this.zzbKm;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements zzbfy.zza {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzbfy.zza
        public Object zze(String str, Map<String, Object> map) {
            try {
                zzbcb.this.zzbJu.zzf(str, map);
                return null;
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e.getMessage());
                zzbbu.e(valueOf.length() != 0 ? "Error calling customEvaluator proxy:".concat(valueOf) : new String("Error calling customEvaluator proxy:"));
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements zzbfy.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.internal.zzbfy.zza
        public Object zze(String str, Map<String, Object> map) {
            try {
                return zzbcb.this.zzbJu.zzg(str, map);
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e.getMessage());
                zzbbu.e(valueOf.length() != 0 ? "Error calling customEvaluator proxy:".concat(valueOf) : new String("Error calling customEvaluator proxy:"));
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface zzc {
        zzbbi zzSp();
    }

    public zzbcb(Context context, String str, zzbio zzbioVar, zzbir zzbirVar, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar) {
        com.google.android.gms.common.internal.zzac.zzb(zzbioVar, "Internal Error: Container resource cannot be null");
        com.google.android.gms.common.internal.zzac.zzb(zzbirVar, "Internal Error: Runtime resource cannot be null");
        com.google.android.gms.common.internal.zzac.zzh(str, "Internal Error: ContainerId cannot be empty");
        com.google.android.gms.common.internal.zzac.zzw(zzbbVar);
        com.google.android.gms.common.internal.zzac.zzw(zzayVar);
        this.mContext = context;
        this.zzbEU = str;
        this.zzbKg = zzbioVar;
        this.zzbJl = zzbbVar;
        this.zzbJu = zzayVar;
        zzSi();
        zzSj();
        zzSk();
        zzSl();
        zzSm();
        zza(zzbirVar);
        zzSn();
    }

    private String zzC(String str, int i) {
        switch (i) {
            case 12:
                return zzhL(str);
            default:
                zzbbu.e(new StringBuilder(39).append("Unsupported Value Escaping: ").append(i).toString());
                return str;
        }
    }

    private String zzRp() {
        if (this.zzbHN <= 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.zzbHN));
        for (int i = 2; i < this.zzbHN; i++) {
            sb.append(' ');
        }
        sb.append(": ");
        return sb.toString();
    }

    private void zzSi() {
        this.zzbKh.zza("1", new zzbiw(new zzbdm()));
        this.zzbKh.zza(a.PROTOCOL_VERSION, new zzbiw(new zzbdn()));
        this.zzbKh.zza("18", new zzbiw(new zzbdo()));
        this.zzbKh.zza("19", new zzbiw(new zzbdp()));
        this.zzbKh.zza("20", new zzbiw(new zzbdq()));
        this.zzbKh.zza("21", new zzbiw(new zzbdr()));
        this.zzbKh.zza("23", new zzbiw(new zzbds()));
        this.zzbKh.zza("24", new zzbiw(new zzbdt()));
        this.zzbKh.zza("27", new zzbiw(new zzbdu()));
        this.zzbKh.zza("28", new zzbiw(new zzbdv()));
        this.zzbKh.zza("29", new zzbiw(new zzbdw()));
        this.zzbKh.zza("30", new zzbiw(new zzbdx()));
        this.zzbKh.zza("32", new zzbiw(new zzbdy()));
        this.zzbKh.zza("33", new zzbiw(new zzbdy()));
        this.zzbKh.zza("34", new zzbiw(new zzbdz()));
        this.zzbKh.zza("35", new zzbiw(new zzbdz()));
        this.zzbKh.zza("39", new zzbiw(new zzbea()));
        this.zzbKh.zza("40", new zzbiw(new zzbeb()));
    }

    private void zzSj() {
        this.zzbKh.zza(AppEventsConstants.EVENT_PARAM_VALUE_NO, new zzbiw(new zzbey()));
        this.zzbKh.zza("10", new zzbiw(new zzbez()));
        this.zzbKh.zza("25", new zzbiw(new zzbfa()));
        this.zzbKh.zza("26", new zzbiw(new zzbfb()));
        this.zzbKh.zza("37", new zzbiw(new zzbfc()));
    }

    private void zzSk() {
        this.zzbKh.zza("2", new zzbiw(new zzbec()));
        this.zzbKh.zza("3", new zzbiw(new zzbed()));
        this.zzbKh.zza("4", new zzbiw(new zzbee()));
        this.zzbKh.zza("5", new zzbiw(new zzbef()));
        this.zzbKh.zza("6", new zzbiw(new zzbeg()));
        this.zzbKh.zza("7", new zzbiw(new zzbeh()));
        this.zzbKh.zza("8", new zzbiw(new zzbei()));
        this.zzbKh.zza("9", new zzbiw(new zzbef()));
        this.zzbKh.zza("13", new zzbiw(new zzbej()));
        this.zzbKh.zza("47", new zzbiw(new zzbek()));
        this.zzbKh.zza("15", new zzbiw(new zzbel()));
        this.zzbKh.zza("48", new zzbiw(new zzbem(this)));
        zzben zzbenVar = new zzben();
        this.zzbKh.zza("16", new zzbiw(zzbenVar));
        this.zzbKh.zza("17", new zzbiw(zzbenVar));
        this.zzbKh.zza("22", new zzbiw(new zzbep()));
        this.zzbKh.zza("45", new zzbiw(new zzbeq()));
        this.zzbKh.zza("46", new zzbiw(new zzber()));
        this.zzbKh.zza("36", new zzbiw(new zzbes()));
        this.zzbKh.zza("43", new zzbiw(new zzbet()));
        this.zzbKh.zza("38", new zzbiw(new zzbeu()));
        this.zzbKh.zza("44", new zzbiw(new zzbev()));
        this.zzbKh.zza("41", new zzbiw(new zzbew()));
        this.zzbKh.zza("42", new zzbiw(new zzbex()));
    }

    private void zzSl() {
        zza(zzah.CONTAINS, new zzbhj());
        zza(zzah.ENDS_WITH, new zzbhk());
        zza(zzah.EQUALS, new zzbhl());
        zza(zzah.GREATER_EQUALS, new zzbhm());
        zza(zzah.GREATER_THAN, new zzbhn());
        zza(zzah.LESS_EQUALS, new zzbho());
        zza(zzah.LESS_THAN, new zzbhp());
        zza(zzah.REGEX, new zzbhr());
        zza(zzah.STARTS_WITH, new zzbhs());
        this.zzbKi.zzc("advertiserId", new zzbiw(new zzbgc(this.mContext)));
        this.zzbKi.zzc("advertiserTrackingEnabled", new zzbiw(new zzbgd(this.mContext)));
        this.zzbKi.zzc("adwordsClickReferrer", new zzbiw(new zzbge(this.mContext, this.zzbKn)));
        this.zzbKi.zzc("applicationId", new zzbiw(new zzbgf(this.mContext)));
        this.zzbKi.zzc("applicationName", new zzbiw(new zzbgg(this.mContext)));
        this.zzbKi.zzc("applicationVersion", new zzbiw(new zzbgh(this.mContext)));
        this.zzbKi.zzc("applicationVersionName", new zzbiw(new zzbgi(this.mContext)));
        this.zzbKi.zzc("arbitraryPixieMacro", new zzbiw(new zzbfz(1, this.zzbKh)));
        this.zzbKi.zzc("carrier", new zzbiw(new zzbgj(this.mContext)));
        this.zzbKi.zzc("constant", new zzbiw(new zzbes()));
        this.zzbKi.zzc("containerId", new zzbiw(new zzbgk(new zzbjb(this.zzbEU))));
        this.zzbKi.zzc("containerVersion", new zzbiw(new zzbgk(new zzbjb(this.zzbKg.getVersion()))));
        this.zzbKi.zzc("customMacro", new zzbiw(new zzbfy(new zzb())));
        this.zzbKi.zzc("deviceBrand", new zzbiw(new zzbgn()));
        this.zzbKi.zzc("deviceId", new zzbiw(new zzbgo(this.mContext)));
        this.zzbKi.zzc("deviceModel", new zzbiw(new zzbgp()));
        this.zzbKi.zzc("deviceName", new zzbiw(new zzbgq()));
        this.zzbKi.zzc("encode", new zzbiw(new zzbgr()));
        this.zzbKi.zzc("encrypt", new zzbiw(new zzbgs()));
        this.zzbKi.zzc("event", new zzbiw(new zzbgl()));
        this.zzbKi.zzc("eventParameters", new zzbiw(new zzbgt(this.zzbKn)));
        this.zzbKi.zzc("version", new zzbiw(new zzbgu()));
        this.zzbKi.zzc("hashcode", new zzbiw(new zzbgv()));
        this.zzbKi.zzc("installReferrer", new zzbiw(new zzbgw(this.mContext)));
        this.zzbKi.zzc("join", new zzbiw(new zzbgx()));
        this.zzbKi.zzc("language", new zzbiw(new zzbgy()));
        this.zzbKi.zzc("locale", new zzbiw(new zzbgz()));
        this.zzbKi.zzc("adWordsUniqueId", new zzbiw(new zzbhb(this.mContext)));
        this.zzbKi.zzc("osVersion", new zzbiw(new zzbhc()));
        this.zzbKi.zzc("platform", new zzbiw(new zzbhd()));
        this.zzbKi.zzc("random", new zzbiw(new zzbhe()));
        this.zzbKi.zzc("regexGroup", new zzbiw(new zzbhf()));
        this.zzbKi.zzc("resolution", new zzbiw(new zzbhh(this.mContext)));
        this.zzbKi.zzc("runtimeVersion", new zzbiw(new zzbhg()));
        this.zzbKi.zzc("sdkVersion", new zzbiw(new zzbhi()));
        this.zzbKl = new zzbgm();
        this.zzbKi.zzc("currentTime", new zzbiw(this.zzbKl));
        this.zzbKi.zzc("userProperty", new zzbiw(new zzbha(this.mContext, this.zzbKn)));
        this.zzbKi.zzc("arbitraryPixel", new zzbiw(new zzbhv(zzbbg.zzce(this.mContext))));
        this.zzbKi.zzc("customTag", new zzbiw(new zzbfy(new zza())));
        this.zzbKi.zzc("universalAnalytics", new zzbiw(new zzbhw(this.mContext, this.zzbKn)));
        this.zzbKi.zzc("queueRequest", new zzbiw(new zzbht(zzbbg.zzce(this.mContext))));
        this.zzbKi.zzc("sendMeasurement", new zzbiw(new zzbhu(this.zzbJl, this.zzbKn)));
        this.zzbKi.zzc("arbitraryPixieTag", new zzbiw(new zzbfz(0, this.zzbKh)));
        this.zzbKi.zzc("suppressPassthrough", new zzbiw(new zzbgb(this.mContext, this.zzbKn)));
    }

    private void zzSm() {
        this.zzbKj.zzc("decodeURI", new zzbiw(new zzbft()));
        this.zzbKj.zzc("decodeURIComponent", new zzbiw(new zzbfu()));
        this.zzbKj.zzc("encodeURI", new zzbiw(new zzbfv()));
        this.zzbKj.zzc("encodeURIComponent", new zzbiw(new zzbfw()));
        this.zzbKj.zzc("log", new zzbiw(new zzbga()));
        this.zzbKj.zzc("isArray", new zzbiw(new zzbfx()));
    }

    private void zzSn() {
        zzbiz zzbizVar = new zzbiz(new HashMap(1));
        zzbizVar.zzc("mobile", this.zzbKi);
        zzbizVar.zzc("common", this.zzbKj);
        this.zzbKh.zza("gtmUtils", zzbizVar);
        zzbiz zzbizVar2 = new zzbiz(new HashMap(this.zzbKi.zzTi()));
        zzbizVar2.zzTs();
        zzbiz zzbizVar3 = new zzbiz(new HashMap(this.zzbKj.zzTi()));
        zzbizVar3.zzTs();
        if (this.zzbKh.has(NativeAd.MAIN_IMAGE_ASSET) && (this.zzbKh.zzhM(NativeAd.MAIN_IMAGE_ASSET) instanceof zzbiw)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzbizVar);
            zzbjc.zza(this.zzbKh, new zzbja(NativeAd.MAIN_IMAGE_ASSET, arrayList));
        }
        this.zzbKi.zzc("base", zzbizVar2);
        this.zzbKj.zzc("base", zzbizVar3);
        zzbizVar.zzTs();
        this.zzbKi.zzTs();
        this.zzbKj.zzTs();
    }

    private zzbit<?> zza(zzbis zzbisVar) {
        switch (zzbisVar.getType()) {
            case 1:
                try {
                    return new zzbiv(Double.valueOf(Double.parseDouble((String) zzbisVar.getValue())));
                } catch (NumberFormatException e) {
                    return new zzbjb((String) zzbisVar.getValue());
                }
            case 2:
                List<zzbis> list = (List) zzbisVar.getValue();
                ArrayList arrayList = new ArrayList(list.size());
                for (zzbis zzbisVar2 : list) {
                    arrayList.add(zza(zzbisVar2));
                }
                return new zzbiy(arrayList);
            case 3:
                Map map = (Map) zzbisVar.getValue();
                HashMap hashMap = new HashMap(map.size());
                for (Map.Entry entry : map.entrySet()) {
                    hashMap.put(zzbcr.zzd(zza((zzbis) entry.getKey())), zza((zzbis) entry.getValue()));
                }
                return new zzbiz(hashMap);
            case 4:
                zzbit<?> zzhJ = zzhJ((String) zzbisVar.getValue());
                return (!(zzhJ instanceof zzbjb) || zzbisVar.zzTf().isEmpty()) ? zzhJ : new zzbjb(zze((String) ((zzbjb) zzhJ).zzTi(), zzbisVar.zzTf()));
            case 5:
                return new zzbjb((String) zzbisVar.getValue());
            case 6:
                return new zzbiv(Double.valueOf(((Integer) zzbisVar.getValue()).doubleValue()));
            case 7:
                StringBuilder sb = new StringBuilder();
                for (zzbis zzbisVar3 : (List) zzbisVar.getValue()) {
                    sb.append(zzbcr.zzd(zza(zzbisVar3)));
                }
                return new zzbjb(sb.toString());
            case 8:
                return new zzbiu((Boolean) zzbisVar.getValue());
            default:
                throw new IllegalStateException(new StringBuilder(52).append("Attempting to expand unknown Value type ").append(zzbisVar.getType()).append(".").toString());
        }
    }

    private void zza(zzah zzahVar, zzbcq zzbcqVar) {
        this.zzbKi.zzc(zzbco.zza(zzahVar), new zzbiw(zzbcqVar));
    }

    private void zza(zzbir zzbirVar) {
        for (zzbcp zzbcpVar : zzbirVar.zzTd()) {
            zzbcpVar.zza(this.zzbKh);
            this.zzbKh.zza(zzbcpVar.getName(), new zzbiw(zzbcpVar));
        }
    }

    private boolean zza(zzbip zzbipVar) {
        zzbis zzbisVar = zzbipVar.zzSW().get(zzai.DISPATCH_ON_FIRE.toString());
        return zzbisVar != null && zzbisVar.getType() == 8 && ((Boolean) zzbisVar.getValue()).booleanValue();
    }

    private Map<String, zzbit<?>> zzao(Map<String, zzbis> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, zzbis> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), zza(entry.getValue()));
        }
        return hashMap;
    }

    private zzbit zzap(Map<String, zzbit<?>> map) {
        zzbja zzi;
        if (map == null) {
            zzbbe.zzb("executeFunctionCall: cannot access the function parameters.", this.mContext);
            return zzbix.zzbMS;
        }
        zzbit<?> zzbitVar = map.get(zzai.FUNCTION.toString());
        if (!(zzbitVar instanceof zzbjb)) {
            zzbbe.zzb("No function id in properties", this.mContext);
            return zzbix.zzbMS;
        }
        String str = (String) ((zzbjb) zzbitVar).zzTi();
        if (this.zzbKh.has(str)) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, zzbit<?>> entry : map.entrySet()) {
                if (entry.getKey().startsWith("vtp_")) {
                    hashMap.put(entry.getKey().substring(4), entry.getValue());
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new zzbiz(hashMap));
            zzi = new zzbja(str, arrayList);
        } else if (!zzhK(str)) {
            zzbbe.zzb(new StringBuilder(String.valueOf(str).length() + 30).append("functionId '").append(str).append("' is not supported").toString(), this.mContext);
            return zzbix.zzbMS;
        } else {
            zzi = zzi(str, map);
        }
        if (zzi == null) {
            zzbbe.zzb("Internal error: failed to convert function to a valid statement", this.mContext);
            return zzbix.zzbMS;
        }
        String valueOf = String.valueOf(zzi.zzTt());
        zzbbu.v(valueOf.length() != 0 ? "Executing: ".concat(valueOf) : new String("Executing: "));
        zzbit zza2 = zzbjc.zza(this.zzbKh, zzi);
        return (!(zza2 instanceof zzbix) || !((zzbix) zza2).zzTp()) ? zza2 : ((zzbix) zza2).zzTi();
    }

    private String zze(String str, List<Integer> list) {
        for (Integer num : list) {
            str = zzC(str, num.intValue());
        }
        return str;
    }

    private zzbit<?> zzhJ(String str) {
        this.zzbHN++;
        String valueOf = String.valueOf(zzRp());
        zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 31 + String.valueOf(str).length()).append(valueOf).append("Beginning to evaluate variable ").append(str).toString());
        if (this.zzbKk.contains(str)) {
            this.zzbHN--;
            String valueOf2 = String.valueOf(this.zzbKk.toString());
            throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 77 + String.valueOf(valueOf2).length()).append("Macro cycle detected.  Current macro reference: ").append(str).append(". Previous macro references: ").append(valueOf2).toString());
        }
        this.zzbKk.add(str);
        zzbip zzhZ = this.zzbKg.zzhZ(str);
        if (zzhZ == null) {
            this.zzbHN--;
            this.zzbKk.remove(str);
            String valueOf3 = String.valueOf(zzRp());
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf3).length() + 36 + String.valueOf(str).length()).append(valueOf3).append("Attempting to resolve unknown macro ").append(str).toString());
        }
        zzbit<?> zzap = zzap(zzao(zzhZ.zzSW()));
        String valueOf4 = String.valueOf(zzRp());
        zzbbu.v(new StringBuilder(String.valueOf(valueOf4).length() + 25 + String.valueOf(str).length()).append(valueOf4).append("Done evaluating variable ").append(str).toString());
        this.zzbHN--;
        this.zzbKk.remove(str);
        return zzap;
    }

    private boolean zzhK(String str) {
        String zzhO = zzbco.zzhO(str);
        return zzhO != null && this.zzbKi.zzic(zzhO);
    }

    private String zzhL(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
        } catch (UnsupportedEncodingException e) {
            zzbbu.zzb("Escape URI: unsupported encoding", e);
            return str;
        }
    }

    private zzbja zzi(String str, Map<String, zzbit<?>> map) {
        try {
            return zzbco.zza(str, map, zzSo());
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbu.e(new StringBuilder(String.valueOf(str).length() + 30 + String.valueOf(valueOf).length()).append("Incorrect keys for function ").append(str).append(". ").append(valueOf).toString());
            return null;
        }
    }

    public void dispatch() {
        zzbbg.zzce(this.mContext).dispatch();
    }

    zzbcd zzSo() {
        return this.zzbKh;
    }

    zzbit<?> zza(zzbiq zzbiqVar, Map<zzbip, zzbit<?>> map) {
        String valueOf = String.valueOf(zzbiqVar);
        zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Evaluating trigger ").append(valueOf).toString());
        for (zzbip zzbipVar : zzbiqVar.zzSZ()) {
            zzbit<?> zzbitVar = map.get(zzbipVar);
            if (zzbitVar == null) {
                zzbitVar = zzb(zzbipVar);
                map.put(zzbipVar, zzbitVar);
            }
            zzbit<?> zzbitVar2 = zzbitVar;
            if (zzbitVar2 == zzbix.zzbMR) {
                return zzbix.zzbMR;
            }
            if (((Boolean) ((zzbiu) zzbitVar2).zzTi()).booleanValue()) {
                return new zzbiu(false);
            }
        }
        for (zzbip zzbipVar2 : zzbiqVar.zzSY()) {
            zzbit<?> zzbitVar3 = map.get(zzbipVar2);
            if (zzbitVar3 == null) {
                zzbitVar3 = zzb(zzbipVar2);
                map.put(zzbipVar2, zzbitVar3);
            }
            zzbit<?> zzbitVar4 = zzbitVar3;
            if (zzbitVar4 == zzbix.zzbMR) {
                return zzbix.zzbMR;
            }
            if (!((Boolean) ((zzbiu) zzbitVar4).zzTi()).booleanValue()) {
                return new zzbiu(false);
            }
        }
        return new zzbiu(true);
    }

    zzbit<?> zzb(zzbip zzbipVar) {
        this.zzbKk.clear();
        try {
            zzbit<?> zzap = zzap(zzao(zzbipVar.zzSW()));
            if (zzap instanceof zzbiu) {
                return zzap;
            }
            zzbbe.zzb("Predicate must return a boolean value", this.mContext);
            return new zzbiu(false);
        } catch (IllegalStateException e) {
            zzbbu.e("Error evaluating predicate.");
            return zzbix.zzbMR;
        }
    }

    public void zzb(zzbbi zzbbiVar) {
        boolean z;
        this.zzbKh.zza("gtm.globals.eventName", new zzbjb(zzbbiVar.zzRU()));
        this.zzbKl.zza(zzbbiVar);
        this.zzbKm = zzbbiVar;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashMap hashMap = new HashMap();
        for (zzbiq zzbiqVar : this.zzbKg.zzSU()) {
            if (!zzbiqVar.zzTa().isEmpty() || !zzbiqVar.zzTb().isEmpty()) {
                zzbit<?> zza2 = zza(zzbiqVar, hashMap);
                if (zza2 == zzbix.zzbMR) {
                    String valueOf = String.valueOf(zzbiqVar);
                    zzbbe.zzc(new StringBuilder(String.valueOf(valueOf).length() + 41).append("Error encounted while evaluating trigger ").append(valueOf).toString(), this.mContext);
                    if (!zzbiqVar.zzTb().isEmpty()) {
                        String valueOf2 = String.valueOf(zzbiqVar.zzTb());
                        zzbbu.v(new StringBuilder(String.valueOf(valueOf2).length() + 15).append("Blocking tags: ").append(valueOf2).toString());
                        hashSet2.addAll(zzbiqVar.zzTb());
                    }
                } else if (((Boolean) ((zzbiu) zza2).zzTi()).booleanValue()) {
                    String valueOf3 = String.valueOf(zzbiqVar);
                    zzbbu.v(new StringBuilder(String.valueOf(valueOf3).length() + 19).append("Trigger is firing: ").append(valueOf3).toString());
                    if (!zzbiqVar.zzTa().isEmpty()) {
                        String valueOf4 = String.valueOf(zzbiqVar.zzTa());
                        zzbbu.v(new StringBuilder(String.valueOf(valueOf4).length() + 34).append("Adding tags to firing candidates: ").append(valueOf4).toString());
                        hashSet.addAll(zzbiqVar.zzTa());
                    }
                    if (!zzbiqVar.zzTb().isEmpty()) {
                        String valueOf5 = String.valueOf(zzbiqVar.zzTb());
                        zzbbu.v(new StringBuilder(String.valueOf(valueOf5).length() + 24).append("Blocking disabled tags: ").append(valueOf5).toString());
                        hashSet2.addAll(zzbiqVar.zzTb());
                    }
                }
            } else {
                String valueOf6 = String.valueOf(zzbiqVar);
                zzbbu.v(new StringBuilder(String.valueOf(valueOf6).length() + 64).append("Trigger is not being evaluated since it has no associated tags: ").append(valueOf6).toString());
            }
        }
        hashSet.removeAll(hashSet2);
        boolean z2 = false;
        Iterator it = hashSet.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            zzbip zzbipVar = (zzbip) it.next();
            this.zzbKk.clear();
            String valueOf7 = String.valueOf(zzbipVar);
            zzbbu.v(new StringBuilder(String.valueOf(valueOf7).length() + 21).append("Executing firing tag ").append(valueOf7).toString());
            try {
                zzap(zzao(zzbipVar.zzSW()));
                if (zza(zzbipVar)) {
                    z = true;
                    String valueOf8 = String.valueOf(zzbipVar);
                    zzbbu.v(new StringBuilder(String.valueOf(valueOf8).length() + 36).append("Tag configured to dispatch on fire: ").append(valueOf8).toString());
                }
            } catch (IllegalStateException e) {
                String valueOf9 = String.valueOf(zzbipVar);
                zzbbe.zza(new StringBuilder(String.valueOf(valueOf9).length() + 19).append("Error firing tag ").append(valueOf9).append(": ").toString(), e, this.mContext);
            }
            z2 = z;
        }
        this.zzbKh.remove("gtm.globals.eventName");
        if (zzbbiVar.zzRX()) {
            String valueOf10 = String.valueOf(zzbbiVar.zzRU());
            zzbbu.v(new StringBuilder(String.valueOf(valueOf10).length() + 35).append("Log passthrough event ").append(valueOf10).append(" to Firebase.").toString());
            try {
                this.zzbJl.zza(zzbbiVar.zzRW(), zzbbiVar.zzRU(), zzbbiVar.zzRV(), zzbbiVar.currentTimeMillis());
            } catch (RemoteException e2) {
                zzbbe.zza("Error calling measurement proxy: ", e2, this.mContext);
            }
        } else {
            String valueOf11 = String.valueOf(zzbbiVar.zzRU());
            zzbbu.v(new StringBuilder(String.valueOf(valueOf11).length() + 63).append("Non-passthrough event ").append(valueOf11).append(" doesn't get logged to Firebase directly.").toString());
        }
        if (z) {
            zzbbu.v("Dispatch called for dispatchOnFire tags.");
            dispatch();
        }
    }

    public zzbit<?> zzhI(String str) {
        if (this.zzbKk.contains(str)) {
            String valueOf = String.valueOf(this.zzbKk.toString());
            throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 77 + String.valueOf(valueOf).length()).append("Macro cycle detected.  Current macro reference: ").append(str).append(". Previous macro references: ").append(valueOf).toString());
        }
        this.zzbHN = 0;
        return zzhJ(str);
    }
}
