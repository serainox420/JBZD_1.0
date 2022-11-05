package com.google.gson.internal.a;

import com.google.gson.JsonSyntaxException;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.Locale;
/* compiled from: DateTypeAdapter.java */
/* loaded from: classes2.dex */
public final class c extends o<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final p f3637a = new p() { // from class: com.google.gson.internal.a.c.1
        @Override // com.google.gson.p
        public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new c();
            }
            return null;
        }
    };
    private final DateFormat b = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat c = DateFormat.getDateTimeInstance(2, 2);

    @Override // com.google.gson.o
    /* renamed from: a */
    public Date b(com.google.gson.stream.a aVar) throws IOException {
        if (aVar.f() == JsonToken.NULL) {
            aVar.j();
            return null;
        }
        return a(aVar.h());
    }

    private synchronized Date a(String str) {
        Date a2;
        try {
            a2 = this.c.parse(str);
        } catch (ParseException e) {
            try {
                a2 = this.b.parse(str);
            } catch (ParseException e2) {
                try {
                    a2 = com.google.gson.internal.a.a.a.a(str, new ParsePosition(0));
                } catch (ParseException e3) {
                    throw new JsonSyntaxException(str, e3);
                }
            }
        }
        return a2;
    }

    @Override // com.google.gson.o
    public synchronized void a(com.google.gson.stream.b bVar, Date date) throws IOException {
        if (date == null) {
            bVar.f();
        } else {
            bVar.b(this.b.format(date));
        }
    }
}
