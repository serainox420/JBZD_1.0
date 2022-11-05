package com.google.gson.internal.a;

import com.google.gson.JsonSyntaxException;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* compiled from: TimeTypeAdapter.java */
/* loaded from: classes2.dex */
public final class k extends o<Time> {

    /* renamed from: a  reason: collision with root package name */
    public static final p f3648a = new p() { // from class: com.google.gson.internal.a.k.1
        @Override // com.google.gson.p
        public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() == Time.class) {
                return new k();
            }
            return null;
        }
    };
    private final DateFormat b = new SimpleDateFormat("hh:mm:ss a");

    @Override // com.google.gson.o
    /* renamed from: a */
    public synchronized Time b(com.google.gson.stream.a aVar) throws IOException {
        Time time;
        if (aVar.f() == JsonToken.NULL) {
            aVar.j();
            time = null;
        } else {
            try {
                time = new Time(this.b.parse(aVar.h()).getTime());
            } catch (ParseException e) {
                throw new JsonSyntaxException(e);
            }
        }
        return time;
    }

    @Override // com.google.gson.o
    public synchronized void a(com.google.gson.stream.b bVar, Time time) throws IOException {
        bVar.b(time == null ? null : this.b.format((Date) time));
    }
}
