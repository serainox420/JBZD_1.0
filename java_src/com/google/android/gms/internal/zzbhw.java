package com.google.android.gms.internal;

import android.content.Context;
import com.applovin.sdk.AppLovinEventParameters;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.zzbcb;
import com.google.firebase.a.a;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzbhw extends zzbcs {
    private static final String ID = zzah.UNIVERSAL_ANALYTICS.toString();
    private static final List<String> zzbIU = Arrays.asList(ProductAction.ACTION_DETAIL, "checkout", ProductAction.ACTION_CHECKOUT_OPTION, "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND);
    private static final Pattern zzbIV = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzbIW = Pattern.compile("metric(\\d+)");
    private static final Set<String> zzbLJ = com.google.android.gms.common.util.zzf.zza("", AppEventsConstants.EVENT_PARAM_VALUE_NO, Consts.False);
    private static final Map<String, String> zzbLK = com.google.android.gms.common.util.zzf.zza(AnalyticsSQLiteHelper.TRANSACTION_ID, "&ti", "transactionAffiliation", "&ta", "transactionTax", "&tt", "transactionShipping", "&ts", "transactionTotal", "&tr", "transactionCurrency", "&cu");
    private static final Map<String, String> zzbLL = com.google.android.gms.common.util.zzf.zza("name", "&in", AppLovinEventParameters.PRODUCT_IDENTIFIER, "&ic", "category", "&iv", a.b.PRICE, "&ip", a.b.QUANTITY, "&iq", "currency", "&cu");
    private final zzbcb.zzc zzbKn;
    private final zzbcn zzbLM;
    private Map<String, Object> zzbLN;

    public zzbhw(Context context, zzbcb.zzc zzcVar) {
        this(new zzbcn(context), zzcVar);
    }

    public zzbhw(zzbcn zzbcnVar, zzbcb.zzc zzcVar) {
        this.zzbKn = zzcVar;
        this.zzbLM = zzbcnVar;
    }

    private Double zzV(Object obj) {
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf) : new String("Cannot convert the object to Double: "));
            }
        } else if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        } else {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            String valueOf2 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Double: ".concat(valueOf2) : new String("Cannot convert the object to Double: "));
        }
    }

    private Integer zzW(Object obj) {
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj);
            } catch (NumberFormatException e) {
                String valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf) : new String("Cannot convert the object to Integer: "));
            }
        } else if (obj instanceof Double) {
            return Integer.valueOf(((Double) obj).intValue());
        } else {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            String valueOf2 = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf2.length() != 0 ? "Cannot convert the object to Integer: ".concat(valueOf2) : new String("Cannot convert the object to Integer: "));
        }
    }

    private void zza(Tracker tracker, zzbit<?> zzbitVar) {
        tracker.send(zzi(zzbitVar));
    }

    private void zza(Tracker tracker, zzbit<?> zzbitVar, zzbit<?> zzbitVar2, zzbit<?> zzbitVar3) {
        String str = (String) this.zzbLN.get(AnalyticsSQLiteHelper.TRANSACTION_ID);
        if (str == null) {
            zzbbu.e("Cannot find transactionId in data layer.");
            return;
        }
        LinkedList<Map<String, String>> linkedList = new LinkedList();
        try {
            Map<String, String> zzi = zzi(zzbitVar);
            zzi.put("&t", "transaction");
            for (Map.Entry<String, String> entry : zzj(zzbitVar2).entrySet()) {
                String str2 = (String) this.zzbLN.get(entry.getKey());
                if (str2 != null) {
                    zzi.put(entry.getValue(), str2);
                }
            }
            linkedList.add(zzi);
            List<Map<String, Object>> zzhP = zzhP("transactionProducts");
            if (zzhP != null) {
                for (Map<String, Object> map : zzhP) {
                    if (map.get("name") == null) {
                        zzbbu.e("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map<String, String> zzi2 = zzi(zzbitVar);
                    zzi2.put("&t", "item");
                    zzi2.put("&ti", str);
                    for (Map.Entry<String, String> entry2 : zzk(zzbitVar3).entrySet()) {
                        Object obj = map.get(entry2.getKey());
                        if (obj != null) {
                            zzi2.put(entry2.getValue(), obj.toString());
                        }
                    }
                    linkedList.add(zzi2);
                }
            }
            for (Map<String, String> map2 : linkedList) {
                tracker.send(map2);
            }
        } catch (IllegalArgumentException e) {
            zzbbu.zzb("Unable to send transaction", e);
        }
    }

    private Promotion zzaq(Map<String, String> map) {
        Promotion promotion = new Promotion();
        String str = map.get("id");
        if (str != null) {
            promotion.setId(String.valueOf(str));
        }
        String str2 = map.get("name");
        if (str2 != null) {
            promotion.setName(String.valueOf(str2));
        }
        String str3 = map.get("creative");
        if (str3 != null) {
            promotion.setCreative(String.valueOf(str3));
        }
        String str4 = map.get("position");
        if (str4 != null) {
            promotion.setPosition(String.valueOf(str4));
        }
        return promotion;
    }

    private Product zzar(Map<String, Object> map) {
        Product product = new Product();
        Object obj = map.get("id");
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        Object obj2 = map.get("name");
        if (obj2 != null) {
            product.setName(String.valueOf(obj2));
        }
        Object obj3 = map.get("brand");
        if (obj3 != null) {
            product.setBrand(String.valueOf(obj3));
        }
        Object obj4 = map.get("category");
        if (obj4 != null) {
            product.setCategory(String.valueOf(obj4));
        }
        Object obj5 = map.get("variant");
        if (obj5 != null) {
            product.setVariant(String.valueOf(obj5));
        }
        Object obj6 = map.get(a.b.COUPON);
        if (obj6 != null) {
            product.setCouponCode(String.valueOf(obj6));
        }
        Object obj7 = map.get("position");
        if (obj7 != null) {
            product.setPosition(zzW(obj7).intValue());
        }
        Object obj8 = map.get(a.b.PRICE);
        if (obj8 != null) {
            product.setPrice(zzV(obj8).doubleValue());
        }
        Object obj9 = map.get(a.b.QUANTITY);
        if (obj9 != null) {
            product.setQuantity(zzW(obj9).intValue());
        }
        for (String str : map.keySet()) {
            Matcher matcher = zzbIV.matcher(str);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str)));
                } catch (NumberFormatException e) {
                    String valueOf = String.valueOf(str);
                    zzbbu.zzbh(valueOf.length() != 0 ? "illegal number in custom dimension value: ".concat(valueOf) : new String("illegal number in custom dimension value: "));
                }
            } else {
                Matcher matcher2 = zzbIW.matcher(str);
                if (matcher2.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher2.group(1)), zzW(map.get(str)).intValue());
                    } catch (NumberFormatException e2) {
                        String valueOf2 = String.valueOf(str);
                        zzbbu.zzbh(valueOf2.length() != 0 ? "illegal number in custom metric value: ".concat(valueOf2) : new String("illegal number in custom metric value: "));
                    }
                }
            }
        }
        return product;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void zzb(Tracker tracker, zzbit<?> zzbitVar, zzbit<?> zzbitVar2, zzbit<?> zzbitVar3) {
        boolean z;
        HitBuilders.HitBuilder screenViewBuilder = new HitBuilders.ScreenViewBuilder();
        Map<String, String> zzi = zzi(zzbitVar);
        screenViewBuilder.setAll(zzi);
        Object zzl = zzbcr.zza(zzbitVar2) ? this.zzbLN.get("ecommerce") : zzbjc.zzl(zzbjc.zzm(zzbitVar3));
        if (zzl instanceof Map) {
            Map map = (Map) zzl;
            String str = zzi.get("&cu");
            if (str == null) {
                str = (String) map.get(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE);
            }
            if (str != null) {
                screenViewBuilder.set("&cu", str);
            }
            Object obj = map.get("impressions");
            if (obj instanceof List) {
                for (Map<String, Object> map2 : (List) obj) {
                    try {
                        screenViewBuilder.addImpression(zzar(map2), (String) map2.get("list"));
                    } catch (RuntimeException e) {
                        String valueOf = String.valueOf(e.getMessage());
                        zzbbu.e(valueOf.length() != 0 ? "Failed to extract a product from event data. ".concat(valueOf) : new String("Failed to extract a product from event data. "));
                    }
                }
            }
            List<Map<String, String>> list = null;
            if (map.containsKey("promoClick")) {
                list = (List) ((Map) map.get("promoClick")).get("promotions");
            } else if (map.containsKey("promoView")) {
                list = (List) ((Map) map.get("promoView")).get("promotions");
            }
            if (list != null) {
                for (Map<String, String> map3 : list) {
                    try {
                        screenViewBuilder.addPromotion(zzaq(map3));
                    } catch (RuntimeException e2) {
                        String valueOf2 = String.valueOf(e2.getMessage());
                        zzbbu.e(valueOf2.length() != 0 ? "Failed to extract a promotion from event data. ".concat(valueOf2) : new String("Failed to extract a promotion from event data. "));
                    }
                }
                if (map.containsKey("promoClick")) {
                    screenViewBuilder.set("&promoa", "click");
                    z = false;
                    if (z) {
                        Iterator<String> it = zzbIU.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            String next = it.next();
                            if (map.containsKey(next)) {
                                Map map4 = (Map) map.get(next);
                                List<Map<String, Object>> list2 = (List) map4.get("products");
                                if (list2 != null) {
                                    for (Map<String, Object> map5 : list2) {
                                        try {
                                            screenViewBuilder.addProduct(zzar(map5));
                                        } catch (RuntimeException e3) {
                                            String valueOf3 = String.valueOf(e3.getMessage());
                                            zzbbu.e(valueOf3.length() != 0 ? "Failed to extract a product from event data. ".concat(valueOf3) : new String("Failed to extract a product from event data. "));
                                        }
                                    }
                                }
                                try {
                                    screenViewBuilder.setProductAction(map4.containsKey("actionField") ? zzj(next, (Map) map4.get("actionField")) : new ProductAction(next));
                                } catch (RuntimeException e4) {
                                    String valueOf4 = String.valueOf(e4.getMessage());
                                    zzbbu.e(valueOf4.length() != 0 ? "Failed to extract a product action from event data. ".concat(valueOf4) : new String("Failed to extract a product action from event data. "));
                                }
                            }
                        }
                    }
                } else {
                    screenViewBuilder.set("&promoa", Promotion.ACTION_VIEW);
                }
            }
            z = true;
            if (z) {
            }
        }
        tracker.send(screenViewBuilder.build());
    }

    private Map<String, String> zzh(zzbit<?> zzbitVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVar);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar instanceof zzbiz);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Object zzl = zzbjc.zzl(zzbjc.zzm(zzbitVar));
        com.google.android.gms.common.internal.zzac.zzaw(zzl instanceof Map);
        for (Map.Entry entry : ((Map) zzl).entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private List<Map<String, Object>> zzhP(String str) {
        Object obj = this.zzbLN.get(str);
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof List)) {
            throw new IllegalArgumentException("transactionProducts should be of type List.");
        }
        List<Map<String, Object>> list = (List) obj;
        for (Map<String, Object> map : list) {
            if (!(map instanceof Map)) {
                throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
            }
        }
        return list;
    }

    private Map<String, String> zzi(zzbit<?> zzbitVar) {
        Map<String, String> zzh = zzh(zzbitVar);
        String str = zzh.get("&aip");
        if (str != null && zzbLJ.contains(str.toLowerCase())) {
            zzh.remove("&aip");
        }
        return zzh;
    }

    private ProductAction zzj(String str, Map<String, Object> map) {
        ProductAction productAction = new ProductAction(str);
        Object obj = map.get("id");
        if (obj != null) {
            productAction.setTransactionId(String.valueOf(obj));
        }
        Object obj2 = map.get("affiliation");
        if (obj2 != null) {
            productAction.setTransactionAffiliation(String.valueOf(obj2));
        }
        Object obj3 = map.get(a.b.COUPON);
        if (obj3 != null) {
            productAction.setTransactionCouponCode(String.valueOf(obj3));
        }
        Object obj4 = map.get("list");
        if (obj4 != null) {
            productAction.setProductActionList(String.valueOf(obj4));
        }
        Object obj5 = map.get("option");
        if (obj5 != null) {
            productAction.setCheckoutOptions(String.valueOf(obj5));
        }
        Object obj6 = map.get("revenue");
        if (obj6 != null) {
            productAction.setTransactionRevenue(zzV(obj6).doubleValue());
        }
        Object obj7 = map.get(a.b.TAX);
        if (obj7 != null) {
            productAction.setTransactionTax(zzV(obj7).doubleValue());
        }
        Object obj8 = map.get(a.b.SHIPPING);
        if (obj8 != null) {
            productAction.setTransactionShipping(zzV(obj8).doubleValue());
        }
        Object obj9 = map.get("step");
        if (obj9 != null) {
            productAction.setCheckoutStep(zzW(obj9).intValue());
        }
        return productAction;
    }

    private Map<String, String> zzj(zzbit<?> zzbitVar) {
        return zzbitVar == zzbix.zzbMS ? zzbLK : zzh(zzbitVar);
    }

    private Map<String, String> zzk(zzbit<?> zzbitVar) {
        return zzbitVar == zzbix.zzbMS ? zzbLL : zzh(zzbitVar);
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = false;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        try {
            this.zzbLN = zzbjc.zzO(this.zzbKn.zzSp().zzRV());
            zzbit<?> zzbitVar = zzbitVarArr[0];
            zzbiu zzbiuVar = zzbitVarArr.length > 1 ? zzbitVarArr[1] : new zzbiu(true);
            zzbiu zzbiuVar2 = zzbitVarArr.length > 2 ? zzbitVarArr[2] : new zzbiu(false);
            zzbix zzbixVar = zzbitVarArr.length > 3 ? zzbitVarArr[3] : zzbix.zzbMS;
            zzbix zzbixVar2 = zzbitVarArr.length > 4 ? zzbitVarArr[4] : zzbix.zzbMS;
            zzbiu zzbiuVar3 = zzbitVarArr.length > 5 ? zzbitVarArr[5] : new zzbiu(false);
            zzbiu zzbiuVar4 = zzbitVarArr.length > 6 ? zzbitVarArr[6] : new zzbiu(false);
            zzbix zzbixVar3 = zzbitVarArr.length > 7 ? zzbitVarArr[7] : zzbix.zzbMS;
            zzbiu zzbiuVar5 = zzbitVarArr.length > 8 ? zzbitVarArr[8] : new zzbiu(false);
            com.google.android.gms.common.internal.zzac.zzax(zzbitVar instanceof zzbiz);
            com.google.android.gms.common.internal.zzac.zzax(zzbixVar == zzbix.zzbMS || (zzbixVar instanceof zzbiz));
            com.google.android.gms.common.internal.zzac.zzax(zzbixVar2 == zzbix.zzbMS || (zzbixVar2 instanceof zzbiz));
            if (zzbixVar3 == zzbix.zzbMS || (zzbixVar3 instanceof zzbiz)) {
                z = true;
            }
            com.google.android.gms.common.internal.zzac.zzax(z);
            Tracker zzht = this.zzbLM.zzht("_GTM_DEFAULT_TRACKER_");
            zzht.enableAdvertisingIdCollection(zzbcr.zza(zzbiuVar5));
            if (zzbcr.zza(zzbiuVar3)) {
                zzb(zzht, zzbitVar, zzbiuVar4, zzbixVar3);
            } else if (zzbcr.zza(zzbiuVar)) {
                zza(zzht, zzbitVar);
            } else if (zzbcr.zza(zzbiuVar2)) {
                zza(zzht, zzbitVar, zzbixVar, zzbixVar2);
            } else {
                zzbbu.zzbh("Ignoring unknown tag.");
            }
            this.zzbLN = null;
            return zzbix.zzbMS;
        } catch (Throwable th) {
            this.zzbLN = null;
            throw th;
        }
    }
}
