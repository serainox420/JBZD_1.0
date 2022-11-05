package com.google.gson;

import java.io.IOException;
import java.io.StringWriter;
/* compiled from: JsonElement.java */
/* loaded from: classes2.dex */
public abstract class i {
    public boolean g() {
        return this instanceof f;
    }

    public boolean h() {
        return this instanceof k;
    }

    public boolean i() {
        return this instanceof l;
    }

    public boolean j() {
        return this instanceof j;
    }

    public k k() {
        if (h()) {
            return (k) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public f l() {
        if (g()) {
            return (f) this;
        }
        throw new IllegalStateException("This is not a JSON Array.");
    }

    public l m() {
        if (i()) {
            return (l) this;
        }
        throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public boolean f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    Boolean n() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public Number a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public long d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            com.google.gson.stream.b bVar = new com.google.gson.stream.b(stringWriter);
            bVar.b(true);
            com.google.gson.internal.h.a(this, bVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
