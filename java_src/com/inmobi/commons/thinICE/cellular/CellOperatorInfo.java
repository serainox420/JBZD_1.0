package com.inmobi.commons.thinICE.cellular;
/* loaded from: classes2.dex */
public final class CellOperatorInfo {
    public static final int MCC_NOT_AVAILABLE = -1;
    public static final int MNC_NOT_AVAILABLE = -1;
    public int currentMcc;
    public int currentMnc;
    public int simMcc;
    public int simMnc;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[");
        sb.append("currentMcc=").append(this.currentMcc).append(", ");
        sb.append("currentMnc=").append(this.currentMnc).append(", ");
        sb.append("simMcc=").append(this.simMcc).append(", ");
        sb.append("simMnc=").append(this.simMnc);
        sb.append("]");
        return sb.toString();
    }
}
