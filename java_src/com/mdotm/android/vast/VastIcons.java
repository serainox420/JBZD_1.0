package com.mdotm.android.vast;

import com.flurry.android.AdCreative;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes3.dex */
public class VastIcons implements Serializable {
    private static final long serialVersionUID = 1089981580371357284L;
    protected String iconClickThrough;
    protected byte[] iconImagebyteArray;
    protected String iconResource;
    protected String iconDuration = "00:00:00";
    protected String iconOffset = "00:00:00";
    protected String iconXpos = AdCreative.kAlignmentRight;
    protected String iconYpos = AdCreative.kAlignmentBottom;
    protected int iconWidth = 50;
    protected int iconHeight = 50;
    protected ArrayList<String> iconCreativeView = new ArrayList<>();
    protected ArrayList<String> iconClickTracking = new ArrayList<>();
}
