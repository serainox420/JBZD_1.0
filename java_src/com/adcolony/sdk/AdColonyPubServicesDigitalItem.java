package com.adcolony.sdk;

import android.graphics.Bitmap;
import com.google.firebase.a.a;
import java.util.Map;
/* loaded from: classes.dex */
public class AdColonyPubServicesDigitalItem {

    /* renamed from: a  reason: collision with root package name */
    Map<String, Object> f991a;
    Bitmap b = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyPubServicesDigitalItem(Map<String, Object> map) {
        this.f991a = map;
    }

    public String productId() {
        if (this.f991a == null || !this.f991a.containsKey("product_id")) {
            return null;
        }
        return (String) this.f991a.get("product_id");
    }

    public int quantity() {
        if (this.f991a == null || !this.f991a.containsKey(a.b.QUANTITY)) {
            return 0;
        }
        return ((Integer) this.f991a.get(a.b.QUANTITY)).intValue();
    }

    public String name() {
        if (this.f991a == null || !this.f991a.containsKey("name")) {
            return null;
        }
        return (String) this.f991a.get("name");
    }

    public String productDescription() {
        if (this.f991a == null || !this.f991a.containsKey("description")) {
            return null;
        }
        return (String) this.f991a.get("description");
    }

    public Map<String, Object> userParams() {
        if (this.f991a == null || !this.f991a.containsKey("user_params")) {
            return null;
        }
        return (Map) this.f991a.get("user_params");
    }

    public String toJson() {
        return co.a(this.f991a);
    }
}
