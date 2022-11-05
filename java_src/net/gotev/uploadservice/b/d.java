package net.gotev.uploadservice.b;

import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: SchemeHandlerFactory.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private LinkedHashMap<String, Class<? extends c>> f5843a;

    /* compiled from: SchemeHandlerFactory.java */
    /* loaded from: classes3.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final d f5844a = new d();
    }

    public static d a() {
        return a.f5844a;
    }

    private d() {
        this.f5843a = new LinkedHashMap<>();
        this.f5843a.put("/", b.class);
        this.f5843a.put("content://", net.gotev.uploadservice.b.a.class);
    }

    public c a(String str) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        for (Map.Entry<String, Class<? extends c>> entry : this.f5843a.entrySet()) {
            if (str.startsWith(entry.getKey())) {
                c newInstance = entry.getValue().newInstance();
                newInstance.a(str);
                return newInstance;
            }
        }
        throw new UnsupportedOperationException("No handlers for " + str);
    }

    public boolean b(String str) {
        for (String str2 : this.f5843a.keySet()) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }
}
