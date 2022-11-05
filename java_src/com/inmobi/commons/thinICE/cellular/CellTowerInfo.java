package com.inmobi.commons.thinICE.cellular;
/* loaded from: classes2.dex */
public final class CellTowerInfo {
    public String id;
    public int signalStrength;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[");
        sb.append("id=").append(this.id).append(", ");
        sb.append("ss=").append(this.signalStrength).append(", ");
        sb.append("]");
        return sb.toString();
    }
}
