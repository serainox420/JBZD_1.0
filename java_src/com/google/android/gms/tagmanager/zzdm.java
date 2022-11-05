package com.google.android.gms.tagmanager;

import android.content.Context;
import com.applovin.sdk.AppLovinEventParameters;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.zzak;
import com.google.firebase.a.a;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzdm extends zzdj {
    private static final String ID = com.google.android.gms.internal.zzah.UNIVERSAL_ANALYTICS.toString();
    private static final String zzbIL = com.google.android.gms.internal.zzai.ACCOUNT.toString();
    private static final String zzbIM = com.google.android.gms.internal.zzai.ANALYTICS_PASS_THROUGH.toString();
    private static final String zzbIN = com.google.android.gms.internal.zzai.ENABLE_ECOMMERCE.toString();
    private static final String zzbIO = com.google.android.gms.internal.zzai.ECOMMERCE_USE_DATA_LAYER.toString();
    private static final String zzbIP = com.google.android.gms.internal.zzai.ECOMMERCE_MACRO_DATA.toString();
    private static final String zzbIQ = com.google.android.gms.internal.zzai.ANALYTICS_FIELDS.toString();
    private static final String zzbIR = com.google.android.gms.internal.zzai.TRACK_TRANSACTION.toString();
    private static final String zzbIS = com.google.android.gms.internal.zzai.TRANSACTION_DATALAYER_MAP.toString();
    private static final String zzbIT = com.google.android.gms.internal.zzai.TRANSACTION_ITEM_DATALAYER_MAP.toString();
    private static final List<String> zzbIU = Arrays.asList(ProductAction.ACTION_DETAIL, "checkout", ProductAction.ACTION_CHECKOUT_OPTION, "click", ProductAction.ACTION_ADD, ProductAction.ACTION_REMOVE, ProductAction.ACTION_PURCHASE, ProductAction.ACTION_REFUND);
    private static final Pattern zzbIV = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzbIW = Pattern.compile("metric(\\d+)");
    private static Map<String, String> zzbIX;
    private static Map<String, String> zzbIY;
    private final DataLayer zzbEV;
    private final Set<String> zzbIZ;
    private final zzdi zzbJa;

    public zzdm(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new zzdi(context));
    }

    zzdm(Context context, DataLayer dataLayer, zzdi zzdiVar) {
        super(ID, new String[0]);
        this.zzbEV = dataLayer;
        this.zzbJa = zzdiVar;
        this.zzbIZ = new HashSet();
        this.zzbIZ.add("");
        this.zzbIZ.add(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.zzbIZ.add(Consts.False);
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

    private void zza(Tracker tracker, Map<String, zzak.zza> map) {
        String zzhB = zzhB(AnalyticsSQLiteHelper.TRANSACTION_ID);
        if (zzhB == null) {
            zzbo.e("Cannot find transactionId in data layer.");
            return;
        }
        LinkedList<Map<String, String>> linkedList = new LinkedList();
        try {
            Map<String, String> zzk = zzk(map.get(zzbIQ));
            zzk.put("&t", "transaction");
            for (Map.Entry<String, String> entry : zzal(map).entrySet()) {
                zze(zzk, entry.getValue(), zzhB(entry.getKey()));
            }
            linkedList.add(zzk);
            List<Map<String, String>> zzhC = zzhC("transactionProducts");
            if (zzhC != null) {
                for (Map<String, String> map2 : zzhC) {
                    if (map2.get("name") == null) {
                        zzbo.e("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map<String, String> zzk2 = zzk(map.get(zzbIQ));
                    zzk2.put("&t", "item");
                    zzk2.put("&ti", zzhB);
                    for (Map.Entry<String, String> entry2 : zzam(map).entrySet()) {
                        zze(zzk2, entry2.getValue(), map2.get(entry2.getKey()));
                    }
                    linkedList.add(zzk2);
                }
            }
            for (Map<String, String> map3 : linkedList) {
                tracker.send(map3);
            }
        } catch (IllegalArgumentException e) {
            zzbo.zzb("Unable to send transaction", e);
        }
    }

    private Promotion zzaj(Map<String, String> map) {
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

    private Product zzak(Map<String, Object> map) {
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
                    zzbo.zzbh(valueOf.length() != 0 ? "illegal number in custom dimension value: ".concat(valueOf) : new String("illegal number in custom dimension value: "));
                }
            } else {
                Matcher matcher2 = zzbIW.matcher(str);
                if (matcher2.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher2.group(1)), zzW(map.get(str)).intValue());
                    } catch (NumberFormatException e2) {
                        String valueOf2 = String.valueOf(str);
                        zzbo.zzbh(valueOf2.length() != 0 ? "illegal number in custom metric value: ".concat(valueOf2) : new String("illegal number in custom metric value: "));
                    }
                }
            }
        }
        return product;
    }

    private Map<String, String> zzal(Map<String, zzak.zza> map) {
        zzak.zza zzaVar = map.get(zzbIS);
        if (zzaVar != null) {
            return zzc(zzaVar);
        }
        if (zzbIX == null) {
            HashMap hashMap = new HashMap();
            hashMap.put(AnalyticsSQLiteHelper.TRANSACTION_ID, "&ti");
            hashMap.put("transactionAffiliation", "&ta");
            hashMap.put("transactionTax", "&tt");
            hashMap.put("transactionShipping", "&ts");
            hashMap.put("transactionTotal", "&tr");
            hashMap.put("transactionCurrency", "&cu");
            zzbIX = hashMap;
        }
        return zzbIX;
    }

    private Map<String, String> zzam(Map<String, zzak.zza> map) {
        zzak.zza zzaVar = map.get(zzbIT);
        if (zzaVar != null) {
            return zzc(zzaVar);
        }
        if (zzbIY == null) {
            HashMap hashMap = new HashMap();
            hashMap.put("name", "&in");
            hashMap.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, "&ic");
            hashMap.put("category", "&iv");
            hashMap.put(a.b.PRICE, "&ip");
            hashMap.put(a.b.QUANTITY, "&iq");
            hashMap.put("currency", "&cu");
            zzbIY = hashMap;
        }
        return zzbIY;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void zzb(Tracker tracker, Map<String, zzak.zza> map) {
        Map map2;
        boolean z;
        HitBuilders.HitBuilder screenViewBuilder = new HitBuilders.ScreenViewBuilder();
        Map<String, String> zzk = zzk(map.get(zzbIQ));
        screenViewBuilder.setAll(zzk);
        if (zzi(map, zzbIO)) {
            Object obj = this.zzbEV.get("ecommerce");
            map2 = obj instanceof Map ? (Map) obj : null;
        } else {
            Object zzj = zzdl.zzj(map.get(zzbIP));
            map2 = zzj instanceof Map ? (Map) zzj : null;
        }
        if (map2 != null) {
            String str = zzk.get("&cu");
            if (str == null) {
                str = (String) map2.get(AnalyticsSQLiteHelper.TRANSACTION_ITEM_CURRENCY_CODE);
            }
            if (str != null) {
                screenViewBuilder.set("&cu", str);
            }
            Object obj2 = map2.get("impressions");
            if (obj2 instanceof List) {
                for (Map<String, Object> map3 : (List) obj2) {
                    try {
                        screenViewBuilder.addImpression(zzak(map3), (String) map3.get("list"));
                    } catch (RuntimeException e) {
                        String valueOf = String.valueOf(e.getMessage());
                        zzbo.e(valueOf.length() != 0 ? "Failed to extract a product from DataLayer. ".concat(valueOf) : new String("Failed to extract a product from DataLayer. "));
                    }
                }
            }
            List<Map<String, String>> list = map2.containsKey("promoClick") ? (List) ((Map) map2.get("promoClick")).get("promotions") : map2.containsKey("promoView") ? (List) ((Map) map2.get("promoView")).get("promotions") : null;
            if (list != null) {
                for (Map<String, String> map4 : list) {
                    try {
                        screenViewBuilder.addPromotion(zzaj(map4));
                    } catch (RuntimeException e2) {
                        String valueOf2 = String.valueOf(e2.getMessage());
                        zzbo.e(valueOf2.length() != 0 ? "Failed to extract a promotion from DataLayer. ".concat(valueOf2) : new String("Failed to extract a promotion from DataLayer. "));
                    }
                }
                if (map2.containsKey("promoClick")) {
                    screenViewBuilder.set("&promoa", "click");
                    z = false;
                    if (z) {
                        Iterator<String> it = zzbIU.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            String next = it.next();
                            if (map2.containsKey(next)) {
                                Map map5 = (Map) map2.get(next);
                                List<Map<String, Object>> list2 = (List) map5.get("products");
                                if (list2 != null) {
                                    for (Map<String, Object> map6 : list2) {
                                        try {
                                            screenViewBuilder.addProduct(zzak(map6));
                                        } catch (RuntimeException e3) {
                                            String valueOf3 = String.valueOf(e3.getMessage());
                                            zzbo.e(valueOf3.length() != 0 ? "Failed to extract a product from DataLayer. ".concat(valueOf3) : new String("Failed to extract a product from DataLayer. "));
                                        }
                                    }
                                }
                                try {
                                    screenViewBuilder.setProductAction(map5.containsKey("actionField") ? zzh(next, (Map) map5.get("actionField")) : new ProductAction(next));
                                } catch (RuntimeException e4) {
                                    String valueOf4 = String.valueOf(e4.getMessage());
                                    zzbo.e(valueOf4.length() != 0 ? "Failed to extract a product action from DataLayer. ".concat(valueOf4) : new String("Failed to extract a product action from DataLayer. "));
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

    private Map<String, String> zzc(zzak.zza zzaVar) {
        Object zzj = zzdl.zzj(zzaVar);
        if (!(zzj instanceof Map)) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) zzj).entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private void zze(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private ProductAction zzh(String str, Map<String, Object> map) {
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

    private String zzhB(String str) {
        Object obj = this.zzbEV.get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    private List<Map<String, String>> zzhC(String str) {
        Object obj = this.zzbEV.get(str);
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof List)) {
            throw new IllegalArgumentException("transactionProducts should be of type List.");
        }
        for (Object obj2 : (List) obj) {
            if (!(obj2 instanceof Map)) {
                throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
            }
        }
        return (List) obj;
    }

    private boolean zzi(Map<String, zzak.zza> map, String str) {
        zzak.zza zzaVar = map.get(str);
        if (zzaVar == null) {
            return false;
        }
        return zzdl.zzi(zzaVar).booleanValue();
    }

    private Map<String, String> zzk(zzak.zza zzaVar) {
        Map<String, String> zzc;
        if (zzaVar != null && (zzc = zzc(zzaVar)) != null) {
            String str = zzc.get("&aip");
            if (str != null && this.zzbIZ.contains(str.toLowerCase())) {
                zzc.remove("&aip");
            }
            return zzc;
        }
        return new HashMap();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ String zzQL() {
        return super.zzQL();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ Set zzQM() {
        return super.zzQM();
    }

    @Override // com.google.android.gms.tagmanager.zzdj, com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ boolean zzQb() {
        return super.zzQb();
    }

    @Override // com.google.android.gms.tagmanager.zzdj, com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ zzak.zza zzZ(Map map) {
        return super.zzZ(map);
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public void zzab(Map<String, zzak.zza> map) {
        Tracker zzht = this.zzbJa.zzht("_GTM_DEFAULT_TRACKER_");
        zzht.enableAdvertisingIdCollection(zzi(map, "collect_adid"));
        if (zzi(map, zzbIN)) {
            zzb(zzht, map);
        } else if (zzi(map, zzbIM)) {
            zzht.send(zzk(map.get(zzbIQ)));
        } else if (zzi(map, zzbIR)) {
            zza(zzht, map);
        } else {
            zzbo.zzbh("Ignoring unknown tag.");
        }
    }
}
