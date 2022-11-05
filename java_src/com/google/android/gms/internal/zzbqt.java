package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbqt<T> {
    public T value;
    public Map<zzbrq, zzbqt<T>> zzcfE = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public String toString(String str) {
        String valueOf = String.valueOf(this.value);
        String sb = new StringBuilder(String.valueOf(str).length() + 10 + String.valueOf(valueOf).length()).append(str).append("<value>: ").append(valueOf).append("\n").toString();
        if (this.zzcfE.isEmpty()) {
            return new StringBuilder(String.valueOf(sb).length() + 7 + String.valueOf(str).length()).append(sb).append(str).append("<empty>").toString();
        }
        Iterator<Map.Entry<zzbrq, zzbqt<T>>> it = this.zzcfE.entrySet().iterator();
        while (true) {
            String str2 = sb;
            if (!it.hasNext()) {
                return str2;
            }
            Map.Entry<zzbrq, zzbqt<T>> next = it.next();
            String valueOf2 = String.valueOf(str2);
            String valueOf3 = String.valueOf(next.getKey());
            String valueOf4 = String.valueOf(next.getValue().toString(String.valueOf(str).concat("\t")));
            sb = new StringBuilder(String.valueOf(valueOf2).length() + 3 + String.valueOf(str).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length()).append(valueOf2).append(str).append(valueOf3).append(":\n").append(valueOf4).append("\n").toString();
        }
    }
}
