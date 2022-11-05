package com.smaato.soma.internal.statemachine;

import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.BannerStateLoggingFailedException;
import com.smaato.soma.exception.CallingEnterBannerStateFailedException;
import com.smaato.soma.exception.CallingExitBannerStateExitFailedException;
import com.smaato.soma.exception.ChangingBannerStateFailedException;
import com.smaato.soma.exception.TransitionCloseNoOrmmaFailedException;
import com.smaato.soma.exception.TransitionClosingOrmmaFailedException;
import com.smaato.soma.exception.TransitionDisplayingBannerFailedException;
import com.smaato.soma.exception.TransitionExpandingBannerFailedException;
import com.smaato.soma.exception.TriggerBannerStateTransitionException;
import com.smaato.soma.internal.c.c;
/* loaded from: classes3.dex */
public class BannerState {

    /* renamed from: a  reason: collision with root package name */
    private com.smaato.soma.internal.statemachine.a f5086a = null;
    private State b = State.STATE_EMPTY;
    private boolean c = false;

    /* loaded from: classes3.dex */
    public enum State {
        STATE_EMPTY,
        STATE_BANNERDISPLAYED,
        STATE_BANNEREXPANDED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum a {
        TRANSITION_EXPANDBANNER,
        TRANSITION_CLOSENOORMMA,
        TRANSITION_CLOSEORMMA,
        TRANSITION_DISPLAYBANNER
    }

    public void a(boolean z) {
        this.c = z;
    }

    private void a(String str) throws BannerStateLoggingFailedException {
        try {
            if (this.c) {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("BannerState", str, 1, DebugCategory.DEBUG));
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BannerStateLoggingFailedException(e2);
        }
    }

    private void a(State state) throws CallingExitBannerStateExitFailedException {
        try {
            switch (state) {
                case STATE_BANNERDISPLAYED:
                    a("Exit state BannerDisplayed");
                    this.f5086a.i();
                    return;
                case STATE_BANNEREXPANDED:
                    a("Exit state BannerExpanded");
                    this.f5086a.c();
                    return;
                case STATE_EMPTY:
                    a("Exit state Empty");
                    this.f5086a.g();
                    return;
                default:
                    a("Unknown exit state");
                    c.a().b();
                    return;
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CallingExitBannerStateExitFailedException(e2);
        }
    }

    private void b(State state) throws CallingEnterBannerStateFailedException {
        try {
            switch (state) {
                case STATE_BANNERDISPLAYED:
                    a("Enter state BannerDisplayed");
                    this.f5086a.h();
                    com.smaato.soma.measurements.a.a().d();
                    return;
                case STATE_BANNEREXPANDED:
                    a("Enter state BannerExpanded");
                    this.f5086a.b();
                    return;
                case STATE_EMPTY:
                    a("Enter state Empty");
                    this.f5086a.f();
                    return;
                default:
                    a("Unknown enter state");
                    c.a().b();
                    return;
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CallingEnterBannerStateFailedException(e2);
        }
    }

    private void a(a aVar) throws TriggerBannerStateTransitionException {
        try {
            switch (aVar) {
                case TRANSITION_EXPANDBANNER:
                    a("Trigger transition ExpandBanner");
                    this.f5086a.j();
                    return;
                case TRANSITION_CLOSENOORMMA:
                    a("Trigger transition CloseNoOrmma");
                    this.f5086a.d();
                    return;
                case TRANSITION_CLOSEORMMA:
                    a("Trigger transition CloseOrmma");
                    this.f5086a.e();
                    return;
                case TRANSITION_DISPLAYBANNER:
                    a("Trigger transition DisplayBanner");
                    this.f5086a.a();
                    return;
                default:
                    a("Unable to call Transition");
                    c.a().b();
                    return;
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TriggerBannerStateTransitionException(e2);
        }
    }

    private void a(a aVar, State state) throws ChangingBannerStateFailedException {
        try {
            a(this.b);
            a(aVar);
            this.b = state;
            b(state);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new ChangingBannerStateFailedException(e2);
        }
    }

    public void a(com.smaato.soma.internal.statemachine.a aVar) {
        this.f5086a = aVar;
    }

    public State a() {
        return this.b;
    }

    public boolean b() throws TransitionExpandingBannerFailedException {
        try {
            if (this.b != State.STATE_BANNERDISPLAYED) {
                return false;
            }
            a(a.TRANSITION_EXPANDBANNER, State.STATE_BANNEREXPANDED);
            return true;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TransitionExpandingBannerFailedException(e2);
        }
    }

    public boolean c() throws TransitionCloseNoOrmmaFailedException {
        try {
            if (this.b != State.STATE_BANNEREXPANDED) {
                return false;
            }
            a(a.TRANSITION_CLOSENOORMMA, State.STATE_EMPTY);
            return true;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TransitionCloseNoOrmmaFailedException(e2);
        }
    }

    public boolean d() throws TransitionClosingOrmmaFailedException {
        try {
            if (this.b != State.STATE_BANNEREXPANDED) {
                return false;
            }
            a(a.TRANSITION_CLOSEORMMA, State.STATE_BANNERDISPLAYED);
            return true;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TransitionClosingOrmmaFailedException(e2);
        }
    }

    public boolean e() throws TransitionDisplayingBannerFailedException {
        try {
            if (this.b != State.STATE_EMPTY && this.b != State.STATE_BANNERDISPLAYED) {
                return false;
            }
            a(a.TRANSITION_DISPLAYBANNER, State.STATE_BANNERDISPLAYED);
            return true;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new TransitionDisplayingBannerFailedException(e2);
        }
    }
}
