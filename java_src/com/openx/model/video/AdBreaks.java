package com.openx.model.video;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public class AdBreaks extends VideoInfo {
    ArrayList<Integer> adBreaks;

    public AdBreaks() {
    }

    public AdBreaks(ArrayList<Integer> arrayList) {
        this.adBreaks = arrayList;
    }

    public void setAdBreaks(ArrayList<Integer> arrayList) {
        this.adBreaks = arrayList;
    }

    public ArrayList<Integer> getAdBreaks() {
        return this.adBreaks;
    }
}
