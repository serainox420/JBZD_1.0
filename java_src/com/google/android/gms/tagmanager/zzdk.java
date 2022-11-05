package com.google.android.gms.tagmanager;
/* loaded from: classes2.dex */
class zzdk extends Number implements Comparable<zzdk> {
    private long zzbIA;
    private boolean zzbIB = false;
    private double zzbIz;

    private zzdk(double d) {
        this.zzbIz = d;
    }

    private zzdk(long j) {
        this.zzbIA = j;
    }

    public static zzdk zza(Double d) {
        return new zzdk(d.doubleValue());
    }

    public static zzdk zzaA(long j) {
        return new zzdk(j);
    }

    public static zzdk zzhv(String str) throws NumberFormatException {
        try {
            return new zzdk(Long.parseLong(str));
        } catch (NumberFormatException e) {
            try {
                return new zzdk(Double.parseDouble(str));
            } catch (NumberFormatException e2) {
                throw new NumberFormatException(String.valueOf(str).concat(" is not a valid TypedNumber"));
            }
        }
    }

    @Override // java.lang.Number
    public byte byteValue() {
        return (byte) longValue();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return zzRH() ? this.zzbIA : this.zzbIz;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zzdk) && compareTo((zzdk) obj) == 0;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) doubleValue();
    }

    public int hashCode() {
        return new Long(longValue()).hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        return zzRJ();
    }

    @Override // java.lang.Number
    public long longValue() {
        return zzRI();
    }

    @Override // java.lang.Number
    public short shortValue() {
        return zzRK();
    }

    public String toString() {
        return zzRH() ? Long.toString(this.zzbIA) : Double.toString(this.zzbIz);
    }

    public boolean zzRG() {
        return !zzRH();
    }

    public boolean zzRH() {
        return this.zzbIB;
    }

    public long zzRI() {
        return zzRH() ? this.zzbIA : (long) this.zzbIz;
    }

    public int zzRJ() {
        return (int) longValue();
    }

    public short zzRK() {
        return (short) longValue();
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public int compareTo(zzdk zzdkVar) {
        return (!zzRH() || !zzdkVar.zzRH()) ? Double.compare(doubleValue(), zzdkVar.doubleValue()) : new Long(this.zzbIA).compareTo(Long.valueOf(zzdkVar.zzbIA));
    }
}
