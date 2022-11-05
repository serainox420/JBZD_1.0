package com.inmobi.monetization.internal;

import com.inmobi.commons.internal.EncryptionUtils;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.Request;
import com.inmobi.commons.network.RequestBuilderUtils;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.configs.PkInitilaizer;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdRequest.java */
/* loaded from: classes2.dex */
public class c extends Request {

    /* renamed from: a  reason: collision with root package name */
    protected static String f3871a = "http://i.w.inmobi.com/showad.asm";
    private static byte[] e;
    String b;
    String c;
    String d;
    private byte[] f;
    private byte[] g;

    public c() {
        super(f3871a, Request.Format.KEY_VAL, Request.Method.POST);
        this.b = "";
        this.c = "";
        this.d = "";
        RequestBuilderUtils.fillIdentityMap(this.mReqParams, Initializer.getConfigParams().getDeviceIdMaskMap(), false);
        RequestBuilderUtils.fillAppInfoMap(this.mReqParams);
        RequestBuilderUtils.fillDemogMap(this.mReqParams);
        RequestBuilderUtils.fillDeviceMap(this.mReqParams);
        RequestBuilderUtils.fillLocationMap(this.mReqParams);
        setTimeout(Initializer.getConfigParams().getFetchTimeOut());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Map<String, String> map) {
        if (this.mReqParams != null && map != null && !map.isEmpty()) {
            this.mReqParams.putAll(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Map<String, String> map) {
        if (this.mReqParams != null && map != null) {
            this.mReqParams.putAll(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.inmobi.commons.network.Request
    public String getPostBody() {
        String postBody = super.getPostBody();
        Log.internal(Constants.LOG_TAG, "Raw Postbody: " + postBody);
        return a(postBody);
    }

    String a(String str) {
        HashMap hashMap = new HashMap();
        this.g = EncryptionUtils.generateKey(8);
        this.f = EncryptionUtils.generateKey(16);
        e = EncryptionUtils.keag();
        this.b = PkInitilaizer.getConfigParams().getExponent();
        this.c = PkInitilaizer.getConfigParams().getModulus();
        this.d = PkInitilaizer.getConfigParams().getVersion();
        if (this.b.equals("") || this.c.equals("") || this.d.equals("")) {
            Log.debug(Constants.LOG_TAG, "Exception retreiving Ad due to key problem");
            return null;
        }
        hashMap.put("sm", EncryptionUtils.SeMeGe(str, e, this.f, this.g, this.c, this.b));
        hashMap.put("sn", this.d);
        return InternalSDKUtil.encodeMapAndconvertToDelimitedString(hashMap, "&");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] b() {
        return e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.inmobi.commons.network.Request
    public void setUrl(String str) {
        super.setUrl(str);
    }
}
