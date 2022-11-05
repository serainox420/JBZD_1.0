package com.flurry.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class lq {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f3038a = new HashMap();
    private Map<String, List<a>> b = new HashMap();

    /* loaded from: classes2.dex */
    public interface a {
        void a(String str, Object obj);
    }

    public final synchronized void a(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            Object obj2 = this.f3038a.get(str);
            if (!(obj == obj2 || (obj != null && obj.equals(obj2)))) {
                if (obj == null) {
                    this.f3038a.remove(str);
                } else {
                    this.f3038a.put(str, obj);
                }
                if (this.b.get(str) != null) {
                    for (a aVar : this.b.get(str)) {
                        aVar.a(str, obj);
                    }
                }
            }
        }
    }

    public final synchronized Object a(String str) {
        return this.f3038a.get(str);
    }

    public final synchronized void a(String str, a aVar) {
        if (!TextUtils.isEmpty(str) && aVar != null) {
            List<a> list = this.b.get(str);
            if (list == null) {
                list = new LinkedList<>();
            }
            list.add(aVar);
            this.b.put(str, list);
        }
    }

    public final synchronized boolean b(String str, a aVar) {
        boolean remove;
        if (TextUtils.isEmpty(str)) {
            remove = false;
        } else if (aVar == null) {
            remove = false;
        } else {
            List<a> list = this.b.get(str);
            remove = list == null ? false : list.remove(aVar);
        }
        return remove;
    }
}
