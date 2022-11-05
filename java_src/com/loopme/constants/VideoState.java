package com.loopme.constants;
/* loaded from: classes2.dex */
public class VideoState {
    public static final int BROKEN = 5;
    public static final int BUFFERING = 6;
    public static final int COMPLETE = 4;
    public static final int IDLE = 0;
    public static final int PAUSED = 3;
    public static final int PLAYING = 2;
    public static final int READY = 1;

    public static String toString(int i) {
        switch (i) {
            case 0:
                return "IDLE";
            case 1:
                return "READY";
            case 2:
                return "PLAYING";
            case 3:
                return "PAUSED";
            case 4:
                return "COMPLETE";
            case 5:
                return "BROKEN";
            case 6:
                return "BUFFERING";
            default:
                return "UNKNOWN";
        }
    }

    private VideoState() {
    }
}
