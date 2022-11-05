package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.AdType;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public final class zzil implements zzid {
    private final com.google.android.gms.ads.internal.zzf zzIo;
    private final zzkr zzIp;
    private final zzif zzIr;

    /* loaded from: classes2.dex */
    public static class zza {
        private final zzqw zzIs;

        public zza(zzqw zzqwVar) {
            this.zzIs = zzqwVar;
        }

        public Intent zza(Context context, Map<String, String> map) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
            ResolveInfo zza;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            String str = map.get("u");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (this.zzIs != null) {
                str = com.google.android.gms.ads.internal.zzw.zzcM().zza(this.zzIs, str);
            }
            Uri parse = Uri.parse(str);
            boolean parseBoolean = Boolean.parseBoolean(map.get("use_first_package"));
            boolean parseBoolean2 = Boolean.parseBoolean(map.get("use_running_process"));
            Uri build = "http".equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme("https").build() : "https".equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme("http").build() : null;
            ArrayList<ResolveInfo> arrayList = new ArrayList<>();
            Intent zzf = zzf(parse);
            Intent zzf2 = zzf(build);
            ResolveInfo zza2 = zza(context, zzf, arrayList);
            if (zza2 != null) {
                return zza(zzf, zza2);
            }
            if (zzf2 != null && (zza = zza(context, zzf2)) != null) {
                Intent zza3 = zza(zzf, zza);
                if (zza(context, zza3) != null) {
                    return zza3;
                }
            }
            if (arrayList.size() == 0) {
                return zzf;
            }
            if (parseBoolean2 && activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                Iterator<ResolveInfo> it = arrayList.iterator();
                while (it.hasNext()) {
                    ResolveInfo next = it.next();
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (runningAppProcessInfo.processName.equals(next.activityInfo.packageName)) {
                            return zza(zzf, next);
                        }
                    }
                }
            }
            return parseBoolean ? zza(zzf, arrayList.get(0)) : zzf;
        }

        public Intent zza(Intent intent, ResolveInfo resolveInfo) {
            Intent intent2 = new Intent(intent);
            intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            return intent2;
        }

        public ResolveInfo zza(Context context, Intent intent) {
            return zza(context, intent, new ArrayList<>());
        }

        public ResolveInfo zza(Context context, Intent intent, ArrayList<ResolveInfo> arrayList) {
            ResolveInfo resolveInfo;
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= queryIntentActivities.size()) {
                        break;
                    }
                    ResolveInfo resolveInfo2 = queryIntentActivities.get(i2);
                    if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                        resolveInfo = resolveActivity;
                        break;
                    }
                    i = i2 + 1;
                }
            }
            resolveInfo = null;
            arrayList.addAll(queryIntentActivities);
            return resolveInfo;
        }

        public Intent zzf(Uri uri) {
            if (uri == null) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            intent.setData(uri);
            intent.setAction("android.intent.action.VIEW");
            return intent;
        }
    }

    public zzil(zzif zzifVar, com.google.android.gms.ads.internal.zzf zzfVar, zzkr zzkrVar) {
        this.zzIr = zzifVar;
        this.zzIo = zzfVar;
        this.zzIp = zzkrVar;
    }

    private static boolean zzd(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int zze(Map<String, String> map) {
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return com.google.android.gms.ads.internal.zzw.zzcO().zzkR();
            }
            if ("l".equalsIgnoreCase(str)) {
                return com.google.android.gms.ads.internal.zzw.zzcO().zzkQ();
            }
            if ("c".equalsIgnoreCase(str)) {
                return com.google.android.gms.ads.internal.zzw.zzcO().zzkS();
            }
        }
        return -1;
    }

    private static void zzf(zzqw zzqwVar, Map<String, String> map) {
        Context context = zzqwVar.getContext();
        if (TextUtils.isEmpty(map.get("u"))) {
            zzpk.zzbh("Destination url cannot be empty.");
            return;
        }
        try {
            zzqwVar.zzlv().zza(new com.google.android.gms.ads.internal.overlay.zzc(new zza(zzqwVar).zza(context, map)));
        } catch (ActivityNotFoundException e) {
            zzpk.zzbh(e.getMessage());
        }
    }

    private void zzr(boolean z) {
        if (this.zzIp != null) {
            this.zzIp.zzs(z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017f  */
    @Override // com.google.android.gms.internal.zzid
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        Intent intent;
        String uri;
        Uri uri2;
        String str = map.get("a");
        if (str == null) {
            zzpk.zzbh("Action missing from an open GMSG.");
        } else if (this.zzIo != null && !this.zzIo.zzcd()) {
            this.zzIo.zzx(map.get("u"));
        } else {
            zzqx zzlv = zzqwVar.zzlv();
            if ("expand".equalsIgnoreCase(str)) {
                if (zzqwVar.zzlz()) {
                    zzpk.zzbh("Cannot expand WebView that is already expanded.");
                    return;
                }
                zzr(false);
                zzlv.zza(zzd(map), zze(map));
            } else if ("webapp".equalsIgnoreCase(str)) {
                String str2 = map.get("u");
                zzr(false);
                if (str2 != null) {
                    zzlv.zza(zzd(map), zze(map), str2);
                } else {
                    zzlv.zza(zzd(map), zze(map), map.get(AdType.HTML), map.get("baseurl"));
                }
            } else if ("in_app_purchase".equalsIgnoreCase(str)) {
                String str3 = map.get("product_id");
                String str4 = map.get("report_urls");
                if (this.zzIr == null) {
                    return;
                }
                if (str4 == null || str4.isEmpty()) {
                    this.zzIr.zza(str3, new ArrayList<>());
                } else {
                    this.zzIr.zza(str3, new ArrayList<>(Arrays.asList(str4.split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR))));
                }
            } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase(map.get("system_browser"))) {
                zzr(true);
                zzf(zzqwVar, map);
            } else {
                zzr(true);
                String str5 = map.get("intent_url");
                String str6 = map.get("u");
                if (!TextUtils.isEmpty(str5)) {
                    try {
                        intent = Intent.parseUri(str5, 0);
                    } catch (URISyntaxException e) {
                        String valueOf = String.valueOf(str5);
                        zzpk.zzb(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e);
                    }
                    if (intent != null && intent.getData() != null) {
                        Uri data = intent.getData();
                        uri = data.toString();
                        if (!TextUtils.isEmpty(uri)) {
                            String zza2 = com.google.android.gms.ads.internal.zzw.zzcM().zza(zzqwVar, uri);
                            try {
                                uri2 = Uri.parse(zza2);
                            } catch (Exception e2) {
                                String valueOf2 = String.valueOf(zza2);
                                zzpk.zzb(valueOf2.length() != 0 ? "Error parsing the uri: ".concat(valueOf2) : new String("Error parsing the uri: "), e2);
                            }
                            intent.setData(uri2);
                        }
                        uri2 = data;
                        intent.setData(uri2);
                    }
                    if (intent == null) {
                        zzlv.zza(new com.google.android.gms.ads.internal.overlay.zzc(intent));
                        return;
                    } else {
                        zzlv.zza(new com.google.android.gms.ads.internal.overlay.zzc(map.get("i"), !TextUtils.isEmpty(str6) ? com.google.android.gms.ads.internal.zzw.zzcM().zza(zzqwVar, str6) : str6, map.get("m"), map.get("p"), map.get("c"), map.get("f"), map.get("e")));
                        return;
                    }
                }
                intent = null;
                if (intent != null) {
                    Uri data2 = intent.getData();
                    uri = data2.toString();
                    if (!TextUtils.isEmpty(uri)) {
                    }
                    uri2 = data2;
                    intent.setData(uri2);
                }
                if (intent == null) {
                }
            }
        }
    }
}
