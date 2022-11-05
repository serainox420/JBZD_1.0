package com.google.android.gms.internal;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzrq extends com.google.android.gms.analytics.zzf<zzrq> {
    private ProductAction zzabO;
    private final List<Product> zzabR = new ArrayList();
    private final List<Promotion> zzabQ = new ArrayList();
    private final Map<String, List<Product>> zzabP = new HashMap();

    public String toString() {
        HashMap hashMap = new HashMap();
        if (!this.zzabR.isEmpty()) {
            hashMap.put("products", this.zzabR);
        }
        if (!this.zzabQ.isEmpty()) {
            hashMap.put("promotions", this.zzabQ);
        }
        if (!this.zzabP.isEmpty()) {
            hashMap.put("impressions", this.zzabP);
        }
        hashMap.put("productAction", this.zzabO);
        return zzj(hashMap);
    }

    public void zza(Product product, String str) {
        if (product == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (!this.zzabP.containsKey(str)) {
            this.zzabP.put(str, new ArrayList());
        }
        this.zzabP.get(str).add(product);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrq zzrqVar) {
        zzrqVar.zzabR.addAll(this.zzabR);
        zzrqVar.zzabQ.addAll(this.zzabQ);
        for (Map.Entry<String, List<Product>> entry : this.zzabP.entrySet()) {
            String key = entry.getKey();
            for (Product product : entry.getValue()) {
                zzrqVar.zza(product, key);
            }
        }
        if (this.zzabO != null) {
            zzrqVar.zzabO = this.zzabO;
        }
    }

    public ProductAction zznp() {
        return this.zzabO;
    }

    public List<Product> zznq() {
        return Collections.unmodifiableList(this.zzabR);
    }

    public Map<String, List<Product>> zznr() {
        return this.zzabP;
    }

    public List<Promotion> zzns() {
        return Collections.unmodifiableList(this.zzabQ);
    }
}
