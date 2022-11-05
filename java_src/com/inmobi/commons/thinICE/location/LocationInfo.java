package com.inmobi.commons.thinICE.location;
/* loaded from: classes2.dex */
public final class LocationInfo {
    public float accuracy;
    public double latitude;
    public double longitude;
    public String provider;
    public long time;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[");
        sb.append("time=").append(this.time).append(", ");
        sb.append("provider=").append(this.provider).append(", ");
        sb.append("latitude=").append(this.latitude).append(", ");
        sb.append("longitude=").append(this.longitude).append(", ");
        sb.append("accuracy=").append(this.accuracy);
        sb.append("]");
        return sb.toString();
    }
}
