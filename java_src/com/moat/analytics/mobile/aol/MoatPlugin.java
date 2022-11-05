package com.moat.analytics.mobile.aol;

import com.moat.analytics.mobile.aol.base.exception.MoatException;
/* loaded from: classes3.dex */
interface MoatPlugin<T> {
    T create(ActivityState activityState, OnOffSwitch onOffSwitch) throws MoatException;

    T createNoOp();
}
