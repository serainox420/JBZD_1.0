package com.google.android.gms.internal;

import io.fabric.sdk.android.services.b.b;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class zzbwf {
    public static final zzbvc<Class> zzcri = new zzbvc<Class>() { // from class: com.google.android.gms.internal.zzbwf.1
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Class cls) throws IOException {
            if (cls == null) {
                zzbwjVar.zzadP();
            } else {
                String valueOf = String.valueOf(cls.getName());
                throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 76).append("Attempted to serialize java.lang.Class: ").append(valueOf).append(". Forgot to register a type adapter?").toString());
            }
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzo */
        public Class zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    };
    public static final zzbvd zzcrj = zza(Class.class, zzcri);
    public static final zzbvc<BitSet> zzcrk = new zzbvc<BitSet>() { // from class: com.google.android.gms.internal.zzbwf.12
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, BitSet bitSet) throws IOException {
            if (bitSet == null) {
                zzbwjVar.zzadP();
                return;
            }
            zzbwjVar.zzadL();
            for (int i = 0; i < bitSet.length(); i++) {
                zzbwjVar.zzaY(bitSet.get(i) ? 1 : 0);
            }
            zzbwjVar.zzadM();
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzx */
        public BitSet zzb(zzbwh zzbwhVar) throws IOException {
            boolean z;
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            BitSet bitSet = new BitSet();
            zzbwhVar.beginArray();
            zzbwi zzadF = zzbwhVar.zzadF();
            int i = 0;
            while (zzadF != zzbwi.END_ARRAY) {
                switch (AnonymousClass26.zzcqV[zzadF.ordinal()]) {
                    case 1:
                        if (zzbwhVar.nextInt() == 0) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    case 2:
                        z = zzbwhVar.nextBoolean();
                        break;
                    case 3:
                        String nextString = zzbwhVar.nextString();
                        try {
                            if (Integer.parseInt(nextString) == 0) {
                                z = false;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        } catch (NumberFormatException e) {
                            String valueOf = String.valueOf(nextString);
                            throw new zzbuz(valueOf.length() != 0 ? "Error: Expecting: bitset number value (1, 0), Found: ".concat(valueOf) : new String("Error: Expecting: bitset number value (1, 0), Found: "));
                        }
                    default:
                        String valueOf2 = String.valueOf(zzadF);
                        throw new zzbuz(new StringBuilder(String.valueOf(valueOf2).length() + 27).append("Invalid bitset value type: ").append(valueOf2).toString());
                }
                if (z) {
                    bitSet.set(i);
                }
                i++;
                zzadF = zzbwhVar.zzadF();
            }
            zzbwhVar.endArray();
            return bitSet;
        }
    };
    public static final zzbvd zzcrl = zza(BitSet.class, zzcrk);
    public static final zzbvc<Boolean> zzcrm = new zzbvc<Boolean>() { // from class: com.google.android.gms.internal.zzbwf.23
        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzE */
        public Boolean zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() != zzbwi.NULL) {
                return zzbwhVar.zzadF() == zzbwi.STRING ? Boolean.valueOf(Boolean.parseBoolean(zzbwhVar.nextString())) : Boolean.valueOf(zzbwhVar.nextBoolean());
            }
            zzbwhVar.nextNull();
            return null;
        }

        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Boolean bool) throws IOException {
            if (bool == null) {
                zzbwjVar.zzadP();
            } else {
                zzbwjVar.zzbl(bool.booleanValue());
            }
        }
    };
    public static final zzbvc<Boolean> zzcrn = new zzbvc<Boolean>() { // from class: com.google.android.gms.internal.zzbwf.27
        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzE */
        public Boolean zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return Boolean.valueOf(zzbwhVar.nextString());
        }

        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Boolean bool) throws IOException {
            zzbwjVar.zzjW(bool == null ? "null" : bool.toString());
        }
    };
    public static final zzbvd zzcro = zza(Boolean.TYPE, Boolean.class, zzcrm);
    public static final zzbvc<Number> zzcrp = new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbwf.28
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Number number) throws IOException {
            zzbwjVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzg */
        public Number zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            try {
                return Byte.valueOf((byte) zzbwhVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzbuz(e);
            }
        }
    };
    public static final zzbvd zzcrq = zza(Byte.TYPE, Byte.class, zzcrp);
    public static final zzbvc<Number> zzcrr = new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbwf.29
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Number number) throws IOException {
            zzbwjVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzg */
        public Number zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) zzbwhVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzbuz(e);
            }
        }
    };
    public static final zzbvd zzcrs = zza(Short.TYPE, Short.class, zzcrr);
    public static final zzbvc<Number> zzcrt = new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbwf.30
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Number number) throws IOException {
            zzbwjVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzg */
        public Number zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(zzbwhVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzbuz(e);
            }
        }
    };
    public static final zzbvd zzcru = zza(Integer.TYPE, Integer.class, zzcrt);
    public static final zzbvc<Number> zzcrv = new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbwf.31
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Number number) throws IOException {
            zzbwjVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzg */
        public Number zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            try {
                return Long.valueOf(zzbwhVar.nextLong());
            } catch (NumberFormatException e) {
                throw new zzbuz(e);
            }
        }
    };
    public static final zzbvc<Number> zzcrw = new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbwf.32
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Number number) throws IOException {
            zzbwjVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzg */
        public Number zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return Float.valueOf((float) zzbwhVar.nextDouble());
        }
    };
    public static final zzbvc<Number> zzcrx = new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbwf.2
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Number number) throws IOException {
            zzbwjVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzg */
        public Number zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return Double.valueOf(zzbwhVar.nextDouble());
        }
    };
    public static final zzbvc<Number> zzcry = new zzbvc<Number>() { // from class: com.google.android.gms.internal.zzbwf.3
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Number number) throws IOException {
            zzbwjVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzg */
        public Number zzb(zzbwh zzbwhVar) throws IOException {
            zzbwi zzadF = zzbwhVar.zzadF();
            switch (zzadF) {
                case NUMBER:
                    return new zzbvn(zzbwhVar.nextString());
                case BOOLEAN:
                case STRING:
                default:
                    String valueOf = String.valueOf(zzadF);
                    throw new zzbuz(new StringBuilder(String.valueOf(valueOf).length() + 23).append("Expecting number, got: ").append(valueOf).toString());
                case NULL:
                    zzbwhVar.nextNull();
                    return null;
            }
        }
    };
    public static final zzbvd zzcrz = zza(Number.class, zzcry);
    public static final zzbvc<Character> zzcrA = new zzbvc<Character>() { // from class: com.google.android.gms.internal.zzbwf.4
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Character ch) throws IOException {
            zzbwjVar.zzjW(ch == null ? null : String.valueOf(ch));
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzp */
        public Character zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            String nextString = zzbwhVar.nextString();
            if (nextString.length() == 1) {
                return Character.valueOf(nextString.charAt(0));
            }
            String valueOf = String.valueOf(nextString);
            throw new zzbuz(valueOf.length() != 0 ? "Expecting character, got: ".concat(valueOf) : new String("Expecting character, got: "));
        }
    };
    public static final zzbvd zzcrB = zza(Character.TYPE, Character.class, zzcrA);
    public static final zzbvc<String> zzcrC = new zzbvc<String>() { // from class: com.google.android.gms.internal.zzbwf.5
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, String str) throws IOException {
            zzbwjVar.zzjW(str);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzq */
        public String zzb(zzbwh zzbwhVar) throws IOException {
            zzbwi zzadF = zzbwhVar.zzadF();
            if (zzadF != zzbwi.NULL) {
                return zzadF == zzbwi.BOOLEAN ? Boolean.toString(zzbwhVar.nextBoolean()) : zzbwhVar.nextString();
            }
            zzbwhVar.nextNull();
            return null;
        }
    };
    public static final zzbvc<BigDecimal> zzcrD = new zzbvc<BigDecimal>() { // from class: com.google.android.gms.internal.zzbwf.6
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, BigDecimal bigDecimal) throws IOException {
            zzbwjVar.zza(bigDecimal);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzr */
        public BigDecimal zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            try {
                return new BigDecimal(zzbwhVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzbuz(e);
            }
        }
    };
    public static final zzbvc<BigInteger> zzcrE = new zzbvc<BigInteger>() { // from class: com.google.android.gms.internal.zzbwf.7
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, BigInteger bigInteger) throws IOException {
            zzbwjVar.zza(bigInteger);
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzs */
        public BigInteger zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            try {
                return new BigInteger(zzbwhVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzbuz(e);
            }
        }
    };
    public static final zzbvd zzcrF = zza(String.class, zzcrC);
    public static final zzbvc<StringBuilder> zzcrG = new zzbvc<StringBuilder>() { // from class: com.google.android.gms.internal.zzbwf.8
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, StringBuilder sb) throws IOException {
            zzbwjVar.zzjW(sb == null ? null : sb.toString());
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzt */
        public StringBuilder zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return new StringBuilder(zzbwhVar.nextString());
        }
    };
    public static final zzbvd zzcrH = zza(StringBuilder.class, zzcrG);
    public static final zzbvc<StringBuffer> zzcrI = new zzbvc<StringBuffer>() { // from class: com.google.android.gms.internal.zzbwf.9
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, StringBuffer stringBuffer) throws IOException {
            zzbwjVar.zzjW(stringBuffer == null ? null : stringBuffer.toString());
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzu */
        public StringBuffer zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return new StringBuffer(zzbwhVar.nextString());
        }
    };
    public static final zzbvd zzcrJ = zza(StringBuffer.class, zzcrI);
    public static final zzbvc<URL> zzcrK = new zzbvc<URL>() { // from class: com.google.android.gms.internal.zzbwf.10
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, URL url) throws IOException {
            zzbwjVar.zzjW(url == null ? null : url.toExternalForm());
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzv */
        public URL zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            String nextString = zzbwhVar.nextString();
            if ("null".equals(nextString)) {
                return null;
            }
            return new URL(nextString);
        }
    };
    public static final zzbvd zzcrL = zza(URL.class, zzcrK);
    public static final zzbvc<URI> zzcrM = new zzbvc<URI>() { // from class: com.google.android.gms.internal.zzbwf.11
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, URI uri) throws IOException {
            zzbwjVar.zzjW(uri == null ? null : uri.toASCIIString());
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzw */
        public URI zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            try {
                String nextString = zzbwhVar.nextString();
                if ("null".equals(nextString)) {
                    return null;
                }
                return new URI(nextString);
            } catch (URISyntaxException e) {
                throw new zzbur(e);
            }
        }
    };
    public static final zzbvd zzcrN = zza(URI.class, zzcrM);
    public static final zzbvc<InetAddress> zzcrO = new zzbvc<InetAddress>() { // from class: com.google.android.gms.internal.zzbwf.13
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, InetAddress inetAddress) throws IOException {
            zzbwjVar.zzjW(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzy */
        public InetAddress zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return InetAddress.getByName(zzbwhVar.nextString());
        }
    };
    public static final zzbvd zzcrP = zzb(InetAddress.class, zzcrO);
    public static final zzbvc<UUID> zzcrQ = new zzbvc<UUID>() { // from class: com.google.android.gms.internal.zzbwf.14
        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, UUID uuid) throws IOException {
            zzbwjVar.zzjW(uuid == null ? null : uuid.toString());
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzz */
        public UUID zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return UUID.fromString(zzbwhVar.nextString());
        }
    };
    public static final zzbvd zzcrR = zza(UUID.class, zzcrQ);
    public static final zzbvd zzcrS = new zzbvd() { // from class: com.google.android.gms.internal.zzbwf.15
        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            if (zzbwgVar.zzadQ() != Timestamp.class) {
                return null;
            }
            final zzbvc<T> zzj = zzbukVar.zzj(Date.class);
            return (zzbvc<T>) new zzbvc<Timestamp>() { // from class: com.google.android.gms.internal.zzbwf.15.1
                @Override // com.google.android.gms.internal.zzbvc
                /* renamed from: zzA */
                public Timestamp zzb(zzbwh zzbwhVar) throws IOException {
                    Date date = (Date) zzj.zzb(zzbwhVar);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override // com.google.android.gms.internal.zzbvc
                public void zza(zzbwj zzbwjVar, Timestamp timestamp) throws IOException {
                    zzj.zza(zzbwjVar, timestamp);
                }
            };
        }
    };
    public static final zzbvc<Calendar> zzcrT = new zzbvc<Calendar>() { // from class: com.google.android.gms.internal.zzbwf.16
        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzB */
        public Calendar zzb(zzbwh zzbwhVar) throws IOException {
            int i = 0;
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            zzbwhVar.beginObject();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (zzbwhVar.zzadF() != zzbwi.END_OBJECT) {
                String nextName = zzbwhVar.nextName();
                int nextInt = zzbwhVar.nextInt();
                if ("year".equals(nextName)) {
                    i6 = nextInt;
                } else if ("month".equals(nextName)) {
                    i5 = nextInt;
                } else if ("dayOfMonth".equals(nextName)) {
                    i4 = nextInt;
                } else if ("hourOfDay".equals(nextName)) {
                    i3 = nextInt;
                } else if ("minute".equals(nextName)) {
                    i2 = nextInt;
                } else if ("second".equals(nextName)) {
                    i = nextInt;
                }
            }
            zzbwhVar.endObject();
            return new GregorianCalendar(i6, i5, i4, i3, i2, i);
        }

        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                zzbwjVar.zzadP();
                return;
            }
            zzbwjVar.zzadN();
            zzbwjVar.zzjV("year");
            zzbwjVar.zzaY(calendar.get(1));
            zzbwjVar.zzjV("month");
            zzbwjVar.zzaY(calendar.get(2));
            zzbwjVar.zzjV("dayOfMonth");
            zzbwjVar.zzaY(calendar.get(5));
            zzbwjVar.zzjV("hourOfDay");
            zzbwjVar.zzaY(calendar.get(11));
            zzbwjVar.zzjV("minute");
            zzbwjVar.zzaY(calendar.get(12));
            zzbwjVar.zzjV("second");
            zzbwjVar.zzaY(calendar.get(13));
            zzbwjVar.zzadO();
        }
    };
    public static final zzbvd zzcrU = zzb(Calendar.class, GregorianCalendar.class, zzcrT);
    public static final zzbvc<Locale> zzcrV = new zzbvc<Locale>() { // from class: com.google.android.gms.internal.zzbwf.17
        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzC */
        public Locale zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(zzbwhVar.nextString(), b.ROLL_OVER_FILE_NAME_SEPARATOR);
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
        }

        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, Locale locale) throws IOException {
            zzbwjVar.zzjW(locale == null ? null : locale.toString());
        }
    };
    public static final zzbvd zzcrW = zza(Locale.class, zzcrV);
    public static final zzbvc<zzbuq> zzcrX = new zzbvc<zzbuq>() { // from class: com.google.android.gms.internal.zzbwf.18
        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzD */
        public zzbuq zzb(zzbwh zzbwhVar) throws IOException {
            switch (AnonymousClass26.zzcqV[zzbwhVar.zzadF().ordinal()]) {
                case 1:
                    return new zzbuw((Number) new zzbvn(zzbwhVar.nextString()));
                case 2:
                    return new zzbuw(Boolean.valueOf(zzbwhVar.nextBoolean()));
                case 3:
                    return new zzbuw(zzbwhVar.nextString());
                case 4:
                    zzbwhVar.nextNull();
                    return zzbus.zzcpt;
                case 5:
                    zzbun zzbunVar = new zzbun();
                    zzbwhVar.beginArray();
                    while (zzbwhVar.hasNext()) {
                        zzbunVar.zzc((zzbuq) zzb(zzbwhVar));
                    }
                    zzbwhVar.endArray();
                    return zzbunVar;
                case 6:
                    zzbut zzbutVar = new zzbut();
                    zzbwhVar.beginObject();
                    while (zzbwhVar.hasNext()) {
                        zzbutVar.zza(zzbwhVar.nextName(), (zzbuq) zzb(zzbwhVar));
                    }
                    zzbwhVar.endObject();
                    return zzbutVar;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.google.android.gms.internal.zzbvc
        public void zza(zzbwj zzbwjVar, zzbuq zzbuqVar) throws IOException {
            if (zzbuqVar == null || zzbuqVar.zzadn()) {
                zzbwjVar.zzadP();
            } else if (zzbuqVar.zzadm()) {
                zzbuw zzadq = zzbuqVar.zzadq();
                if (zzadq.zzadt()) {
                    zzbwjVar.zza(zzadq.zzadi());
                } else if (zzadq.zzads()) {
                    zzbwjVar.zzbl(zzadq.getAsBoolean());
                } else {
                    zzbwjVar.zzjW(zzadq.zzadj());
                }
            } else if (zzbuqVar.zzadk()) {
                zzbwjVar.zzadL();
                Iterator<zzbuq> it = zzbuqVar.zzadp().iterator();
                while (it.hasNext()) {
                    zza(zzbwjVar, it.next());
                }
                zzbwjVar.zzadM();
            } else if (!zzbuqVar.zzadl()) {
                String valueOf = String.valueOf(zzbuqVar.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 15).append("Couldn't write ").append(valueOf).toString());
            } else {
                zzbwjVar.zzadN();
                for (Map.Entry<String, zzbuq> entry : zzbuqVar.zzado().entrySet()) {
                    zzbwjVar.zzjV(entry.getKey());
                    zza(zzbwjVar, entry.getValue());
                }
                zzbwjVar.zzadO();
            }
        }
    };
    public static final zzbvd zzcrY = zzb(zzbuq.class, zzcrX);
    public static final zzbvd zzcrZ = new zzbvd() { // from class: com.google.android.gms.internal.zzbwf.19
        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            Class zzadQ = zzbwgVar.zzadQ();
            if (!Enum.class.isAssignableFrom(zzadQ) || zzadQ == Enum.class) {
                return null;
            }
            if (!zzadQ.isEnum()) {
                zzadQ = (Class<? super Object>) zzadQ.getSuperclass();
            }
            return new zza(zzadQ);
        }
    };

    /* loaded from: classes2.dex */
    private static final class zza<T extends Enum<T>> extends zzbvc<T> {
        private final Map<String, T> zzcsj = new HashMap();
        private final Map<T, String> zzcsk = new HashMap();

        public zza(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    zzbvf zzbvfVar = (zzbvf) cls.getField(name).getAnnotation(zzbvf.class);
                    if (zzbvfVar != null) {
                        name = zzbvfVar.value();
                        String[] zzadw = zzbvfVar.zzadw();
                        for (String str : zzadw) {
                            this.zzcsj.put(str, t);
                        }
                    }
                    String str2 = name;
                    this.zzcsj.put(str2, t);
                    this.zzcsk.put(t, str2);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.android.gms.internal.zzbvc
        /* renamed from: zzF */
        public T zzb(zzbwh zzbwhVar) throws IOException {
            if (zzbwhVar.zzadF() == zzbwi.NULL) {
                zzbwhVar.nextNull();
                return null;
            }
            return this.zzcsj.get(zzbwhVar.nextString());
        }

        public void zza(zzbwj zzbwjVar, T t) throws IOException {
            zzbwjVar.zzjW(t == null ? null : this.zzcsk.get(t));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzbvc
        public /* bridge */ /* synthetic */ void zza(zzbwj zzbwjVar, Object obj) throws IOException {
            zza(zzbwjVar, (zzbwj) ((Enum) obj));
        }
    }

    public static <TT> zzbvd zza(final zzbwg<TT> zzbwgVar, final zzbvc<TT> zzbvcVar) {
        return new zzbvd() { // from class: com.google.android.gms.internal.zzbwf.20
            @Override // com.google.android.gms.internal.zzbvd
            public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar2) {
                if (zzbwgVar2.equals(zzbwg.this)) {
                    return zzbvcVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzbvd zza(final Class<TT> cls, final zzbvc<TT> zzbvcVar) {
        return new zzbvd() { // from class: com.google.android.gms.internal.zzbwf.21
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(zzbvcVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append("Factory[type=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzbvd
            public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
                if (zzbwgVar.zzadQ() == cls) {
                    return zzbvcVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzbvd zza(final Class<TT> cls, final Class<TT> cls2, final zzbvc<? super TT> zzbvcVar) {
        return new zzbvd() { // from class: com.google.android.gms.internal.zzbwf.22
            public String toString() {
                String valueOf = String.valueOf(cls2.getName());
                String valueOf2 = String.valueOf(cls.getName());
                String valueOf3 = String.valueOf(zzbvcVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzbvd
            public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
                Class<? super T> zzadQ = zzbwgVar.zzadQ();
                if (zzadQ == cls || zzadQ == cls2) {
                    return zzbvcVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzbvd zzb(final Class<TT> cls, final zzbvc<TT> zzbvcVar) {
        return new zzbvd() { // from class: com.google.android.gms.internal.zzbwf.25
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(zzbvcVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length()).append("Factory[typeHierarchy=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzbvd
            public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
                if (cls.isAssignableFrom(zzbwgVar.zzadQ())) {
                    return zzbvcVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzbvd zzb(final Class<TT> cls, final Class<? extends TT> cls2, final zzbvc<? super TT> zzbvcVar) {
        return new zzbvd() { // from class: com.google.android.gms.internal.zzbwf.24
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(cls2.getName());
                String valueOf3 = String.valueOf(zzbvcVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzbvd
            public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
                Class<? super T> zzadQ = zzbwgVar.zzadQ();
                if (zzadQ == cls || zzadQ == cls2) {
                    return zzbvcVar;
                }
                return null;
            }
        };
    }
}
