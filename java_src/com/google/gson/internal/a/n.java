package com.google.gson.internal.a;

import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.o;
import com.google.gson.p;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
/* compiled from: TypeAdapters.java */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public static final o<Class> f3652a = new o<Class>() { // from class: com.google.gson.internal.a.n.1
        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Class cls) throws IOException {
            if (cls == null) {
                bVar.f();
                return;
            }
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }

        @Override // com.google.gson.o
        /* renamed from: a */
        public Class b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    };
    public static final p b = a(Class.class, f3652a);
    public static final o<BitSet> c = new o<BitSet>() { // from class: com.google.gson.internal.a.n.12
        @Override // com.google.gson.o
        /* renamed from: a */
        public BitSet b(com.google.gson.stream.a aVar) throws IOException {
            boolean z2;
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            BitSet bitSet = new BitSet();
            aVar.a();
            JsonToken f2 = aVar.f();
            int i2 = 0;
            while (f2 != JsonToken.END_ARRAY) {
                switch (AnonymousClass29.f3659a[f2.ordinal()]) {
                    case 1:
                        if (aVar.m() == 0) {
                            z2 = false;
                            break;
                        } else {
                            z2 = true;
                            break;
                        }
                    case 2:
                        z2 = aVar.i();
                        break;
                    case 3:
                        String h2 = aVar.h();
                        try {
                            if (Integer.parseInt(h2) == 0) {
                                z2 = false;
                                break;
                            } else {
                                z2 = true;
                                break;
                            }
                        } catch (NumberFormatException e2) {
                            throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + h2);
                        }
                    default:
                        throw new JsonSyntaxException("Invalid bitset value type: " + f2);
                }
                if (z2) {
                    bitSet.set(i2);
                }
                i2++;
                f2 = aVar.f();
            }
            aVar.b();
            return bitSet;
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, BitSet bitSet) throws IOException {
            if (bitSet == null) {
                bVar.f();
                return;
            }
            bVar.b();
            for (int i2 = 0; i2 < bitSet.length(); i2++) {
                bVar.a(bitSet.get(i2) ? 1 : 0);
            }
            bVar.c();
        }
    };
    public static final p d = a(BitSet.class, c);
    public static final o<Boolean> e = new o<Boolean>() { // from class: com.google.gson.internal.a.n.23
        @Override // com.google.gson.o
        /* renamed from: a */
        public Boolean b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            } else if (aVar.f() == JsonToken.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(aVar.h()));
            } else {
                return Boolean.valueOf(aVar.i());
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Boolean bool) throws IOException {
            bVar.a(bool);
        }
    };
    public static final o<Boolean> f = new o<Boolean>() { // from class: com.google.gson.internal.a.n.30
        @Override // com.google.gson.o
        /* renamed from: a */
        public Boolean b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return Boolean.valueOf(aVar.h());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Boolean bool) throws IOException {
            bVar.b(bool == null ? "null" : bool.toString());
        }
    };
    public static final p g = a(Boolean.TYPE, Boolean.class, e);
    public static final o<Number> h = new o<Number>() { // from class: com.google.gson.internal.a.n.31
        @Override // com.google.gson.o
        /* renamed from: a */
        public Number b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.m());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    };
    public static final p i = a(Byte.TYPE, Byte.class, h);
    public static final o<Number> j = new o<Number>() { // from class: com.google.gson.internal.a.n.32
        @Override // com.google.gson.o
        /* renamed from: a */
        public Number b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.m());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    };
    public static final p k = a(Short.TYPE, Short.class, j);
    public static final o<Number> l = new o<Number>() { // from class: com.google.gson.internal.a.n.33
        @Override // com.google.gson.o
        /* renamed from: a */
        public Number b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Integer.valueOf(aVar.m());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    };
    public static final p m = a(Integer.TYPE, Integer.class, l);
    public static final o<AtomicInteger> n = new o<AtomicInteger>() { // from class: com.google.gson.internal.a.n.34
        @Override // com.google.gson.o
        /* renamed from: a */
        public AtomicInteger b(com.google.gson.stream.a aVar) throws IOException {
            try {
                return new AtomicInteger(aVar.m());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, AtomicInteger atomicInteger) throws IOException {
            bVar.a(atomicInteger.get());
        }
    }.a();
    public static final p o = a(AtomicInteger.class, n);
    public static final o<AtomicBoolean> p = new o<AtomicBoolean>() { // from class: com.google.gson.internal.a.n.35
        @Override // com.google.gson.o
        /* renamed from: a */
        public AtomicBoolean b(com.google.gson.stream.a aVar) throws IOException {
            return new AtomicBoolean(aVar.i());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, AtomicBoolean atomicBoolean) throws IOException {
            bVar.a(atomicBoolean.get());
        }
    }.a();
    public static final p q = a(AtomicBoolean.class, p);
    public static final o<AtomicIntegerArray> r = new o<AtomicIntegerArray>() { // from class: com.google.gson.internal.a.n.2
        @Override // com.google.gson.o
        /* renamed from: a */
        public AtomicIntegerArray b(com.google.gson.stream.a aVar) throws IOException {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.e()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.m()));
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }
            aVar.b();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i2 = 0; i2 < size; i2++) {
                atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
            bVar.b();
            int length = atomicIntegerArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                bVar.a(atomicIntegerArray.get(i2));
            }
            bVar.c();
        }
    }.a();
    public static final p s = a(AtomicIntegerArray.class, r);
    public static final o<Number> t = new o<Number>() { // from class: com.google.gson.internal.a.n.3
        @Override // com.google.gson.o
        /* renamed from: a */
        public Number b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Long.valueOf(aVar.l());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    };
    public static final o<Number> u = new o<Number>() { // from class: com.google.gson.internal.a.n.4
        @Override // com.google.gson.o
        /* renamed from: a */
        public Number b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return Float.valueOf((float) aVar.k());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    };
    public static final o<Number> v = new o<Number>() { // from class: com.google.gson.internal.a.n.5
        @Override // com.google.gson.o
        /* renamed from: a */
        public Number b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return Double.valueOf(aVar.k());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    };
    public static final o<Number> w = new o<Number>() { // from class: com.google.gson.internal.a.n.6
        @Override // com.google.gson.o
        /* renamed from: a */
        public Number b(com.google.gson.stream.a aVar) throws IOException {
            JsonToken f2 = aVar.f();
            switch (f2) {
                case NUMBER:
                    return new LazilyParsedNumber(aVar.h());
                case BOOLEAN:
                case STRING:
                default:
                    throw new JsonSyntaxException("Expecting number, got: " + f2);
                case NULL:
                    aVar.j();
                    return null;
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Number number) throws IOException {
            bVar.a(number);
        }
    };
    public static final p x = a(Number.class, w);
    public static final o<Character> y = new o<Character>() { // from class: com.google.gson.internal.a.n.7
        @Override // com.google.gson.o
        /* renamed from: a */
        public Character b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            String h2 = aVar.h();
            if (h2.length() != 1) {
                throw new JsonSyntaxException("Expecting character, got: " + h2);
            }
            return Character.valueOf(h2.charAt(0));
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Character ch) throws IOException {
            bVar.b(ch == null ? null : String.valueOf(ch));
        }
    };
    public static final p z = a(Character.TYPE, Character.class, y);
    public static final o<String> A = new o<String>() { // from class: com.google.gson.internal.a.n.8
        @Override // com.google.gson.o
        /* renamed from: a */
        public String b(com.google.gson.stream.a aVar) throws IOException {
            JsonToken f2 = aVar.f();
            if (f2 == JsonToken.NULL) {
                aVar.j();
                return null;
            } else if (f2 == JsonToken.BOOLEAN) {
                return Boolean.toString(aVar.i());
            } else {
                return aVar.h();
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, String str) throws IOException {
            bVar.b(str);
        }
    };
    public static final o<BigDecimal> B = new o<BigDecimal>() { // from class: com.google.gson.internal.a.n.9
        @Override // com.google.gson.o
        /* renamed from: a */
        public BigDecimal b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new BigDecimal(aVar.h());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, BigDecimal bigDecimal) throws IOException {
            bVar.a(bigDecimal);
        }
    };
    public static final o<BigInteger> C = new o<BigInteger>() { // from class: com.google.gson.internal.a.n.10
        @Override // com.google.gson.o
        /* renamed from: a */
        public BigInteger b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new BigInteger(aVar.h());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, BigInteger bigInteger) throws IOException {
            bVar.a(bigInteger);
        }
    };
    public static final p D = a(String.class, A);
    public static final o<StringBuilder> E = new o<StringBuilder>() { // from class: com.google.gson.internal.a.n.11
        @Override // com.google.gson.o
        /* renamed from: a */
        public StringBuilder b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return new StringBuilder(aVar.h());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, StringBuilder sb) throws IOException {
            bVar.b(sb == null ? null : sb.toString());
        }
    };
    public static final p F = a(StringBuilder.class, E);
    public static final o<StringBuffer> G = new o<StringBuffer>() { // from class: com.google.gson.internal.a.n.13
        @Override // com.google.gson.o
        /* renamed from: a */
        public StringBuffer b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return new StringBuffer(aVar.h());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, StringBuffer stringBuffer) throws IOException {
            bVar.b(stringBuffer == null ? null : stringBuffer.toString());
        }
    };
    public static final p H = a(StringBuffer.class, G);
    public static final o<URL> I = new o<URL>() { // from class: com.google.gson.internal.a.n.14
        @Override // com.google.gson.o
        /* renamed from: a */
        public URL b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            String h2 = aVar.h();
            if ("null".equals(h2)) {
                return null;
            }
            return new URL(h2);
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, URL url) throws IOException {
            bVar.b(url == null ? null : url.toExternalForm());
        }
    };
    public static final p J = a(URL.class, I);
    public static final o<URI> K = new o<URI>() { // from class: com.google.gson.internal.a.n.15
        @Override // com.google.gson.o
        /* renamed from: a */
        public URI b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            try {
                String h2 = aVar.h();
                if ("null".equals(h2)) {
                    return null;
                }
                return new URI(h2);
            } catch (URISyntaxException e2) {
                throw new JsonIOException(e2);
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, URI uri) throws IOException {
            bVar.b(uri == null ? null : uri.toASCIIString());
        }
    };
    public static final p L = a(URI.class, K);
    public static final o<InetAddress> M = new o<InetAddress>() { // from class: com.google.gson.internal.a.n.16
        @Override // com.google.gson.o
        /* renamed from: a */
        public InetAddress b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return InetAddress.getByName(aVar.h());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, InetAddress inetAddress) throws IOException {
            bVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    };
    public static final p N = b(InetAddress.class, M);
    public static final o<UUID> O = new o<UUID>() { // from class: com.google.gson.internal.a.n.17
        @Override // com.google.gson.o
        /* renamed from: a */
        public UUID b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return UUID.fromString(aVar.h());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, UUID uuid) throws IOException {
            bVar.b(uuid == null ? null : uuid.toString());
        }
    };
    public static final p P = a(UUID.class, O);
    public static final o<Currency> Q = new o<Currency>() { // from class: com.google.gson.internal.a.n.18
        @Override // com.google.gson.o
        /* renamed from: a */
        public Currency b(com.google.gson.stream.a aVar) throws IOException {
            return Currency.getInstance(aVar.h());
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Currency currency) throws IOException {
            bVar.b(currency.getCurrencyCode());
        }
    }.a();
    public static final p R = a(Currency.class, Q);
    public static final p S = new p() { // from class: com.google.gson.internal.a.n.19
        @Override // com.google.gson.p
        public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() != Timestamp.class) {
                return null;
            }
            final o<T> a2 = dVar.a((Class) Date.class);
            return (o<T>) new o<Timestamp>() { // from class: com.google.gson.internal.a.n.19.1
                @Override // com.google.gson.o
                /* renamed from: a */
                public Timestamp b(com.google.gson.stream.a aVar2) throws IOException {
                    Date date = (Date) a2.b(aVar2);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override // com.google.gson.o
                public void a(com.google.gson.stream.b bVar, Timestamp timestamp) throws IOException {
                    a2.a(bVar, timestamp);
                }
            };
        }
    };
    public static final o<Calendar> T = new o<Calendar>() { // from class: com.google.gson.internal.a.n.20
        @Override // com.google.gson.o
        /* renamed from: a */
        public Calendar b(com.google.gson.stream.a aVar) throws IOException {
            int i2 = 0;
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            aVar.c();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (aVar.f() != JsonToken.END_OBJECT) {
                String g2 = aVar.g();
                int m2 = aVar.m();
                if ("year".equals(g2)) {
                    i7 = m2;
                } else if ("month".equals(g2)) {
                    i6 = m2;
                } else if ("dayOfMonth".equals(g2)) {
                    i5 = m2;
                } else if ("hourOfDay".equals(g2)) {
                    i4 = m2;
                } else if ("minute".equals(g2)) {
                    i3 = m2;
                } else if ("second".equals(g2)) {
                    i2 = m2;
                }
            }
            aVar.d();
            return new GregorianCalendar(i7, i6, i5, i4, i3, i2);
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                bVar.f();
                return;
            }
            bVar.d();
            bVar.a("year");
            bVar.a(calendar.get(1));
            bVar.a("month");
            bVar.a(calendar.get(2));
            bVar.a("dayOfMonth");
            bVar.a(calendar.get(5));
            bVar.a("hourOfDay");
            bVar.a(calendar.get(11));
            bVar.a("minute");
            bVar.a(calendar.get(12));
            bVar.a("second");
            bVar.a(calendar.get(13));
            bVar.e();
        }
    };
    public static final p U = b(Calendar.class, GregorianCalendar.class, T);
    public static final o<Locale> V = new o<Locale>() { // from class: com.google.gson.internal.a.n.21
        @Override // com.google.gson.o
        /* renamed from: a */
        public Locale b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR);
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (nextToken2 == null && nextToken3 == null) {
                return new Locale(nextToken);
            }
            if (nextToken3 == null) {
                return new Locale(nextToken, nextToken2);
            }
            return new Locale(nextToken, nextToken2, nextToken3);
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, Locale locale) throws IOException {
            bVar.b(locale == null ? null : locale.toString());
        }
    };
    public static final p W = a(Locale.class, V);
    public static final o<com.google.gson.i> X = new o<com.google.gson.i>() { // from class: com.google.gson.internal.a.n.22
        @Override // com.google.gson.o
        /* renamed from: a */
        public com.google.gson.i b(com.google.gson.stream.a aVar) throws IOException {
            switch (AnonymousClass29.f3659a[aVar.f().ordinal()]) {
                case 1:
                    return new com.google.gson.l(new LazilyParsedNumber(aVar.h()));
                case 2:
                    return new com.google.gson.l(Boolean.valueOf(aVar.i()));
                case 3:
                    return new com.google.gson.l(aVar.h());
                case 4:
                    aVar.j();
                    return com.google.gson.j.f3689a;
                case 5:
                    com.google.gson.f fVar = new com.google.gson.f();
                    aVar.a();
                    while (aVar.e()) {
                        fVar.a(b(aVar));
                    }
                    aVar.b();
                    return fVar;
                case 6:
                    com.google.gson.k kVar = new com.google.gson.k();
                    aVar.c();
                    while (aVar.e()) {
                        kVar.a(aVar.g(), b(aVar));
                    }
                    aVar.d();
                    return kVar;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.google.gson.o
        public void a(com.google.gson.stream.b bVar, com.google.gson.i iVar) throws IOException {
            if (iVar == null || iVar.j()) {
                bVar.f();
            } else if (iVar.i()) {
                com.google.gson.l m2 = iVar.m();
                if (m2.p()) {
                    bVar.a(m2.a());
                } else if (m2.o()) {
                    bVar.a(m2.f());
                } else {
                    bVar.b(m2.b());
                }
            } else if (iVar.g()) {
                bVar.b();
                Iterator<com.google.gson.i> it = iVar.l().iterator();
                while (it.hasNext()) {
                    a(bVar, it.next());
                }
                bVar.c();
            } else if (iVar.h()) {
                bVar.d();
                for (Map.Entry<String, com.google.gson.i> entry : iVar.k().o()) {
                    bVar.a(entry.getKey());
                    a(bVar, entry.getValue());
                }
                bVar.e();
            } else {
                throw new IllegalArgumentException("Couldn't write " + iVar.getClass());
            }
        }
    };
    public static final p Y = b(com.google.gson.i.class, X);
    public static final p Z = new p() { // from class: com.google.gson.internal.a.n.24
        @Override // com.google.gson.p
        public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
            Class a2 = aVar.a();
            if (!Enum.class.isAssignableFrom(a2) || a2 == Enum.class) {
                return null;
            }
            if (!a2.isEnum()) {
                a2 = (Class<? super Object>) a2.getSuperclass();
            }
            return new a(a2);
        }
    };

    /* compiled from: TypeAdapters.java */
    /* loaded from: classes2.dex */
    private static final class a<T extends Enum<T>> extends o<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, T> f3660a = new HashMap();
        private final Map<T, String> b = new HashMap();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.o
        public /* bridge */ /* synthetic */ void a(com.google.gson.stream.b bVar, Object obj) throws IOException {
            a(bVar, (com.google.gson.stream.b) ((Enum) obj));
        }

        public a(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    com.google.gson.a.c cVar = (com.google.gson.a.c) cls.getField(name).getAnnotation(com.google.gson.a.c.class);
                    if (cVar != null) {
                        name = cVar.a();
                        String[] b = cVar.b();
                        for (String str : b) {
                            this.f3660a.put(str, t);
                        }
                    }
                    String str2 = name;
                    this.f3660a.put(str2, t);
                    this.b.put(t, str2);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.gson.o
        /* renamed from: a */
        public T b(com.google.gson.stream.a aVar) throws IOException {
            if (aVar.f() == JsonToken.NULL) {
                aVar.j();
                return null;
            }
            return this.f3660a.get(aVar.h());
        }

        public void a(com.google.gson.stream.b bVar, T t) throws IOException {
            bVar.b(t == null ? null : this.b.get(t));
        }
    }

    public static <TT> p a(final Class<TT> cls, final o<TT> oVar) {
        return new p() { // from class: com.google.gson.internal.a.n.25
            @Override // com.google.gson.p
            public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
                if (aVar.a() == cls) {
                    return oVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + oVar + "]";
            }
        };
    }

    public static <TT> p a(final Class<TT> cls, final Class<TT> cls2, final o<? super TT> oVar) {
        return new p() { // from class: com.google.gson.internal.a.n.26
            @Override // com.google.gson.p
            public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
                Class<? super T> a2 = aVar.a();
                if (a2 == cls || a2 == cls2) {
                    return oVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + oVar + "]";
            }
        };
    }

    public static <TT> p b(final Class<TT> cls, final Class<? extends TT> cls2, final o<? super TT> oVar) {
        return new p() { // from class: com.google.gson.internal.a.n.27
            @Override // com.google.gson.p
            public <T> o<T> a(com.google.gson.d dVar, com.google.gson.b.a<T> aVar) {
                Class<? super T> a2 = aVar.a();
                if (a2 == cls || a2 == cls2) {
                    return oVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + oVar + "]";
            }
        };
    }

    public static <T1> p b(final Class<T1> cls, final o<T1> oVar) {
        return new p() { // from class: com.google.gson.internal.a.n.28
            @Override // com.google.gson.p
            public <T2> o<T2> a(com.google.gson.d dVar, com.google.gson.b.a<T2> aVar) {
                final Class<? super T2> a2 = aVar.a();
                if (!cls.isAssignableFrom(a2)) {
                    return null;
                }
                return (o<T2>) new o<T1>() { // from class: com.google.gson.internal.a.n.28.1
                    @Override // com.google.gson.o
                    public void a(com.google.gson.stream.b bVar, T1 t1) throws IOException {
                        oVar.a(bVar, t1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, T1] */
                    @Override // com.google.gson.o
                    public T1 b(com.google.gson.stream.a aVar2) throws IOException {
                        ?? b2 = oVar.b(aVar2);
                        if (b2 != 0 && !a2.isInstance(b2)) {
                            throw new JsonSyntaxException("Expected a " + a2.getName() + " but was " + b2.getClass().getName());
                        }
                        return b2;
                    }
                };
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + oVar + "]";
            }
        };
    }
}
