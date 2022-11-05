package com.google.gson.internal.a;

import com.google.gson.JsonSyntaxException;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
/* compiled from: SqlDateTypeAdapter.java */
/* loaded from: classes2.dex */
public final class j extends o<Date> {

    /* renamed from: a  reason: collision with root package name */
    public static final p f3647a = new p() { // from class: com.google.gson.internal.a.j.1
        @Override // com.google.gson.p
        public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new j();
            }
            return null;
        }
    };
    private final DateFormat b = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.google.gson.o
    /* renamed from: a */
    public synchronized Date b(com.google.gson.stream.a aVar) throws IOException {
        Date date;
        if (aVar.f() == JsonToken.NULL) {
            aVar.j();
            date = null;
        } else {
            try {
                date = new Date(this.b.parse(aVar.h()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
        return date;
    }

    @Override // com.google.gson.o
    public synchronized void a(com.google.gson.stream.b bVar, Date date) throws IOException {
        bVar.b(date == null ? null : this.b.format((java.util.Date) date));
    }
}
