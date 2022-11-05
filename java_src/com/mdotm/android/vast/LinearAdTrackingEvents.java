package com.mdotm.android.vast;

import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class LinearAdTrackingEvents implements Serializable {
    private static final long serialVersionUID = 1;
    protected ArrayList<String> creativeView = new ArrayList<>();
    protected ArrayList<String> start = new ArrayList<>();
    protected ArrayList<String> firstQuartile = new ArrayList<>();
    protected ArrayList<String> midPoint = new ArrayList<>();
    protected ArrayList<String> thirdQuartile = new ArrayList<>();
    protected ArrayList<String> complete = new ArrayList<>();
    protected ArrayList<String> mute = new ArrayList<>();
    protected ArrayList<String> unMute = new ArrayList<>();
    protected ArrayList<String> pause = new ArrayList<>();
    protected ArrayList<String> resume = new ArrayList<>();
    protected ArrayList<String> rewind = new ArrayList<>();
    protected ArrayList<String> skip = new ArrayList<>();
}
