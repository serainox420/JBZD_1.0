package com.smaato.soma;

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
import java.lang.ref.WeakReference;
/* compiled from: BannerStateDelegateImp.java */
/* loaded from: classes3.dex */
public class f implements com.smaato.soma.internal.statemachine.a {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<j> f4945a;

    public f(j jVar) {
        this.f4945a = new WeakReference<>(jVar);
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void a() throws UnableToTriggerTransitionDisplayBanner {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.f.1
            });
            j jVar = this.f4945a.get();
            if (jVar != null) {
                jVar.f();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToTriggerTransitionDisplayBanner(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void b() throws UnableToEnterBannerStateExpanded {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.f.2
            });
            j jVar = this.f4945a.get();
            if (jVar != null) {
                jVar.getLoadingState().d();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToEnterBannerStateExpanded(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void c() throws UnableToExitBannerStateExpanded {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.f.3
            });
            j jVar = this.f4945a.get();
            if (jVar != null) {
                jVar.getLoadingState().e();
                com.smaato.soma.bannerutilities.b.a().b(jVar.getCurrentPackage(), jVar);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToExitBannerStateExpanded(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void d() throws UnableToTriggerTransitionCloseNoOrmmaBanner {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.f.4
            });
            j jVar = this.f4945a.get();
            if (jVar != null && jVar.getBannerStateListener() != null) {
                g bannerStateListener = jVar.getBannerStateListener();
                if (bannerStateListener != null) {
                    bannerStateListener.onWillCloseLandingPage(jVar);
                }
                jVar.getCurrentPackage().d();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToTriggerTransitionCloseNoOrmmaBanner(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void e() throws UnableToTriggerTransitionCloseOrmmaBanner {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.f.5
            });
            j jVar = this.f4945a.get();
            g bannerStateListener = jVar.getBannerStateListener();
            if (bannerStateListener != null) {
                bannerStateListener.onWillCloseLandingPage(jVar);
            }
            if (jVar != null && jVar.getCurrentPackage() != null) {
                jVar.getCurrentPackage().d();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnableToTriggerTransitionCloseOrmmaBanner(e2);
        }
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void f() throws UnableToSetBannerStateToEmpty {
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void g() throws UnableToExitEmptyState {
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void h() throws BannerDisplayedEnteredFailedException {
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void i() throws UnableToExitBannerStateDisplayed {
    }

    @Override // com.smaato.soma.internal.statemachine.a
    public void j() throws UnableToTriggerTransitionExpandBanner {
    }
}
