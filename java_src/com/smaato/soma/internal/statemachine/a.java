package com.smaato.soma.internal.statemachine;

import com.smaato.soma.exception.BannerDisplayedEnteredFailedException;
import com.smaato.soma.exception.UnableToEnterBannerStateExpanded;
import com.smaato.soma.exception.UnableToExitBannerStateDisplayed;
import com.smaato.soma.exception.UnableToExitBannerStateExpanded;
import com.smaato.soma.exception.UnableToExitEmptyState;
import com.smaato.soma.exception.UnableToSetBannerStateToEmpty;
import com.smaato.soma.exception.UnableToTriggerTransitionCloseNoOrmmaBanner;
import com.smaato.soma.exception.UnableToTriggerTransitionCloseOrmmaBanner;
import com.smaato.soma.exception.UnableToTriggerTransitionDisplayBanner;
import com.smaato.soma.exception.UnableToTriggerTransitionExpandBanner;
/* compiled from: BannerStateDelegate.java */
/* loaded from: classes3.dex */
public interface a {
    void a() throws UnableToTriggerTransitionDisplayBanner;

    void b() throws UnableToEnterBannerStateExpanded;

    void c() throws UnableToExitBannerStateExpanded;

    void d() throws UnableToTriggerTransitionCloseNoOrmmaBanner;

    void e() throws UnableToTriggerTransitionCloseOrmmaBanner;

    void f() throws UnableToSetBannerStateToEmpty;

    void g() throws UnableToExitEmptyState;

    void h() throws BannerDisplayedEnteredFailedException;

    void i() throws UnableToExitBannerStateDisplayed;

    void j() throws UnableToTriggerTransitionExpandBanner;
}
