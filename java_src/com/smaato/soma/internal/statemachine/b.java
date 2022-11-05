package com.smaato.soma.internal.statemachine;

import com.smaato.soma.exception.BannerLoadingEnteredFailedException;
import com.smaato.soma.exception.BannerLoadingExitFailedException;
import com.smaato.soma.exception.StateBlockedEnteredFailedException;
import com.smaato.soma.exception.StateBlockedExitFailedException;
import com.smaato.soma.exception.StateIdleEnteredException;
import com.smaato.soma.exception.StateIdleExitFailedException;
import com.smaato.soma.exception.StateXMLLoadingEnteredFailedException;
import com.smaato.soma.exception.StateXMLLoadingExitFailedException;
import com.smaato.soma.exception.TransitionBlockLoadingFailedException;
import com.smaato.soma.exception.TransitionErrorLoadingFailedException;
import com.smaato.soma.exception.TransitionFinishLoadingFailedException;
import com.smaato.soma.exception.TransitionLoadBannerFailedException;
import com.smaato.soma.exception.TransitionLoadXMLFailedException;
import com.smaato.soma.exception.TransitionUnblockLoadingFailedException;
/* compiled from: LoadingStateDelegate.java */
/* loaded from: classes3.dex */
public interface b {
    void a() throws StateBlockedEnteredFailedException;

    void b() throws StateIdleEnteredException;

    void c() throws BannerLoadingEnteredFailedException;

    void d() throws TransitionLoadXMLFailedException;

    void e() throws TransitionFinishLoadingFailedException;

    void f() throws StateIdleExitFailedException;

    void g() throws StateXMLLoadingEnteredFailedException;

    void h() throws StateXMLLoadingExitFailedException;

    void i() throws StateBlockedExitFailedException;

    void j() throws BannerLoadingExitFailedException;

    void k() throws TransitionLoadBannerFailedException;

    void l() throws TransitionBlockLoadingFailedException;

    void m() throws TransitionUnblockLoadingFailedException;

    void n() throws TransitionErrorLoadingFailedException;
}
