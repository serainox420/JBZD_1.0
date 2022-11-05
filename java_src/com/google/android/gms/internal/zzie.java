package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.GraphResponse;
import com.mdotm.android.constants.MdotMConstants;
import com.millennialmedia.NativeAd;
import java.io.BufferedOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzie implements zzid {
    private final Context mContext;
    private final zzqh zztt;

    /* JADX INFO: Access modifiers changed from: package-private */
    @zzme
    /* loaded from: classes.dex */
    public static class zza {
        private final String mValue;
        private final String zzAX;

        public zza(String str, String str2) {
            this.zzAX = str;
            this.mValue = str2;
        }

        public String getKey() {
            return this.zzAX;
        }

        public String getValue() {
            return this.mValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @zzme
    /* loaded from: classes.dex */
    public static class zzb {
        private final String zzId;
        private final URL zzIe;
        private final ArrayList<zza> zzIf;
        private final String zzIg;

        public zzb(String str, URL url, ArrayList<zza> arrayList, String str2) {
            this.zzId = str;
            this.zzIe = url;
            if (arrayList == null) {
                this.zzIf = new ArrayList<>();
            } else {
                this.zzIf = arrayList;
            }
            this.zzIg = str2;
        }

        public String zzgl() {
            return this.zzId;
        }

        public URL zzgm() {
            return this.zzIe;
        }

        public ArrayList<zza> zzgn() {
            return this.zzIf;
        }

        public String zzgo() {
            return this.zzIg;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @zzme
    /* loaded from: classes.dex */
    public class zzc {
        private final zzd zzIh;
        private final boolean zzIi;
        private final String zzIj;

        public zzc(zzie zzieVar, boolean z, zzd zzdVar, String str) {
            this.zzIi = z;
            this.zzIh = zzdVar;
            this.zzIj = str;
        }

        public String getReason() {
            return this.zzIj;
        }

        public boolean isSuccess() {
            return this.zzIi;
        }

        public zzd zzgp() {
            return this.zzIh;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @zzme
    /* loaded from: classes.dex */
    public static class zzd {
        private final String zzGr;
        private final String zzId;
        private final int zzIk;
        private final List<zza> zzIl;

        public zzd(String str, int i, List<zza> list, String str2) {
            this.zzId = str;
            this.zzIk = i;
            if (list == null) {
                this.zzIl = new ArrayList();
            } else {
                this.zzIl = list;
            }
            this.zzGr = str2;
        }

        public String getBody() {
            return this.zzGr;
        }

        public int getResponseCode() {
            return this.zzIk;
        }

        public String zzgl() {
            return this.zzId;
        }

        public Iterable<zza> zzgq() {
            return this.zzIl;
        }
    }

    public zzie(Context context, zzqh zzqhVar) {
        this.mContext = context;
        this.zztt = zzqhVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected zzc zza(zzb zzbVar) {
        HttpURLConnection httpURLConnection;
        Exception e;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3 = null;
        try {
            httpURLConnection2 = (HttpURLConnection) zzbVar.zzgm().openConnection();
        } catch (Exception e2) {
            httpURLConnection = null;
            e = e2;
        } catch (Throwable th) {
            th = th;
        }
        try {
            com.google.android.gms.ads.internal.zzw.zzcM().zza(this.mContext, this.zztt.zzba, false, httpURLConnection2);
            Iterator<zza> it = zzbVar.zzgn().iterator();
            while (it.hasNext()) {
                zza next = it.next();
                httpURLConnection2.addRequestProperty(next.getKey(), next.getValue());
            }
            if (!TextUtils.isEmpty(zzbVar.zzgo())) {
                httpURLConnection2.setDoOutput(true);
                byte[] bytes = zzbVar.zzgo().getBytes();
                httpURLConnection2.setFixedLengthStreamingMode(bytes.length);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection2.getOutputStream());
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
            }
            ArrayList arrayList = new ArrayList();
            if (httpURLConnection2.getHeaderFields() != null) {
                for (Map.Entry<String, List<String>> entry : httpURLConnection2.getHeaderFields().entrySet()) {
                    for (String str : entry.getValue()) {
                        arrayList.add(new zza(entry.getKey(), str));
                    }
                }
            }
            zzc zzcVar = new zzc(this, true, new zzd(zzbVar.zzgl(), httpURLConnection2.getResponseCode(), arrayList, com.google.android.gms.ads.internal.zzw.zzcM().zza(new InputStreamReader(httpURLConnection2.getInputStream()))), null);
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return zzcVar;
        } catch (Exception e3) {
            e = e3;
            httpURLConnection = httpURLConnection2;
            try {
                zzc zzcVar2 = new zzc(this, false, null, e.toString());
                if (httpURLConnection == null) {
                    return zzcVar2;
                }
                httpURLConnection.disconnect();
                return zzcVar2;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection3 = httpURLConnection;
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                throw th;
            }
        } catch (Throwable th3) {
            httpURLConnection3 = httpURLConnection2;
            th = th3;
            if (httpURLConnection3 != null) {
            }
            throw th;
        }
    }

    protected JSONObject zza(zzd zzdVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", zzdVar.zzgl());
            if (zzdVar.getBody() != null) {
                jSONObject.put(NativeAd.COMPONENT_ID_BODY, zzdVar.getBody());
            }
            JSONArray jSONArray = new JSONArray();
            for (zza zzaVar : zzdVar.zzgq()) {
                jSONArray.put(new JSONObject().put("key", zzaVar.getKey()).put("value", zzaVar.getValue()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", zzdVar.getResponseCode());
        } catch (JSONException e) {
            zzpk.zzb("Error constructing JSON for http response.", e);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(final zzqw zzqwVar, final Map<String, String> map) {
        zzpn.zza(new Runnable() { // from class: com.google.android.gms.internal.zzie.1
            @Override // java.lang.Runnable
            public void run() {
                zzpk.zzbf("Received Http request.");
                final JSONObject zzaa = zzie.this.zzaa((String) map.get("http_request"));
                if (zzaa == null) {
                    zzpk.e("Response should not be null.");
                } else {
                    zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzie.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            zzqwVar.zzb("fetchHttpRequestCompleted", zzaa);
                            zzpk.zzbf("Dispatched http response.");
                        }
                    });
                }
            }
        });
    }

    public JSONObject zzaa(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject();
            String str2 = "";
            try {
                str2 = jSONObject.optString("http_request_id");
                zzc zza2 = zza(zzb(jSONObject));
                if (zza2.isSuccess()) {
                    jSONObject2.put(MdotMConstants.RESPONSE, zza(zza2.zzgp()));
                    jSONObject2.put(GraphResponse.SUCCESS_KEY, true);
                } else {
                    jSONObject2.put(MdotMConstants.RESPONSE, new JSONObject().put("http_request_id", str2));
                    jSONObject2.put(GraphResponse.SUCCESS_KEY, false);
                    jSONObject2.put("reason", zza2.getReason());
                }
                return jSONObject2;
            } catch (Exception e) {
                try {
                    jSONObject2.put(MdotMConstants.RESPONSE, new JSONObject().put("http_request_id", str2));
                    jSONObject2.put(GraphResponse.SUCCESS_KEY, false);
                    jSONObject2.put("reason", e.toString());
                    return jSONObject2;
                } catch (JSONException e2) {
                    return jSONObject2;
                }
            }
        } catch (JSONException e3) {
            zzpk.e("The request is not a valid JSON.");
            try {
                return new JSONObject().put(GraphResponse.SUCCESS_KEY, false);
            } catch (JSONException e4) {
                return new JSONObject();
            }
        }
    }

    protected zzb zzb(JSONObject jSONObject) {
        URL url;
        String optString = jSONObject.optString("http_request_id");
        String optString2 = jSONObject.optString("url");
        String optString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(optString2);
        } catch (MalformedURLException e) {
            zzpk.zzb("Error constructing http request.", e);
            url = null;
        }
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                arrayList.add(new zza(optJSONObject.optString("key"), optJSONObject.optString("value")));
            }
        }
        return new zzb(optString, url, arrayList, optString3);
    }
}
