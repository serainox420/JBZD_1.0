package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@zzme
/* loaded from: classes.dex */
public class zznh {
    private String zzE;
    private final String zzOV;
    private int zzPY;
    private final String zzUA;
    private final boolean zzUB;
    private final boolean zzUC;
    private final String zzUD;
    private final List<String> zzUv;
    private final List<String> zzUw;
    private final String zzUx;
    private final String zzUy;
    private final String zzUz;

    public zznh(int i, Map<String, String> map) {
        this.zzE = map.get("url");
        this.zzUy = map.get("base_uri");
        this.zzUz = map.get("post_parameters");
        this.zzUB = parseBoolean(map.get("drt_include"));
        this.zzUC = parseBoolean(map.get("pan_include"));
        this.zzUx = map.get("activation_overlay_url");
        this.zzUw = zzaM(map.get("check_packages"));
        this.zzOV = map.get("request_id");
        this.zzUA = map.get("type");
        this.zzUv = zzaM(map.get("errors"));
        this.zzPY = i;
        this.zzUD = map.get("fetched_ad");
    }

    private static boolean parseBoolean(String str) {
        return str != null && (str.equals("1") || str.equals("true"));
    }

    private List<String> zzaM(String str) {
        if (str == null) {
            return null;
        }
        return Arrays.asList(str.split(","));
    }

    public int getErrorCode() {
        return this.zzPY;
    }

    public String getRequestId() {
        return this.zzOV;
    }

    public String getType() {
        return this.zzUA;
    }

    public String getUrl() {
        return this.zzE;
    }

    public void setUrl(String str) {
        this.zzE = str;
    }

    public boolean zzjA() {
        return this.zzUB;
    }

    public String zzjB() {
        return this.zzUD;
    }

    public List<String> zzjx() {
        return this.zzUv;
    }

    public String zzjy() {
        return this.zzUy;
    }

    public String zzjz() {
        return this.zzUz;
    }
}
