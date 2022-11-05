package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public final class zznf {
    private String zzGr;
    private final zzmk zzLo;
    private List<String> zzQx;
    private String zzTR;
    private String zzTS;
    private List<String> zzTT;
    private String zzTU;
    private String zzTV;
    private String zzTW;
    private List<String> zzTX;
    private zzoo zzUj;
    private List<String> zzUk;
    private List<String> zzUl;
    private zzmp zzUn;
    private String zzUp;
    private List<String> zzUq;
    private boolean zzUr;
    private String zzUs;
    private zzor zzUt;
    private boolean zzUu;
    private long zzTY = -1;
    private boolean zzTZ = false;
    private final long zzUa = -1;
    private long zzUb = -1;
    private int mOrientation = -1;
    private boolean zzUc = false;
    private boolean zzUd = false;
    private boolean zzUe = false;
    private boolean zzUf = true;
    private boolean zzUg = true;
    private String zzUh = "";
    private boolean zzUi = false;
    private boolean zzLa = false;
    private boolean zzUm = false;
    private boolean zzUo = false;

    public zznf(zzmk zzmkVar, String str) {
        this.zzTS = str;
        this.zzLo = zzmkVar;
    }

    private void zzA(Map<String, List<String>> map) {
        List<String> list = map.get("X-Afma-Use-HTTPS");
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzUe = Boolean.valueOf(list.get(0)).booleanValue();
    }

    private void zzB(Map<String, List<String>> map) {
        List<String> list = map.get("X-Afma-Content-Url-Opted-Out");
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzUf = Boolean.valueOf(list.get(0)).booleanValue();
    }

    private void zzC(Map<String, List<String>> map) {
        List<String> list = map.get("X-Afma-Content-Vertical-Opted-Out");
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzUg = Boolean.valueOf(list.get(0)).booleanValue();
    }

    private void zzD(Map<String, List<String>> map) {
        List<String> list = map.get("X-Afma-Gws-Query-Id");
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzUh = list.get(0);
    }

    private void zzE(Map<String, List<String>> map) {
        String zzc = zzc(map, "X-Afma-Fluid");
        if (zzc == null || !zzc.equals("height")) {
            return;
        }
        this.zzUi = true;
    }

    private void zzF(Map<String, List<String>> map) {
        this.zzLa = "native_express".equals(zzc(map, "X-Afma-Ad-Format"));
    }

    private void zzG(Map<String, List<String>> map) {
        this.zzUj = zzoo.zzaR(zzc(map, "X-Afma-Rewards"));
    }

    private void zzH(Map<String, List<String>> map) {
        if (this.zzUk != null) {
            return;
        }
        this.zzUk = zze(map, "X-Afma-Reward-Video-Start-Urls");
    }

    private void zzI(Map<String, List<String>> map) {
        if (this.zzUl != null) {
            return;
        }
        this.zzUl = zze(map, "X-Afma-Reward-Video-Complete-Urls");
    }

    private void zzJ(Map<String, List<String>> map) {
        this.zzUm |= zzf(map, "X-Afma-Use-Displayed-Impression");
    }

    private void zzK(Map<String, List<String>> map) {
        this.zzUo |= zzf(map, "X-Afma-Auto-Collect-Location");
    }

    private void zzL(Map<String, List<String>> map) {
        List<String> zze = zze(map, "X-Afma-Remote-Ping-Urls");
        if (zze != null) {
            this.zzUq = zze;
        }
    }

    private void zzM(Map<String, List<String>> map) {
        String zzc = zzc(map, "X-Afma-Auto-Protection-Configuration");
        if (zzc != null && !TextUtils.isEmpty(zzc)) {
            try {
                this.zzUn = zzmp.zzf(new JSONObject(zzc));
                return;
            } catch (JSONException e) {
                zzpk.zzc("Error parsing configuration JSON", e);
                this.zzUn = new zzmp();
                return;
            }
        }
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204").buildUpon();
        buildUpon.appendQueryParameter("id", "gmob-apps-blocked-navigation");
        if (!TextUtils.isEmpty(this.zzTV)) {
            buildUpon.appendQueryParameter("debugDialog", this.zzTV);
        }
        boolean booleanValue = zzgd.zzBp.get().booleanValue();
        String valueOf = String.valueOf(buildUpon.toString());
        String valueOf2 = String.valueOf("navigationURL");
        this.zzUn = new zzmp(booleanValue, Arrays.asList(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append(valueOf).append("&").append(valueOf2).append("={NAVIGATION_URL}").toString()));
    }

    private void zzN(Map<String, List<String>> map) {
        this.zzUp = zzc(map, "Set-Cookie");
    }

    private void zzO(Map<String, List<String>> map) {
        String zzc = zzc(map, "X-Afma-Safe-Browsing");
        if (TextUtils.isEmpty(zzc)) {
            return;
        }
        try {
            this.zzUt = zzor.zzh(new JSONObject(zzc));
        } catch (JSONException e) {
            zzpk.zzc("Error parsing safe browsing header", e);
        }
    }

    private void zzP(Map<String, List<String>> map) {
        String zzc = zzc(map, "X-Afma-Pool");
        if (TextUtils.isEmpty(zzc)) {
            return;
        }
        try {
            this.zzUu = new JSONObject(zzc).getBoolean("never_pool");
        } catch (JSONException e) {
            zzpk.zzc("Error parsing interstitial pool header", e);
        }
    }

    static String zzc(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    static long zzd(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        if (list != null && !list.isEmpty()) {
            String str2 = list.get(0);
            try {
                return Float.parseFloat(str2) * 1000.0f;
            } catch (NumberFormatException e) {
                zzpk.zzbh(new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(str2).length()).append("Could not parse float from ").append(str).append(" header: ").append(str2).toString());
            }
        }
        return -1L;
    }

    static List<String> zze(Map<String, List<String>> map, String str) {
        String str2;
        List<String> list = map.get(str);
        if (list == null || list.isEmpty() || (str2 = list.get(0)) == null) {
            return null;
        }
        return Arrays.asList(str2.trim().split("\\s+"));
    }

    private boolean zzf(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        return list != null && !list.isEmpty() && Boolean.valueOf(list.get(0)).booleanValue();
    }

    private void zzl(Map<String, List<String>> map) {
        this.zzTR = zzc(map, "X-Afma-Ad-Size");
    }

    private void zzm(Map<String, List<String>> map) {
        this.zzUs = zzc(map, "X-Afma-Ad-Slot-Size");
    }

    private void zzn(Map<String, List<String>> map) {
        List<String> zze = zze(map, "X-Afma-Click-Tracking-Urls");
        if (zze != null) {
            this.zzTT = zze;
        }
    }

    private void zzo(Map<String, List<String>> map) {
        this.zzTU = zzc(map, "X-Afma-Debug-Signals");
    }

    private void zzp(Map<String, List<String>> map) {
        List<String> list = map.get("X-Afma-Debug-Dialog");
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzTV = list.get(0);
    }

    private void zzq(Map<String, List<String>> map) {
        List<String> zze = zze(map, "X-Afma-Tracking-Urls");
        if (zze != null) {
            this.zzTX = zze;
        }
    }

    private void zzr(Map<String, List<String>> map) {
        long zzd = zzd(map, "X-Afma-Interstitial-Timeout");
        if (zzd != -1) {
            this.zzTY = zzd;
        }
    }

    private void zzs(Map<String, List<String>> map) {
        this.zzTW = zzc(map, "X-Afma-ActiveView");
    }

    private void zzt(Map<String, List<String>> map) {
        this.zzUd = "native".equals(zzc(map, "X-Afma-Ad-Format"));
    }

    private void zzu(Map<String, List<String>> map) {
        this.zzUc |= zzf(map, "X-Afma-Custom-Rendering-Allowed");
    }

    private void zzv(Map<String, List<String>> map) {
        this.zzTZ |= zzf(map, "X-Afma-Mediation");
    }

    private void zzw(Map<String, List<String>> map) {
        this.zzUr |= zzf(map, "X-Afma-Render-In-Browser");
    }

    private void zzx(Map<String, List<String>> map) {
        List<String> zze = zze(map, "X-Afma-Manual-Tracking-Urls");
        if (zze != null) {
            this.zzQx = zze;
        }
    }

    private void zzy(Map<String, List<String>> map) {
        long zzd = zzd(map, "X-Afma-Refresh-Rate");
        if (zzd != -1) {
            this.zzUb = zzd;
        }
    }

    private void zzz(Map<String, List<String>> map) {
        List<String> list = map.get("X-Afma-Orientation");
        if (list == null || list.isEmpty()) {
            return;
        }
        String str = list.get(0);
        if ("portrait".equalsIgnoreCase(str)) {
            this.mOrientation = com.google.android.gms.ads.internal.zzw.zzcO().zzkR();
        } else if (!"landscape".equalsIgnoreCase(str)) {
        } else {
            this.mOrientation = com.google.android.gms.ads.internal.zzw.zzcO().zzkQ();
        }
    }

    public void zzb(String str, Map<String, List<String>> map, String str2) {
        this.zzGr = str2;
        zzk(map);
    }

    public zzmn zzj(long j) {
        return new zzmn(this.zzLo, this.zzTS, this.zzGr, this.zzTT, this.zzTX, this.zzTY, this.zzTZ, -1L, this.zzQx, this.zzUb, this.mOrientation, this.zzTR, j, this.zzTV, this.zzTW, this.zzUc, this.zzUd, this.zzUe, this.zzUf, false, this.zzUh, this.zzUi, this.zzLa, this.zzUj, this.zzUk, this.zzUl, this.zzUm, this.zzUn, this.zzUo, this.zzUp, this.zzUq, this.zzUr, this.zzUs, this.zzUt, this.zzTU, this.zzUg, this.zzUu);
    }

    public void zzk(Map<String, List<String>> map) {
        zzl(map);
        zzm(map);
        zzn(map);
        zzo(map);
        zzp(map);
        zzq(map);
        zzr(map);
        zzv(map);
        zzx(map);
        zzy(map);
        zzz(map);
        zzs(map);
        zzA(map);
        zzu(map);
        zzt(map);
        zzB(map);
        zzC(map);
        zzD(map);
        zzE(map);
        zzF(map);
        zzG(map);
        zzH(map);
        zzI(map);
        zzJ(map);
        zzK(map);
        zzN(map);
        zzM(map);
        zzL(map);
        zzO(map);
        zzw(map);
        zzP(map);
    }
}
