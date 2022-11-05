package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbpw {
    private final List<String> zzcgt = new ArrayList();
    private int zzcgu;

    private zzbpw(zzbph zzbphVar) throws DatabaseException {
        this.zzcgu = 0;
        Iterator<zzbrq> it = zzbphVar.iterator();
        while (it.hasNext()) {
            this.zzcgt.add(it.next().asString());
        }
        this.zzcgu = Math.max(1, this.zzcgt.size());
        for (int i = 0; i < this.zzcgt.size(); i++) {
            this.zzcgu = zza(this.zzcgt.get(i)) + this.zzcgu;
        }
        zzUs();
    }

    private void zzUs() throws DatabaseException {
        if (this.zzcgu > 768) {
            String valueOf = String.valueOf("Data has a key path longer than 768 bytes (");
            throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 13).append(valueOf).append(this.zzcgu).append(").").toString());
        } else if (this.zzcgt.size() <= 32) {
        } else {
            String valueOf2 = String.valueOf("Path specified exceeds the maximum depth that can be written (32) or object contains a cycle ");
            String valueOf3 = String.valueOf(zzZr());
            throw new DatabaseException(valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2));
        }
    }

    private String zzZq() {
        String remove = this.zzcgt.remove(this.zzcgt.size() - 1);
        this.zzcgu -= zza(remove);
        if (this.zzcgt.size() > 0) {
            this.zzcgu--;
        }
        return remove;
    }

    private String zzZr() {
        if (this.zzcgt.size() == 0) {
            return "";
        }
        String valueOf = String.valueOf(zzf("/", this.zzcgt));
        return new StringBuilder(String.valueOf(valueOf).length() + 10).append("in path '").append(valueOf).append("'").toString();
    }

    private static int zza(CharSequence charSequence) {
        int i = 0;
        int length = charSequence.length();
        int i2 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt <= 127) {
                i2++;
            } else if (charAt <= 2047) {
                i2 += 2;
            } else if (Character.isHighSurrogate(charAt)) {
                i2 += 4;
                i++;
            } else {
                i2 += 3;
            }
            i++;
        }
        return i2;
    }

    public static void zza(zzbph zzbphVar, Object obj) throws DatabaseException {
        new zzbpw(zzbphVar).zzar(obj);
    }

    private void zzar(Object obj) throws DatabaseException {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            for (String str : map.keySet()) {
                if (!str.startsWith(".")) {
                    zziZ(str);
                    zzar(map.get(str));
                    zzZq();
                }
            }
        } else if (obj instanceof List) {
            List list = (List) obj;
            for (int i = 0; i < list.size(); i++) {
                zziZ(Integer.toString(i));
                zzar(list.get(i));
                zzZq();
            }
        }
    }

    private static String zzf(String str, List<String> list) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                if (i2 > 0) {
                    sb.append(str);
                }
                sb.append(list.get(i2));
                i = i2 + 1;
            } else {
                return sb.toString();
            }
        }
    }

    private void zziZ(String str) throws DatabaseException {
        if (this.zzcgt.size() > 0) {
            this.zzcgu++;
        }
        this.zzcgt.add(str);
        this.zzcgu += zza(str);
        zzUs();
    }
}
