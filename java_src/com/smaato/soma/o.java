package com.smaato.soma;

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
import java.lang.ref.WeakReference;
/* compiled from: LoadingStateDelegateImp.java */
/* loaded from: classes3.dex */
public class o implements com.smaato.soma.internal.statemachine.b {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<j> f5223a;

    public o(j jVar) {
        this.f5223a = new WeakReference<>(jVar);
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void a() throws StateBlockedEnteredFailedException {
        j jVar;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.o.1
            });
            if (this.f5223a != null && (jVar = this.f5223a.get()) != null && jVar.getNextPackage() != null) {
                jVar.getNextPackage().c();
                jVar.setNextPackage(null);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new StateBlockedEnteredFailedException(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void b() throws StateIdleEnteredException {
        j jVar;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.o.2
            });
            if (this.f5223a != null && (jVar = this.f5223a.get()) != null) {
                jVar.j();
                if (jVar.getNextPackage() != null) {
                    jVar.getNextPackage().c();
                    jVar.setNextPackage(null);
                }
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new StateIdleEnteredException(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void c() throws BannerLoadingEnteredFailedException {
        j jVar;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.o.3
            });
            if (this.f5223a != null && (jVar = this.f5223a.get()) != null && jVar.getNextPackage() != null && jVar.getNextPackage().f() != null) {
                jVar.getNextPackage().a(jVar.getContext(), jVar, jVar.getLoadingState(), jVar.getBannerAnimatorHandler());
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BannerLoadingEnteredFailedException(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void d() throws TransitionLoadXMLFailedException {
        j jVar;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.o.4
            });
            if (this.f5223a != null && (jVar = this.f5223a.get()) != null && jVar.getAdDownloader() != null) {
                jVar.getAdDownloader().e();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TransitionLoadXMLFailedException(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void e() throws TransitionFinishLoadingFailedException {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.o.5
            });
            if (this.f5223a != null) {
                j jVar = this.f5223a.get();
                if (jVar != null && jVar.getNextPackage() != null && jVar.getNextPackage().k() != null) {
                    if (jVar.getNextPackage() instanceof com.smaato.soma.bannerutilities.d) {
                        jVar.getNextPackage().k().a();
                    }
                    if (!(jVar instanceof BannerView)) {
                        jVar.getBannerState().e();
                    }
                } else if (jVar != null && jVar.getCurrentPackage() != null && jVar.getCurrentPackage().k() != null && (jVar.getCurrentPackage() instanceof com.smaato.soma.bannerutilities.d)) {
                    jVar.getCurrentPackage().k().a();
                }
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TransitionFinishLoadingFailedException(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void f() throws StateIdleExitFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void g() throws StateXMLLoadingEnteredFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void h() throws StateXMLLoadingExitFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void i() throws StateBlockedExitFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void j() throws BannerLoadingExitFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void k() throws TransitionLoadBannerFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void l() throws TransitionBlockLoadingFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void m() throws TransitionUnblockLoadingFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.b
    public void n() throws TransitionErrorLoadingFailedException {
    }
}
