package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.zztc;
import com.google.android.gms.internal.zztm;
import com.google.firebase.a.a;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class HitBuilders {

    @Deprecated
    /* loaded from: classes.dex */
    public static class AppViewBuilder extends HitBuilder<AppViewBuilder> {
        public AppViewBuilder() {
            set("&t", "screenview");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }

    /* loaded from: classes2.dex */
    public static class EventBuilder extends HitBuilder<EventBuilder> {
        public EventBuilder() {
            set("&t", "event");
        }

        public EventBuilder(String str, String str2) {
            this();
            setCategory(str);
            setAction(str2);
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public EventBuilder setAction(String str) {
            set("&ea", str);
            return this;
        }

        public EventBuilder setCategory(String str) {
            set("&ec", str);
            return this;
        }

        public EventBuilder setLabel(String str) {
            set("&el", str);
            return this;
        }

        public EventBuilder setValue(long j) {
            set("&ev", Long.toString(j));
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class ExceptionBuilder extends HitBuilder<ExceptionBuilder> {
        public ExceptionBuilder() {
            set("&t", "exception");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public ExceptionBuilder setDescription(String str) {
            set("&exd", str);
            return this;
        }

        public ExceptionBuilder setFatal(boolean z) {
            set("&exf", zztm.zzX(z));
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class HitBuilder<T extends HitBuilder> {
        ProductAction zzabO;
        private Map<String, String> zzabN = new HashMap();
        Map<String, List<Product>> zzabP = new HashMap();
        List<Promotion> zzabQ = new ArrayList();
        List<Product> zzabR = new ArrayList();

        protected HitBuilder() {
        }

        private T zzo(String str, String str2) {
            if (str == null) {
                zztc.zzbh("HitBuilder.setIfNonNull() called with a null paramName.");
            } else if (str2 != null) {
                this.zzabN.put(str, str2);
            }
            return this;
        }

        public T addImpression(Product product, String str) {
            if (product == null) {
                zztc.zzbh("product should be non-null");
            } else {
                if (str == null) {
                    str = "";
                }
                if (!this.zzabP.containsKey(str)) {
                    this.zzabP.put(str, new ArrayList());
                }
                this.zzabP.get(str).add(product);
            }
            return this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zztc.zzbh("product should be non-null");
            } else {
                this.zzabR.add(product);
            }
            return this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zztc.zzbh("promotion should be non-null");
            } else {
                this.zzabQ.add(promotion);
            }
            return this;
        }

        public Map<String, String> build() {
            HashMap hashMap = new HashMap(this.zzabN);
            if (this.zzabO != null) {
                hashMap.putAll(this.zzabO.build());
            }
            int i = 1;
            for (Promotion promotion : this.zzabQ) {
                hashMap.putAll(promotion.zzbM(zzc.zzat(i)));
                i++;
            }
            int i2 = 1;
            for (Product product : this.zzabR) {
                hashMap.putAll(product.zzbM(zzc.zzar(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry<String, List<Product>> entry : this.zzabP.entrySet()) {
                String zzaw = zzc.zzaw(i3);
                int i4 = 1;
                for (Product product2 : entry.getValue()) {
                    String valueOf = String.valueOf(zzaw);
                    String valueOf2 = String.valueOf(zzc.zzav(i4));
                    hashMap.putAll(product2.zzbM(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty(entry.getKey())) {
                    String valueOf3 = String.valueOf(zzaw);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), entry.getKey());
                }
                i3++;
            }
            return hashMap;
        }

        protected String get(String str) {
            return this.zzabN.get(str);
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.zzabN.put(str, str2);
            } else {
                zztc.zzbh("HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public final T setAll(Map<String, String> map) {
            if (map != null) {
                this.zzabN.putAll(new HashMap(map));
            }
            return this;
        }

        public T setCampaignParamsFromUrl(String str) {
            String zzcg = zztm.zzcg(str);
            if (!TextUtils.isEmpty(zzcg)) {
                Map<String, String> zzce = zztm.zzce(zzcg);
                zzo("&cc", zzce.get("utm_content"));
                zzo("&cm", zzce.get("utm_medium"));
                zzo("&cn", zzce.get("utm_campaign"));
                zzo("&cs", zzce.get("utm_source"));
                zzo("&ck", zzce.get("utm_term"));
                zzo("&ci", zzce.get("utm_id"));
                zzo("&anid", zzce.get("anid"));
                zzo("&gclid", zzce.get("gclid"));
                zzo("&dclid", zzce.get("dclid"));
                zzo("&aclid", zzce.get(a.b.ACLID));
                zzo("&gmob_t", zzce.get("gmob_t"));
            }
            return this;
        }

        public T setCustomDimension(int i, String str) {
            set(zzc.zzan(i), str);
            return this;
        }

        public T setCustomMetric(int i, float f) {
            set(zzc.zzap(i), Float.toString(f));
            return this;
        }

        protected T setHitType(String str) {
            set("&t", str);
            return this;
        }

        public T setNewSession() {
            set("&sc", SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
            return this;
        }

        public T setNonInteraction(boolean z) {
            set("&ni", zztm.zzX(z));
            return this;
        }

        public T setProductAction(ProductAction productAction) {
            this.zzabO = productAction;
            return this;
        }

        public T setPromotionAction(String str) {
            this.zzabN.put("&promoa", str);
            return this;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class ItemBuilder extends HitBuilder<ItemBuilder> {
        public ItemBuilder() {
            set("&t", "item");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public ItemBuilder setCategory(String str) {
            set("&iv", str);
            return this;
        }

        public ItemBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public ItemBuilder setName(String str) {
            set("&in", str);
            return this;
        }

        public ItemBuilder setPrice(double d) {
            set("&ip", Double.toString(d));
            return this;
        }

        public ItemBuilder setQuantity(long j) {
            set("&iq", Long.toString(j));
            return this;
        }

        public ItemBuilder setSku(String str) {
            set("&ic", str);
            return this;
        }

        public ItemBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class ScreenViewBuilder extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            set("&t", "screenview");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }

    /* loaded from: classes2.dex */
    public static class SocialBuilder extends HitBuilder<SocialBuilder> {
        public SocialBuilder() {
            set("&t", "social");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public SocialBuilder setAction(String str) {
            set("&sa", str);
            return this;
        }

        public SocialBuilder setNetwork(String str) {
            set("&sn", str);
            return this;
        }

        public SocialBuilder setTarget(String str) {
            set("&st", str);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class TimingBuilder extends HitBuilder<TimingBuilder> {
        public TimingBuilder() {
            set("&t", "timing");
        }

        public TimingBuilder(String str, String str2, long j) {
            this();
            setVariable(str2);
            setValue(j);
            setCategory(str);
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public TimingBuilder setCategory(String str) {
            set("&utc", str);
            return this;
        }

        public TimingBuilder setLabel(String str) {
            set("&utl", str);
            return this;
        }

        public TimingBuilder setValue(long j) {
            set("&utt", Long.toString(j));
            return this;
        }

        public TimingBuilder setVariable(String str) {
            set("&utv", str);
            return this;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class TransactionBuilder extends HitBuilder<TransactionBuilder> {
        public TransactionBuilder() {
            set("&t", "transaction");
        }

        @Override // com.google.android.gms.analytics.HitBuilders.HitBuilder
        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public TransactionBuilder setAffiliation(String str) {
            set("&ta", str);
            return this;
        }

        public TransactionBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public TransactionBuilder setRevenue(double d) {
            set("&tr", Double.toString(d));
            return this;
        }

        public TransactionBuilder setShipping(double d) {
            set("&ts", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTax(double d) {
            set("&tt", Double.toString(d));
            return this;
        }

        public TransactionBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }
}
