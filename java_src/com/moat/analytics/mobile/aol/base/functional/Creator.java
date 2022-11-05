package com.moat.analytics.mobile.aol.base.functional;

import com.moat.analytics.mobile.aol.base.exception.MoatException;
/* loaded from: classes3.dex */
public interface Creator<T> {
    T create() throws MoatException;
}
