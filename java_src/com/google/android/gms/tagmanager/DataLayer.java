package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class DataLayer {
    public static final String EVENT_KEY = "event";
    public static final Object OBJECT_NOT_PRESENT = new Object();
    static final String[] zzbFB = "gtm.lifetime".toString().split("\\.");
    private static final Pattern zzbFC = Pattern.compile("(\\d+)\\s*([smhd]?)");
    private final ConcurrentHashMap<zzb, Integer> zzbFD;
    private final Map<String, Object> zzbFE;
    private final ReentrantLock zzbFF;
    private final LinkedList<Map<String, Object>> zzbFG;
    private final zzc zzbFH;
    private final CountDownLatch zzbFI;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class zza {
        public final Object mValue;
        public final String zzAX;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(String str, Object obj) {
            this.zzAX = str;
            this.mValue = obj;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zzAX.equals(zzaVar.zzAX) && this.mValue.equals(zzaVar.mValue);
        }

        public int hashCode() {
            return Arrays.hashCode(new Integer[]{Integer.valueOf(this.zzAX.hashCode()), Integer.valueOf(this.mValue.hashCode())});
        }

        public String toString() {
            String str = this.zzAX;
            String valueOf = String.valueOf(this.mValue.toString());
            return new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(valueOf).length()).append("Key: ").append(str).append(" value: ").append(valueOf).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zzb {
        void zzaa(Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zzc {

        /* loaded from: classes2.dex */
        public interface zza {
            void zzM(List<zza> list);
        }

        void zza(zza zzaVar);

        void zza(List<zza> list, long j);

        void zzhc(String str);
    }

    DataLayer() {
        this(new zzc() { // from class: com.google.android.gms.tagmanager.DataLayer.1
            @Override // com.google.android.gms.tagmanager.DataLayer.zzc
            public void zza(zzc.zza zzaVar) {
                zzaVar.zzM(new ArrayList());
            }

            @Override // com.google.android.gms.tagmanager.DataLayer.zzc
            public void zza(List<zza> list, long j) {
            }

            @Override // com.google.android.gms.tagmanager.DataLayer.zzc
            public void zzhc(String str) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataLayer(zzc zzcVar) {
        this.zzbFH = zzcVar;
        this.zzbFD = new ConcurrentHashMap<>();
        this.zzbFE = new HashMap();
        this.zzbFF = new ReentrantLock();
        this.zzbFG = new LinkedList<>();
        this.zzbFI = new CountDownLatch(1);
        zzQw();
    }

    public static List<Object> listOf(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    public static Map<String, Object> mapOf(Object... objArr) {
        if (objArr.length % 2 != 0) {
            throw new IllegalArgumentException("expected even number of key-value pairs");
        }
        HashMap hashMap = new HashMap();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= objArr.length) {
                return hashMap;
            }
            if (!(objArr[i2] instanceof String)) {
                String valueOf = String.valueOf(objArr[i2]);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 21).append("key is not a string: ").append(valueOf).toString());
            }
            hashMap.put((String) objArr[i2], objArr[i2 + 1]);
            i = i2 + 2;
        }
    }

    private void zzQw() {
        this.zzbFH.zza(new zzc.zza() { // from class: com.google.android.gms.tagmanager.DataLayer.2
            @Override // com.google.android.gms.tagmanager.DataLayer.zzc.zza
            public void zzM(List<zza> list) {
                for (zza zzaVar : list) {
                    DataLayer.this.zzac(DataLayer.this.zzo(zzaVar.zzAX, zzaVar.mValue));
                }
                DataLayer.this.zzbFI.countDown();
            }
        });
    }

    private void zzQx() {
        int i = 0;
        while (true) {
            int i2 = i;
            Map<String, Object> poll = this.zzbFG.poll();
            if (poll != null) {
                zzah(poll);
                i = i2 + 1;
                if (i > 500) {
                    this.zzbFG.clear();
                    throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
                }
            } else {
                return;
            }
        }
    }

    private void zza(Map<String, Object> map, String str, Collection<zza> collection) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String str2 = str.length() == 0 ? "" : ".";
            String key = entry.getKey();
            String sb = new StringBuilder(String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(key).length()).append(str).append(str2).append(key).toString();
            if (entry.getValue() instanceof Map) {
                zza((Map) entry.getValue(), sb, collection);
            } else if (!sb.equals("gtm.lifetime")) {
                collection.add(new zza(sb, entry.getValue()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzac(Map<String, Object> map) {
        this.zzbFF.lock();
        try {
            this.zzbFG.offer(map);
            if (this.zzbFF.getHoldCount() == 1) {
                zzQx();
            }
            zzad(map);
        } finally {
            this.zzbFF.unlock();
        }
    }

    private void zzad(Map<String, Object> map) {
        Long zzae = zzae(map);
        if (zzae == null) {
            return;
        }
        this.zzbFH.zza(zzag(map), zzae.longValue());
    }

    private Long zzae(Map<String, Object> map) {
        Object zzaf = zzaf(map);
        if (zzaf == null) {
            return null;
        }
        return zzhb(zzaf.toString());
    }

    private Object zzaf(Map<String, Object> map) {
        String[] strArr = zzbFB;
        int length = strArr.length;
        int i = 0;
        Map<String, Object> map2 = map;
        while (i < length) {
            String str = strArr[i];
            if (!(map2 instanceof Map)) {
                return null;
            }
            i++;
            map2 = map2.get(str);
        }
        return map2;
    }

    private List<zza> zzag(Map<String, Object> map) {
        ArrayList arrayList = new ArrayList();
        zza(map, "", arrayList);
        return arrayList;
    }

    private void zzah(Map<String, Object> map) {
        synchronized (this.zzbFE) {
            for (String str : map.keySet()) {
                zzd(zzo(str, map.get(str)), this.zzbFE);
            }
        }
        zzai(map);
    }

    private void zzai(Map<String, Object> map) {
        for (zzb zzbVar : this.zzbFD.keySet()) {
            zzbVar.zzaa(map);
        }
    }

    static Long zzhb(String str) {
        long j;
        Matcher matcher = zzbFC.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            zzbo.zzbg(valueOf.length() != 0 ? "unknown _lifetime: ".concat(valueOf) : new String("unknown _lifetime: "));
            return null;
        }
        try {
            j = Long.parseLong(matcher.group(1));
        } catch (NumberFormatException e) {
            String valueOf2 = String.valueOf(str);
            zzbo.zzbh(valueOf2.length() != 0 ? "illegal number in _lifetime value: ".concat(valueOf2) : new String("illegal number in _lifetime value: "));
            j = 0;
        }
        if (j <= 0) {
            String valueOf3 = String.valueOf(str);
            zzbo.zzbg(valueOf3.length() != 0 ? "non-positive _lifetime: ".concat(valueOf3) : new String("non-positive _lifetime: "));
            return null;
        }
        String group = matcher.group(2);
        if (group.length() == 0) {
            return Long.valueOf(j);
        }
        switch (group.charAt(0)) {
            case 'd':
                return Long.valueOf(j * 1000 * 60 * 60 * 24);
            case 'h':
                return Long.valueOf(j * 1000 * 60 * 60);
            case 'm':
                return Long.valueOf(j * 1000 * 60);
            case 's':
                return Long.valueOf(j * 1000);
            default:
                String valueOf4 = String.valueOf(str);
                zzbo.zzbh(valueOf4.length() != 0 ? "unknown units in _lifetime: ".concat(valueOf4) : new String("unknown units in _lifetime: "));
                return null;
        }
    }

    public Object get(String str) {
        synchronized (this.zzbFE) {
            Map<String, Object> map = this.zzbFE;
            String[] split = str.split("\\.");
            int length = split.length;
            Map<String, Object> map2 = map;
            int i = 0;
            while (i < length) {
                String str2 = split[i];
                if (!(map2 instanceof Map)) {
                    return null;
                }
                Object obj = map2.get(str2);
                if (obj == null) {
                    return null;
                }
                i++;
                map2 = obj;
            }
            return map2;
        }
    }

    public void push(String str, Object obj) {
        push(zzo(str, obj));
    }

    public void push(Map<String, Object> map) {
        try {
            this.zzbFI.await();
        } catch (InterruptedException e) {
            zzbo.zzbh("DataLayer.push: unexpected InterruptedException");
        }
        zzac(map);
    }

    public void pushEvent(String str, Map<String, Object> map) {
        HashMap hashMap = new HashMap(map);
        hashMap.put("event", str);
        push(hashMap);
    }

    public String toString() {
        String sb;
        synchronized (this.zzbFE) {
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry<String, Object> entry : this.zzbFE.entrySet()) {
                sb2.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", entry.getKey(), entry.getValue()));
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzb zzbVar) {
        this.zzbFD.put(zzbVar, 0);
    }

    void zzb(List<Object> list, List<Object> list2) {
        while (list2.size() < list.size()) {
            list2.add(null);
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                Object obj = list.get(i2);
                if (obj instanceof List) {
                    if (!(list2.get(i2) instanceof List)) {
                        list2.set(i2, new ArrayList());
                    }
                    zzb((List) obj, (List) list2.get(i2));
                } else if (obj instanceof Map) {
                    if (!(list2.get(i2) instanceof Map)) {
                        list2.set(i2, new HashMap());
                    }
                    zzd((Map) obj, (Map) list2.get(i2));
                } else if (obj != OBJECT_NOT_PRESENT) {
                    list2.set(i2, obj);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    void zzd(Map<String, Object> map, Map<String, Object> map2) {
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj instanceof List) {
                if (!(map2.get(str) instanceof List)) {
                    map2.put(str, new ArrayList());
                }
                zzb((List) obj, (List) map2.get(str));
            } else if (obj instanceof Map) {
                if (!(map2.get(str) instanceof Map)) {
                    map2.put(str, new HashMap());
                }
                zzd((Map) obj, (Map) map2.get(str));
            } else {
                map2.put(str, obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzha(String str) {
        push(str, null);
        this.zzbFH.zzhc(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> zzo(String str, Object obj) {
        HashMap hashMap = new HashMap();
        String[] split = str.toString().split("\\.");
        int i = 0;
        HashMap hashMap2 = hashMap;
        while (i < split.length - 1) {
            HashMap hashMap3 = new HashMap();
            hashMap2.put(split[i], hashMap3);
            i++;
            hashMap2 = hashMap3;
        }
        hashMap2.put(split[split.length - 1], obj);
        return hashMap;
    }
}
