package com.smaato.soma.internal.statemachine;

import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.BlockingLoadingStateFailedException;
import com.smaato.soma.exception.CallingLoadingStateEnteredFailedException;
import com.smaato.soma.exception.CallingLoadingStateExitFailedException;
import com.smaato.soma.exception.ErrorBannerLoadingFailedException;
import com.smaato.soma.exception.LoadingBannerStateFailedException;
import com.smaato.soma.exception.LoadingStateLoggingFailedException;
import com.smaato.soma.exception.LoadingStateTransitionTriggeredFailedException;
import com.smaato.soma.exception.ModifyingLoadingStateFailedException;
import com.smaato.soma.exception.StateFinishedLoadingFailedException;
import com.smaato.soma.exception.TransitionLoadingXmlFailedException;
import com.smaato.soma.exception.UnblockingLoadingStateFailedException;
import com.smaato.soma.internal.c.c;
/* loaded from: classes3.dex */
public class LoadingState {

    /* renamed from: a  reason: collision with root package name */
    private b f5090a = null;
    private State b = State.STATE_IDLE;
    private boolean c = false;

    /* loaded from: classes3.dex */
    public enum State {
        STATE_IDLE,
        STATE_XMLLOADING,
        STATE_BLOCKED,
        STATE_BANNERLOADING
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum a {
        TRANSITION_LOADXML,
        TRANSITION_LOADBANNER,
        TRANSITION_BLOCKLOADING,
        TRANSITION_UNBLOCKLOADING,
        TRANSITION_FINISHLOADING,
        TRANSITION_ERRORLOADING
    }

    public void a(State state) {
        this.b = state;
    }

    public void a(boolean z) {
        this.c = z;
    }

    private void a(String str) throws LoadingStateLoggingFailedException {
        try {
            if (this.c) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("LoadingState", str, 1, DebugCategory.DEBUG));
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new LoadingStateLoggingFailedException(e2);
        }
    }

    private void b(State state) throws CallingLoadingStateExitFailedException {
        try {
            if (state == State.STATE_IDLE) {
                a("Exit state Idle");
                this.f5090a.f();
            } else if (state == State.STATE_XMLLOADING) {
                a("Exit state XmlLoading");
                this.f5090a.h();
            } else if (state == State.STATE_BLOCKED) {
                a("Exit state Blocked");
                this.f5090a.i();
            } else if (state == State.STATE_BANNERLOADING) {
                a("Exit state BannerLoading");
                this.f5090a.j();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CallingLoadingStateExitFailedException(e2);
        }
    }

    private void c(State state) throws CallingLoadingStateEnteredFailedException {
        try {
            if (state == State.STATE_IDLE) {
                this.f5090a.b();
                a("Enter state Idle");
            } else if (state == State.STATE_XMLLOADING) {
                a("Enter state XmlLoading");
                this.f5090a.g();
            } else if (state == State.STATE_BLOCKED) {
                a("Enter state Blocked");
                this.f5090a.a();
            } else if (state == State.STATE_BANNERLOADING) {
                a("Enter state BannerLoading");
                this.f5090a.c();
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CallingLoadingStateEnteredFailedException(e2);
        }
    }

    private void a(a aVar) throws LoadingStateTransitionTriggeredFailedException {
        try {
            switch (aVar) {
                case TRANSITION_LOADXML:
                    a("Trigger transition LoadXml");
                    this.f5090a.d();
                    return;
                case TRANSITION_LOADBANNER:
                    a("Trigger transition LoadBanner");
                    this.f5090a.k();
                    return;
                case TRANSITION_BLOCKLOADING:
                    a("Trigger transition BlockLoading");
                    this.f5090a.l();
                    return;
                case TRANSITION_UNBLOCKLOADING:
                    a("Trigger transition UnblockLoading");
                    this.f5090a.m();
                    return;
                case TRANSITION_FINISHLOADING:
                    a("Trigger transition FinishLoading");
                    this.f5090a.e();
                    return;
                case TRANSITION_ERRORLOADING:
                    a("Trigger transition ErrorLoading");
                    this.f5090a.n();
                    return;
                default:
                    a("Unable to Trigger transition");
                    c.a().b();
                    return;
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new LoadingStateTransitionTriggeredFailedException(e2);
        }
    }

    private void a(a aVar, State state) throws ModifyingLoadingStateFailedException {
        try {
            b(this.b);
            a(aVar);
            this.b = state;
            c(state);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new ModifyingLoadingStateFailedException(e2);
        }
    }

    public void a(b bVar) {
        this.f5090a = bVar;
    }

    public State a() {
        return this.b;
    }

    public boolean b() throws TransitionLoadingXmlFailedException {
        try {
            if (this.b == State.STATE_IDLE) {
                a(a.TRANSITION_LOADXML, State.STATE_XMLLOADING);
                return true;
            }
            a("Unable to trigger LoadXml");
            c.a().b();
            return false;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TransitionLoadingXmlFailedException(e2);
        }
    }

    public boolean c() throws LoadingBannerStateFailedException {
        try {
            if (this.b == State.STATE_XMLLOADING) {
                a(a.TRANSITION_LOADBANNER, State.STATE_BANNERLOADING);
                return true;
            }
            a("Unable to trigger LoadBanner");
            return false;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new LoadingBannerStateFailedException(e2);
        }
    }

    public boolean d() throws BlockingLoadingStateFailedException {
        try {
            if (this.b == State.STATE_XMLLOADING || this.b == State.STATE_IDLE || this.b == State.STATE_BANNERLOADING) {
                a(a.TRANSITION_BLOCKLOADING, State.STATE_BLOCKED);
                return true;
            }
            a("Unable to trigger BlockLoading");
            c.a().b();
            return false;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BlockingLoadingStateFailedException(e2);
        }
    }

    public boolean e() throws UnblockingLoadingStateFailedException {
        try {
            if (this.b == State.STATE_BLOCKED) {
                a(a.TRANSITION_UNBLOCKLOADING, State.STATE_IDLE);
                return true;
            }
            a("Unable to trigger UnblockLoading");
            c.a().b();
            return false;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnblockingLoadingStateFailedException(e2);
        }
    }

    public boolean f() throws StateFinishedLoadingFailedException {
        try {
            if (this.b == State.STATE_BANNERLOADING) {
                a(a.TRANSITION_FINISHLOADING, State.STATE_IDLE);
                return true;
            }
            a("Unable to trigger FinishLoading");
            c.a().b();
            return false;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new StateFinishedLoadingFailedException(e2);
        }
    }

    public boolean g() throws ErrorBannerLoadingFailedException {
        try {
            if (this.b == State.STATE_XMLLOADING) {
                a(a.TRANSITION_ERRORLOADING, State.STATE_IDLE);
                return true;
            }
            a("Unable to trigger ErrorLoading");
            c.a().b();
            return false;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new ErrorBannerLoadingFailedException(e2);
        }
    }
}
