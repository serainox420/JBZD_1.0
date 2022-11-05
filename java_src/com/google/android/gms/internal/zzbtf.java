package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzbtf {
    private static final Pattern zzckJ = Pattern.compile("[\\[\\]\\.#$]");
    private static final Pattern zzckK = Pattern.compile("[\\[\\]\\.#\\$\\/\\u0000-\\u001F\\u007F]");

    private static boolean zzP(zzbph zzbphVar) {
        zzbrq zzYS = zzbphVar.zzYS();
        return zzYS == null || !zzYS.asString().startsWith(".");
    }

    public static void zzQ(zzbph zzbphVar) throws DatabaseException {
        if (!zzP(zzbphVar)) {
            String valueOf = String.valueOf(zzbphVar.toString());
            throw new DatabaseException(valueOf.length() != 0 ? "Invalid write location: ".concat(valueOf) : new String("Invalid write location: "));
        }
    }

    public static void zzax(Object obj) {
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                return;
            }
            for (Object obj2 : (List) obj) {
                zzax(obj2);
            }
            return;
        }
        Map map = (Map) obj;
        if (map.containsKey(".sv")) {
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            zzjq((String) entry.getKey());
            zzax(entry.getValue());
        }
    }

    public static Map<zzbph, zzbsc> zzc(zzbph zzbphVar, Map<String, Object> map) throws DatabaseException {
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            zzbph zzbphVar2 = new zzbph(entry.getKey());
            Object value = entry.getValue();
            zzbpw.zza(zzbphVar.zzh(zzbphVar2), value);
            String asString = !zzbphVar2.isEmpty() ? zzbphVar2.zzYV().asString() : "";
            if (asString.equals(".sv") || asString.equals(".value")) {
                String valueOf = String.valueOf(zzbphVar2);
                throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 40 + String.valueOf(asString).length()).append("Path '").append(valueOf).append("' contains disallowed child name: ").append(asString).toString());
            } else if (asString.equals(".priority") && !zzbsg.zzq(zzbsd.zzat(value))) {
                String valueOf2 = String.valueOf(zzbphVar2);
                throw new DatabaseException(new StringBuilder(String.valueOf(valueOf2).length() + 83).append("Path '").append(valueOf2).append("' contains invalid priority (must be a string, double, ServerValue, or null).").toString());
            } else {
                zzax(value);
                treeMap.put(zzbphVar2, zzbsd.zzat(value));
            }
        }
        zzbph zzbphVar3 = null;
        Iterator it = treeMap.keySet().iterator();
        while (true) {
            zzbph zzbphVar4 = zzbphVar3;
            if (it.hasNext()) {
                zzbphVar3 = (zzbph) it.next();
                zzbte.zzbb(zzbphVar4 == null || zzbphVar4.compareTo(zzbphVar3) < 0);
                if (zzbphVar4 != null && zzbphVar4.zzi(zzbphVar3)) {
                    String valueOf3 = String.valueOf(zzbphVar4);
                    String valueOf4 = String.valueOf(zzbphVar3);
                    throw new DatabaseException(new StringBuilder(String.valueOf(valueOf3).length() + 42 + String.valueOf(valueOf4).length()).append("Path '").append(valueOf3).append("' is an ancestor of '").append(valueOf4).append("' in an update.").toString());
                }
            } else {
                return treeMap;
            }
        }
    }

    private static boolean zzjk(String str) {
        return !zzckJ.matcher(str).find();
    }

    public static void zzjl(String str) throws DatabaseException {
        if (!zzjk(str)) {
            throw new DatabaseException(new StringBuilder(String.valueOf(str).length() + 101).append("Invalid Firebase Database path: ").append(str).append(". Firebase Database paths must not contain '.', '#', '$', '[', or ']'").toString());
        }
    }

    public static void zzjm(String str) throws DatabaseException {
        if (str.startsWith(".info")) {
            zzjl(str.substring(5));
        } else if (str.startsWith("/.info")) {
            zzjl(str.substring(6));
        } else {
            zzjl(str);
        }
    }

    private static boolean zzjn(String str) {
        return str != null && str.length() > 0 && (str.equals(".value") || str.equals(".priority") || (!str.startsWith(".") && !zzckK.matcher(str).find()));
    }

    private static boolean zzjo(String str) {
        return str.equals(".info") || !zzckK.matcher(str).find();
    }

    public static void zzjp(String str) throws DatabaseException {
        if (str == null || zzjo(str)) {
            return;
        }
        throw new DatabaseException(new StringBuilder(String.valueOf(str).length() + 68).append("Invalid key: ").append(str).append(". Keys must not contain '/', '.', '#', '$', '[', or ']'").toString());
    }

    public static void zzjq(String str) throws DatabaseException {
        if (!zzjn(str)) {
            throw new DatabaseException(new StringBuilder(String.valueOf(str).length() + 68).append("Invalid key: ").append(str).append(". Keys must not contain '/', '.', '#', '$', '[', or ']'").toString());
        }
    }
}
