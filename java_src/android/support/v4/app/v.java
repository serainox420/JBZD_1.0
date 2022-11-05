package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.u;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentManager.java */
/* loaded from: classes.dex */
public final class v extends u implements android.support.v4.view.n {
    static final Interpolator D;
    static final Interpolator E;
    static final Interpolator F;
    static final Interpolator G;

    /* renamed from: a  reason: collision with root package name */
    static boolean f262a = false;
    static final boolean b;
    static Field q;
    ArrayList<e> B;
    private CopyOnWriteArrayList<android.support.v4.f.i<u.a, Boolean>> H;
    ArrayList<c> c;
    boolean d;
    ArrayList<Fragment> e;
    ArrayList<Fragment> f;
    ArrayList<Integer> g;
    ArrayList<j> h;
    ArrayList<Fragment> i;
    ArrayList<j> j;
    ArrayList<Integer> k;
    ArrayList<u.b> l;
    t n;
    r o;
    Fragment p;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    ArrayList<j> w;
    ArrayList<Boolean> x;
    ArrayList<Fragment> y;
    int m = 0;
    Bundle z = null;
    SparseArray<Parcelable> A = null;
    Runnable C = new Runnable() { // from class: android.support.v4.app.v.1
        @Override // java.lang.Runnable
        public void run() {
            v.this.h();
        }
    };

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public static final int[] f267a = {16842755, 16842960, 16842961};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public interface c {
        boolean a(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2);
    }

    static {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 11) {
            z = true;
        }
        b = z;
        q = null;
        D = new DecelerateInterpolator(2.5f);
        E = new DecelerateInterpolator(1.5f);
        F = new AccelerateInterpolator(2.5f);
        G = new AccelerateInterpolator(1.5f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public static class a implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        private Animation.AnimationListener f265a;
        private boolean b;
        View c;

        public a(View view, Animation animation) {
            if (view != null && animation != null) {
                this.c = view;
            }
        }

        public a(View view, Animation animation, Animation.AnimationListener animationListener) {
            if (view != null && animation != null) {
                this.f265a = animationListener;
                this.c = view;
                this.b = true;
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            if (this.f265a != null) {
                this.f265a.onAnimationStart(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (this.c != null && this.b) {
                if (android.support.v4.view.ai.H(this.c) || android.support.v4.os.c.a()) {
                    this.c.post(new Runnable() { // from class: android.support.v4.app.v.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            android.support.v4.view.ai.a(a.this.c, 0, (Paint) null);
                        }
                    });
                } else {
                    android.support.v4.view.ai.a(this.c, 0, (Paint) null);
                }
            }
            if (this.f265a != null) {
                this.f265a.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            if (this.f265a != null) {
                this.f265a.onAnimationRepeat(animation);
            }
        }
    }

    static boolean a(Animation animation) {
        if (animation instanceof AlphaAnimation) {
            return true;
        }
        if (!(animation instanceof AnimationSet)) {
            return false;
        }
        List<Animation> animations = ((AnimationSet) animation).getAnimations();
        for (int i = 0; i < animations.size(); i++) {
            if (animations.get(i) instanceof AlphaAnimation) {
                return true;
            }
        }
        return false;
    }

    static boolean a(View view, Animation animation) {
        return Build.VERSION.SDK_INT >= 19 && android.support.v4.view.ai.f(view) == 0 && android.support.v4.view.ai.z(view) && a(animation);
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new android.support.v4.f.e("FragmentManager"));
        if (this.n != null) {
            try {
                this.n.a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        } else {
            try {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e3) {
                Log.e("FragmentManager", "Failed dumping state", e3);
            }
        }
        throw runtimeException;
    }

    @Override // android.support.v4.app.u
    public y a() {
        return new j(this);
    }

    @Override // android.support.v4.app.u
    public boolean b() {
        boolean h = h();
        B();
        return h;
    }

    @Override // android.support.v4.app.u
    public void c() {
        a((c) new d(null, -1, 0), false);
    }

    @Override // android.support.v4.app.u
    public boolean d() {
        y();
        return a((String) null, -1, 0);
    }

    @Override // android.support.v4.app.u
    public void a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        a((c) new d(null, i, i2), false);
    }

    private boolean a(String str, int i, int i2) {
        h();
        c(true);
        boolean a2 = a(this.w, this.x, str, i, i2);
        if (a2) {
            this.d = true;
            try {
                b(this.w, this.x);
            } finally {
                A();
            }
        }
        i();
        return a2;
    }

    @Override // android.support.v4.app.u
    public int e() {
        if (this.h != null) {
            return this.h.size();
        }
        return 0;
    }

    @Override // android.support.v4.app.u
    public void a(u.b bVar) {
        if (this.l == null) {
            this.l = new ArrayList<>();
        }
        this.l.add(bVar);
    }

    @Override // android.support.v4.app.u
    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.mIndex);
    }

    @Override // android.support.v4.app.u
    public Fragment a(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.e.size()) {
            a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = this.e.get(i);
        if (fragment == null) {
            a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i));
            return fragment;
        }
        return fragment;
    }

    @Override // android.support.v4.app.u
    public List<Fragment> f() {
        return this.e;
    }

    @Override // android.support.v4.app.u
    public Fragment.SavedState a(Fragment fragment) {
        Bundle n;
        if (fragment.mIndex < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0 || (n = n(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(n);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.p != null) {
            android.support.v4.f.d.a(this.p, sb);
        } else {
            android.support.v4.f.d.a(this.n, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.u
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        int size6;
        String str2 = str + "    ";
        if (this.e != null && (size6 = this.e.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size6; i++) {
                Fragment fragment = this.e.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        if (this.f != null && (size5 = this.f.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f.get(i2).toString());
            }
        }
        if (this.i != null && (size4 = this.i.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(this.i.get(i3).toString());
            }
        }
        if (this.h != null && (size3 = this.h.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                j jVar = this.h.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(jVar.toString());
                jVar.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            if (this.j != null && (size2 = this.j.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println((j) this.j.get(i5));
                }
            }
            if (this.k != null && this.k.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.k.toArray()));
            }
        }
        if (this.c != null && (size = this.c.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println((c) this.c.get(i6));
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.o);
        if (this.p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.s);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.t);
        if (this.r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.u);
        }
        if (this.g != null && this.g.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.g.toArray()));
        }
    }

    static Animation a(Context context, float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(D);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(E);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    static Animation a(Context context, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(E);
        alphaAnimation.setDuration(220L);
        return alphaAnimation;
    }

    Animation a(Fragment fragment, int i, boolean z, int i2) {
        int b2;
        Animation loadAnimation;
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z, fragment.getNextAnim());
        if (onCreateAnimation == null) {
            if (fragment.getNextAnim() == 0 || (loadAnimation = AnimationUtils.loadAnimation(this.n.i(), fragment.getNextAnim())) == null) {
                if (i != 0 && (b2 = b(i, z)) >= 0) {
                    switch (b2) {
                        case 1:
                            return a(this.n.i(), 1.125f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                        case 2:
                            return a(this.n.i(), 1.0f, 0.975f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                        case 3:
                            return a(this.n.i(), 0.975f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                        case 4:
                            return a(this.n.i(), 1.0f, 1.075f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                        case 5:
                            return a(this.n.i(), (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
                        case 6:
                            return a(this.n.i(), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                        default:
                            if (i2 == 0 && this.n.e()) {
                                i2 = this.n.f();
                            }
                            return i2 == 0 ? null : null;
                    }
                }
                return null;
            }
            return loadAnimation;
        }
        return onCreateAnimation;
    }

    public void b(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.d) {
                this.v = true;
                return;
            }
            fragment.mDeferStart = false;
            a(fragment, this.m, 0, 0, false);
        }
    }

    private void b(View view, Animation animation) {
        Animation.AnimationListener animationListener;
        if (view != null && animation != null && a(view, animation)) {
            try {
                if (q == null) {
                    q = Animation.class.getDeclaredField("mListener");
                    q.setAccessible(true);
                }
                animationListener = (Animation.AnimationListener) q.get(animation);
            } catch (IllegalAccessException e2) {
                Log.e("FragmentManager", "Cannot access Animation's mListener field", e2);
                animationListener = null;
            } catch (NoSuchFieldException e3) {
                Log.e("FragmentManager", "No field with the name mListener is found in Animation class", e3);
                animationListener = null;
            }
            android.support.v4.view.ai.a(view, 2, (Paint) null);
            animation.setAnimationListener(new a(view, animation, animationListener));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        return this.m >= i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(final Fragment fragment, int i, int i2, int i3, boolean z) {
        ViewGroup viewGroup;
        String str;
        boolean z2 = true;
        if ((!fragment.mAdded || fragment.mDetached) && i > 1) {
            i = 1;
        }
        if (fragment.mRemoving && i > fragment.mState) {
            i = fragment.mState;
        }
        if (fragment.mDeferStart && fragment.mState < 4 && i > 3) {
            i = 3;
        }
        if (fragment.mState < i) {
            if (!fragment.mFromLayout || fragment.mInLayout) {
                if (fragment.getAnimatingAway() != null) {
                    fragment.setAnimatingAway(null);
                    a(fragment, fragment.getStateAfterAnimating(), 0, 0, true);
                }
                switch (fragment.mState) {
                    case 0:
                        if (f262a) {
                            Log.v("FragmentManager", "moveto CREATED: " + fragment);
                        }
                        if (fragment.mSavedFragmentState != null) {
                            fragment.mSavedFragmentState.setClassLoader(this.n.i().getClassLoader());
                            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
                            fragment.mTarget = a(fragment.mSavedFragmentState, "android:target_state");
                            if (fragment.mTarget != null) {
                                fragment.mTargetRequestCode = fragment.mSavedFragmentState.getInt("android:target_req_state", 0);
                            }
                            fragment.mUserVisibleHint = fragment.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
                            if (!fragment.mUserVisibleHint) {
                                fragment.mDeferStart = true;
                                if (i > 3) {
                                    i = 3;
                                }
                            }
                        }
                        fragment.mHost = this.n;
                        fragment.mParentFragment = this.p;
                        fragment.mFragmentManager = this.p != null ? this.p.mChildFragmentManager : this.n.k();
                        a(fragment, this.n.i(), false);
                        fragment.mCalled = false;
                        fragment.onAttach(this.n.i());
                        if (!fragment.mCalled) {
                            throw new az("Fragment " + fragment + " did not call through to super.onAttach()");
                        }
                        if (fragment.mParentFragment == null) {
                            this.n.b(fragment);
                        } else {
                            fragment.mParentFragment.onAttachFragment(fragment);
                        }
                        b(fragment, this.n.i(), false);
                        if (!fragment.mRetaining) {
                            fragment.performCreate(fragment.mSavedFragmentState);
                            a(fragment, fragment.mSavedFragmentState, false);
                        } else {
                            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
                            fragment.mState = 1;
                        }
                        fragment.mRetaining = false;
                        if (fragment.mFromLayout) {
                            fragment.mView = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
                            if (fragment.mView != null) {
                                fragment.mInnerView = fragment.mView;
                                if (Build.VERSION.SDK_INT >= 11) {
                                    android.support.v4.view.ai.b(fragment.mView, false);
                                } else {
                                    fragment.mView = ag.a(fragment.mView);
                                }
                                if (fragment.mHidden) {
                                    fragment.mView.setVisibility(8);
                                }
                                fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                                a(fragment, fragment.mView, fragment.mSavedFragmentState, false);
                            } else {
                                fragment.mInnerView = null;
                            }
                        }
                    case 1:
                        if (i > 1) {
                            if (f262a) {
                                Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
                            }
                            if (!fragment.mFromLayout) {
                                if (fragment.mContainerId != 0) {
                                    if (fragment.mContainerId == -1) {
                                        a(new IllegalArgumentException("Cannot create fragment " + fragment + " for a container view with no id"));
                                    }
                                    viewGroup = (ViewGroup) this.o.a(fragment.mContainerId);
                                    if (viewGroup == null && !fragment.mRestored) {
                                        try {
                                            str = fragment.getResources().getResourceName(fragment.mContainerId);
                                        } catch (Resources.NotFoundException e2) {
                                            str = "unknown";
                                        }
                                        a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + str + ") for fragment " + fragment));
                                    }
                                } else {
                                    viewGroup = null;
                                }
                                fragment.mContainer = viewGroup;
                                fragment.mView = fragment.performCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), viewGroup, fragment.mSavedFragmentState);
                                if (fragment.mView != null) {
                                    fragment.mInnerView = fragment.mView;
                                    if (Build.VERSION.SDK_INT >= 11) {
                                        android.support.v4.view.ai.b(fragment.mView, false);
                                    } else {
                                        fragment.mView = ag.a(fragment.mView);
                                    }
                                    if (viewGroup != null) {
                                        viewGroup.addView(fragment.mView);
                                    }
                                    if (fragment.mHidden) {
                                        fragment.mView.setVisibility(8);
                                    }
                                    fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                                    a(fragment, fragment.mView, fragment.mSavedFragmentState, false);
                                    if (fragment.mView.getVisibility() != 0 || fragment.mContainer == null) {
                                        z2 = false;
                                    }
                                    fragment.mIsNewlyAdded = z2;
                                } else {
                                    fragment.mInnerView = null;
                                }
                            }
                            fragment.performActivityCreated(fragment.mSavedFragmentState);
                            b(fragment, fragment.mSavedFragmentState, false);
                            if (fragment.mView != null) {
                                fragment.restoreViewState(fragment.mSavedFragmentState);
                            }
                            fragment.mSavedFragmentState = null;
                        }
                        break;
                    case 2:
                        if (i > 2) {
                            fragment.mState = 3;
                        }
                    case 3:
                        if (i > 3) {
                            if (f262a) {
                                Log.v("FragmentManager", "moveto STARTED: " + fragment);
                            }
                            fragment.performStart();
                            b(fragment, false);
                        }
                    case 4:
                        if (i > 4) {
                            if (f262a) {
                                Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                            }
                            fragment.performResume();
                            c(fragment, false);
                            fragment.mSavedFragmentState = null;
                            fragment.mSavedViewState = null;
                            break;
                        }
                        break;
                }
            } else {
                return;
            }
        } else if (fragment.mState > i) {
            switch (fragment.mState) {
                case 5:
                    if (i < 5) {
                        if (f262a) {
                            Log.v("FragmentManager", "movefrom RESUMED: " + fragment);
                        }
                        fragment.performPause();
                        d(fragment, false);
                    }
                case 4:
                    if (i < 4) {
                        if (f262a) {
                            Log.v("FragmentManager", "movefrom STARTED: " + fragment);
                        }
                        fragment.performStop();
                        e(fragment, false);
                    }
                case 3:
                    if (i < 3) {
                        if (f262a) {
                            Log.v("FragmentManager", "movefrom STOPPED: " + fragment);
                        }
                        fragment.performReallyStop();
                    }
                case 2:
                    if (i < 2) {
                        if (f262a) {
                            Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        if (fragment.mView != null && this.n.a(fragment) && fragment.mSavedViewState == null) {
                            m(fragment);
                        }
                        fragment.performDestroyView();
                        f(fragment, false);
                        if (fragment.mView != null && fragment.mContainer != null) {
                            Animation a2 = (this.m <= 0 || this.t || fragment.mView.getVisibility() != 0 || fragment.mPostponedAlpha < BitmapDescriptorFactory.HUE_RED) ? null : a(fragment, i2, false, i3);
                            fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
                            if (a2 != null) {
                                fragment.setAnimatingAway(fragment.mView);
                                fragment.setStateAfterAnimating(i);
                                a2.setAnimationListener(new a(fragment.mView, a2) { // from class: android.support.v4.app.v.2
                                    @Override // android.support.v4.app.v.a, android.view.animation.Animation.AnimationListener
                                    public void onAnimationEnd(Animation animation) {
                                        super.onAnimationEnd(animation);
                                        if (fragment.getAnimatingAway() != null) {
                                            fragment.setAnimatingAway(null);
                                            v.this.a(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
                                        }
                                    }
                                });
                                fragment.mView.startAnimation(a2);
                            }
                            fragment.mContainer.removeView(fragment.mView);
                        }
                        fragment.mContainer = null;
                        fragment.mView = null;
                        fragment.mInnerView = null;
                    }
                    break;
                case 1:
                    if (i < 1) {
                        if (this.t && fragment.getAnimatingAway() != null) {
                            View animatingAway = fragment.getAnimatingAway();
                            fragment.setAnimatingAway(null);
                            animatingAway.clearAnimation();
                        }
                        if (fragment.getAnimatingAway() != null) {
                            fragment.setStateAfterAnimating(i);
                            i = 1;
                            break;
                        } else {
                            if (f262a) {
                                Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                            }
                            if (!fragment.mRetaining) {
                                fragment.performDestroy();
                                g(fragment, false);
                            } else {
                                fragment.mState = 0;
                            }
                            fragment.performDetach();
                            h(fragment, false);
                            if (!z) {
                                if (!fragment.mRetaining) {
                                    g(fragment);
                                    break;
                                } else {
                                    fragment.mHost = null;
                                    fragment.mParentFragment = null;
                                    fragment.mFragmentManager = null;
                                    break;
                                }
                            }
                        }
                    }
                    break;
            }
        }
        if (fragment.mState != i) {
            Log.w("FragmentManager", "moveToState: Fragment state for " + fragment + " not updated inline; expected state " + i + " found " + fragment.mState);
            fragment.mState = i;
        }
    }

    void c(Fragment fragment) {
        a(fragment, this.m, 0, 0, false);
    }

    void d(Fragment fragment) {
        if (fragment.mView != null) {
            Animation a2 = a(fragment, fragment.getNextTransition(), !fragment.mHidden, fragment.getNextTransitionStyle());
            if (a2 != null) {
                b(fragment.mView, a2);
                fragment.mView.startAnimation(a2);
                b(fragment.mView, a2);
                a2.start();
            }
            fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
            if (fragment.isHideReplaced()) {
                fragment.setHideReplaced(false);
            }
        }
        if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
            this.r = true;
        }
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(Fragment fragment) {
        if (fragment != null) {
            int i = this.m;
            if (fragment.mRemoving) {
                if (fragment.isInBackStack()) {
                    i = Math.min(i, 1);
                } else {
                    i = Math.min(i, 0);
                }
            }
            a(fragment, i, fragment.getNextTransition(), fragment.getNextTransitionStyle(), false);
            if (fragment.mView != null) {
                Fragment o = o(fragment);
                if (o != null) {
                    View view = o.mView;
                    ViewGroup viewGroup = fragment.mContainer;
                    int indexOfChild = viewGroup.indexOfChild(view);
                    int indexOfChild2 = viewGroup.indexOfChild(fragment.mView);
                    if (indexOfChild2 < indexOfChild) {
                        viewGroup.removeViewAt(indexOfChild2);
                        viewGroup.addView(fragment.mView, indexOfChild);
                    }
                }
                if (fragment.mIsNewlyAdded && fragment.mContainer != null) {
                    if (Build.VERSION.SDK_INT < 11) {
                        fragment.mView.setVisibility(0);
                    } else if (fragment.mPostponedAlpha > BitmapDescriptorFactory.HUE_RED) {
                        fragment.mView.setAlpha(fragment.mPostponedAlpha);
                    }
                    fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
                    fragment.mIsNewlyAdded = false;
                    Animation a2 = a(fragment, fragment.getNextTransition(), true, fragment.getNextTransitionStyle());
                    if (a2 != null) {
                        b(fragment.mView, a2);
                        fragment.mView.startAnimation(a2);
                    }
                }
            }
            if (fragment.mHiddenChanged) {
                d(fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, boolean z) {
        boolean z2;
        boolean z3;
        if (this.n == null && i != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.m) {
            this.m = i;
            if (this.e != null) {
                if (this.f != null) {
                    int size = this.f.size();
                    int i2 = 0;
                    z2 = false;
                    while (i2 < size) {
                        Fragment fragment = this.f.get(i2);
                        e(fragment);
                        i2++;
                        z2 = fragment.mLoaderManager != null ? fragment.mLoaderManager.a() | z2 : z2;
                    }
                } else {
                    z2 = false;
                }
                int size2 = this.e.size();
                int i3 = 0;
                while (i3 < size2) {
                    Fragment fragment2 = this.e.get(i3);
                    if (fragment2 != null && ((fragment2.mRemoving || fragment2.mDetached) && !fragment2.mIsNewlyAdded)) {
                        e(fragment2);
                        if (fragment2.mLoaderManager != null) {
                            z3 = fragment2.mLoaderManager.a() | z2;
                            i3++;
                            z2 = z3;
                        }
                    }
                    z3 = z2;
                    i3++;
                    z2 = z3;
                }
                if (!z2) {
                    g();
                }
                if (this.r && this.n != null && this.m == 5) {
                    this.n.d();
                    this.r = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (this.e != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.e.size()) {
                    Fragment fragment = this.e.get(i2);
                    if (fragment != null) {
                        b(fragment);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(Fragment fragment) {
        if (fragment.mIndex < 0) {
            if (this.g == null || this.g.size() <= 0) {
                if (this.e == null) {
                    this.e = new ArrayList<>();
                }
                fragment.setIndex(this.e.size(), this.p);
                this.e.add(fragment);
            } else {
                fragment.setIndex(this.g.remove(this.g.size() - 1).intValue(), this.p);
                this.e.set(fragment.mIndex, fragment);
            }
            if (f262a) {
                Log.v("FragmentManager", "Allocated fragment index " + fragment);
            }
        }
    }

    void g(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            if (f262a) {
                Log.v("FragmentManager", "Freeing fragment index " + fragment);
            }
            this.e.set(fragment.mIndex, null);
            if (this.g == null) {
                this.g = new ArrayList<>();
            }
            this.g.add(Integer.valueOf(fragment.mIndex));
            this.n.b(fragment.mWho);
            fragment.initState();
        }
    }

    public void a(Fragment fragment, boolean z) {
        if (this.f == null) {
            this.f = new ArrayList<>();
        }
        if (f262a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        f(fragment);
        if (!fragment.mDetached) {
            if (this.f.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.f.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
            if (z) {
                c(fragment);
            }
        }
    }

    public void h(Fragment fragment) {
        if (f262a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            if (this.f != null) {
                this.f.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.r = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
        }
    }

    public void i(Fragment fragment) {
        boolean z = true;
        if (f262a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mHiddenChanged) {
                z = false;
            }
            fragment.mHiddenChanged = z;
        }
    }

    public void j(Fragment fragment) {
        boolean z = false;
        if (f262a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (!fragment.mHiddenChanged) {
                z = true;
            }
            fragment.mHiddenChanged = z;
        }
    }

    public void k(Fragment fragment) {
        if (f262a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.f != null) {
                    if (f262a) {
                        Log.v("FragmentManager", "remove from detach: " + fragment);
                    }
                    this.f.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.r = true;
                }
                fragment.mAdded = false;
            }
        }
    }

    public void l(Fragment fragment) {
        if (f262a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.f == null) {
                    this.f = new ArrayList<>();
                }
                if (this.f.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (f262a) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                this.f.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.r = true;
                }
            }
        }
    }

    public Fragment b(int i) {
        if (this.f != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        if (this.e != null) {
            for (int size2 = this.e.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.e.get(size2);
                if (fragment2 != null && fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    @Override // android.support.v4.app.u
    public Fragment a(String str) {
        if (this.f != null && str != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (this.e != null && str != null) {
            for (int size2 = this.e.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.e.get(size2);
                if (fragment2 != null && str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public Fragment b(String str) {
        Fragment findFragmentByWho;
        if (this.e != null && str != null) {
            for (int size = this.e.size() - 1; size >= 0; size--) {
                Fragment fragment = this.e.get(size);
                if (fragment != null && (findFragmentByWho = fragment.findFragmentByWho(str)) != null) {
                    return findFragmentByWho;
                }
            }
        }
        return null;
    }

    private void y() {
        if (this.s) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.u != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.u);
        }
    }

    public void a(c cVar, boolean z) {
        if (!z) {
            y();
        }
        synchronized (this) {
            if (this.t || this.n == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.c == null) {
                this.c = new ArrayList<>();
            }
            this.c.add(cVar);
            z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        boolean z = true;
        synchronized (this) {
            boolean z2 = this.B != null && !this.B.isEmpty();
            if (this.c == null || this.c.size() != 1) {
                z = false;
            }
            if (z2 || z) {
                this.n.j().removeCallbacks(this.C);
                this.n.j().post(this.C);
            }
        }
    }

    public int a(j jVar) {
        int size;
        synchronized (this) {
            if (this.k == null || this.k.size() <= 0) {
                if (this.j == null) {
                    this.j = new ArrayList<>();
                }
                size = this.j.size();
                if (f262a) {
                    Log.v("FragmentManager", "Setting back stack index " + size + " to " + jVar);
                }
                this.j.add(jVar);
            } else {
                size = this.k.remove(this.k.size() - 1).intValue();
                if (f262a) {
                    Log.v("FragmentManager", "Adding back stack index " + size + " with " + jVar);
                }
                this.j.set(size, jVar);
            }
        }
        return size;
    }

    public void a(int i, j jVar) {
        synchronized (this) {
            if (this.j == null) {
                this.j = new ArrayList<>();
            }
            int size = this.j.size();
            if (i < size) {
                if (f262a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + jVar);
                }
                this.j.set(i, jVar);
            } else {
                while (size < i) {
                    this.j.add(null);
                    if (this.k == null) {
                        this.k = new ArrayList<>();
                    }
                    if (f262a) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.k.add(Integer.valueOf(size));
                    size++;
                }
                if (f262a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + jVar);
                }
                this.j.add(jVar);
            }
        }
    }

    public void c(int i) {
        synchronized (this) {
            this.j.set(i, null);
            if (this.k == null) {
                this.k = new ArrayList<>();
            }
            if (f262a) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.k.add(Integer.valueOf(i));
        }
    }

    private void c(boolean z) {
        if (this.d) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (Looper.myLooper() != this.n.j().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            y();
        }
        if (this.w == null) {
            this.w = new ArrayList<>();
            this.x = new ArrayList<>();
        }
        this.d = true;
        try {
            a((ArrayList<j>) null, (ArrayList<Boolean>) null);
        } finally {
            this.d = false;
        }
    }

    public void b(c cVar, boolean z) {
        c(z);
        if (cVar.a(this.w, this.x)) {
            this.d = true;
            try {
                b(this.w, this.x);
            } finally {
                A();
            }
        }
        i();
    }

    private void A() {
        this.d = false;
        this.x.clear();
        this.w.clear();
    }

    public boolean h() {
        c(true);
        boolean z = false;
        while (c(this.w, this.x)) {
            this.d = true;
            try {
                b(this.w, this.x);
                A();
                z = true;
            } catch (Throwable th) {
                A();
                throw th;
            }
        }
        i();
        return z;
    }

    private void a(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        int i = 0;
        int size = this.B == null ? 0 : this.B.size();
        while (i < size) {
            e eVar = this.B.get(i);
            if (arrayList != null && !eVar.f269a && (indexOf2 = arrayList.indexOf(eVar.b)) != -1 && arrayList2.get(indexOf2).booleanValue()) {
                eVar.e();
            } else if (eVar.c() || (arrayList != null && eVar.b.a(arrayList, 0, arrayList.size()))) {
                this.B.remove(i);
                i--;
                size--;
                if (arrayList != null && !eVar.f269a && (indexOf = arrayList.indexOf(eVar.b)) != -1 && arrayList2.get(indexOf).booleanValue()) {
                    eVar.e();
                } else {
                    eVar.d();
                }
            }
            i++;
            size = size;
        }
    }

    private void b(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int i2 = 0;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            a(arrayList, arrayList2);
            int size = arrayList.size();
            int i3 = 0;
            while (i2 < size) {
                if (!arrayList.get(i2).u) {
                    if (i3 != i2) {
                        a(arrayList, arrayList2, i3, i2);
                    }
                    int i4 = i2 + 1;
                    if (arrayList2.get(i2).booleanValue()) {
                        while (i4 < size && arrayList2.get(i4).booleanValue() && !arrayList.get(i4).u) {
                            i4++;
                        }
                    }
                    int i5 = i4;
                    a(arrayList, arrayList2, i2, i5);
                    i3 = i5;
                    i = i5 - 1;
                } else {
                    i = i2;
                }
                i2 = i + 1;
            }
            if (i3 != size) {
                a(arrayList, arrayList2, i3, size);
            }
        }
    }

    private void a(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).u;
        if (this.y == null) {
            this.y = new ArrayList<>();
        } else {
            this.y.clear();
        }
        if (this.f != null) {
            this.y.addAll(this.f);
        }
        int i4 = i;
        boolean z2 = false;
        while (i4 < i2) {
            j jVar = arrayList.get(i4);
            if (!arrayList2.get(i4).booleanValue()) {
                jVar.a(this.y);
            } else {
                jVar.b(this.y);
            }
            i4++;
            z2 = z2 || jVar.j;
        }
        this.y.clear();
        if (!z) {
            z.a(this, arrayList, arrayList2, i, i2, false);
        }
        b(arrayList, arrayList2, i, i2);
        if (z) {
            android.support.v4.f.b<Fragment> bVar = new android.support.v4.f.b<>();
            b(bVar);
            i3 = a(arrayList, arrayList2, i, i2, bVar);
            a(bVar);
        } else {
            i3 = i2;
        }
        if (i3 != i && z) {
            z.a(this, arrayList, arrayList2, i, i3, true);
            a(this.m, true);
        }
        while (i < i2) {
            j jVar2 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && jVar2.n >= 0) {
                c(jVar2.n);
                jVar2.n = -1;
            }
            i++;
        }
        if (z2) {
            j();
        }
    }

    private void a(android.support.v4.f.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            Fragment b2 = bVar.b(i);
            if (!b2.mAdded) {
                View view = b2.getView();
                if (Build.VERSION.SDK_INT < 11) {
                    b2.getView().setVisibility(4);
                } else {
                    b2.mPostponedAlpha = view.getAlpha();
                    view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
            }
        }
    }

    private int a(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, android.support.v4.f.b<Fragment> bVar) {
        int i3;
        int i4 = i2 - 1;
        int i5 = i2;
        while (i4 >= i) {
            j jVar = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            if (jVar.f() && !jVar.a(arrayList, i4 + 1, i2)) {
                if (this.B == null) {
                    this.B = new ArrayList<>();
                }
                e eVar = new e(jVar, booleanValue);
                this.B.add(eVar);
                jVar.a(eVar);
                if (booleanValue) {
                    jVar.e();
                } else {
                    jVar.b(false);
                }
                int i6 = i5 - 1;
                if (i4 != i6) {
                    arrayList.remove(i4);
                    arrayList.add(i6, jVar);
                }
                b(bVar);
                i3 = i6;
            } else {
                i3 = i5;
            }
            i4--;
            i5 = i3;
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(j jVar, boolean z, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(jVar);
        arrayList2.add(Boolean.valueOf(z));
        b(arrayList, arrayList2, 0, 1);
        if (z2) {
            z.a(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z3) {
            a(this.m, true);
        }
        if (this.e != null) {
            int size = this.e.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = this.e.get(i);
                if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && jVar.b(fragment.mContainerId)) {
                    if (Build.VERSION.SDK_INT >= 11 && fragment.mPostponedAlpha > BitmapDescriptorFactory.HUE_RED) {
                        fragment.mView.setAlpha(fragment.mPostponedAlpha);
                    }
                    if (z3) {
                        fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
                    } else {
                        fragment.mPostponedAlpha = -1.0f;
                        fragment.mIsNewlyAdded = false;
                    }
                }
            }
        }
    }

    private Fragment o(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        View view = fragment.mView;
        if (viewGroup == null || view == null) {
            return null;
        }
        for (int indexOf = this.f.indexOf(fragment) - 1; indexOf >= 0; indexOf--) {
            Fragment fragment2 = this.f.get(indexOf);
            if (fragment2.mContainer == viewGroup && fragment2.mView != null) {
                return fragment2;
            }
        }
        return null;
    }

    private static void b(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            j jVar = arrayList.get(i);
            if (arrayList2.get(i).booleanValue()) {
                jVar.a(-1);
                jVar.b(i == i2 + (-1));
            } else {
                jVar.a(1);
                jVar.e();
            }
            i++;
        }
    }

    private void b(android.support.v4.f.b<Fragment> bVar) {
        if (this.m >= 1) {
            int min = Math.min(this.m, 4);
            int size = this.f == null ? 0 : this.f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = this.f.get(i);
                if (fragment.mState < min) {
                    a(fragment, min, fragment.getNextAnim(), fragment.getNextTransition(), false);
                    if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                        bVar.add(fragment);
                    }
                }
            }
        }
    }

    private void B() {
        if (this.B != null) {
            while (!this.B.isEmpty()) {
                this.B.remove(0).d();
            }
        }
    }

    private void C() {
        int size = this.e == null ? 0 : this.e.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = this.e.get(i);
            if (fragment != null && fragment.getAnimatingAway() != null) {
                int stateAfterAnimating = fragment.getStateAfterAnimating();
                View animatingAway = fragment.getAnimatingAway();
                fragment.setAnimatingAway(null);
                Animation animation = animatingAway.getAnimation();
                if (animation != null) {
                    animation.cancel();
                }
                a(fragment, stateAfterAnimating, 0, 0, false);
            }
        }
    }

    private boolean c(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.c == null || this.c.size() == 0) {
                return false;
            }
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                this.c.get(i).a(arrayList, arrayList2);
            }
            this.c.clear();
            this.n.j().removeCallbacks(this.C);
            return size > 0;
        }
    }

    void i() {
        if (this.v) {
            boolean z = false;
            for (int i = 0; i < this.e.size(); i++) {
                Fragment fragment = this.e.get(i);
                if (fragment != null && fragment.mLoaderManager != null) {
                    z |= fragment.mLoaderManager.a();
                }
            }
            if (!z) {
                this.v = false;
                g();
            }
        }
    }

    void j() {
        if (this.l != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.l.size()) {
                    this.l.get(i2).a();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(j jVar) {
        if (this.h == null) {
            this.h = new ArrayList<>();
        }
        this.h.add(jVar);
        j();
    }

    boolean a(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        if (this.h == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = this.h.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.h.remove(size));
            arrayList2.add(true);
        } else {
            int i3 = -1;
            if (str != null || i >= 0) {
                int size2 = this.h.size() - 1;
                while (size2 >= 0) {
                    j jVar = this.h.get(size2);
                    if ((str != null && str.equals(jVar.g())) || (i >= 0 && i == jVar.n)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        j jVar2 = this.h.get(size2);
                        if ((str == null || !str.equals(jVar2.g())) && (i < 0 || i != jVar2.n)) {
                            break;
                        }
                        size2--;
                    }
                }
                i3 = size2;
            }
            if (i3 == this.h.size() - 1) {
                return false;
            }
            for (int size3 = this.h.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.h.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w k() {
        ArrayList arrayList;
        ArrayList arrayList2;
        boolean z;
        w k;
        ArrayList arrayList3;
        if (this.e != null) {
            int i = 0;
            arrayList = null;
            arrayList2 = null;
            while (i < this.e.size()) {
                Fragment fragment = this.e.get(i);
                if (fragment != null) {
                    if (fragment.mRetainInstance) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(fragment);
                        fragment.mRetaining = true;
                        fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                        if (f262a) {
                            Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                        }
                    }
                    if (fragment.mChildFragmentManager == null || (k = fragment.mChildFragmentManager.k()) == null) {
                        z = false;
                    } else {
                        if (arrayList == null) {
                            arrayList3 = new ArrayList();
                            for (int i2 = 0; i2 < i; i2++) {
                                arrayList3.add(null);
                            }
                        } else {
                            arrayList3 = arrayList;
                        }
                        arrayList3.add(k);
                        arrayList = arrayList3;
                        z = true;
                    }
                    if (arrayList != null && !z) {
                        arrayList.add(null);
                    }
                }
                i++;
                arrayList2 = arrayList2;
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        if (arrayList2 == null && arrayList == null) {
            return null;
        }
        return new w(arrayList2, arrayList);
    }

    void m(Fragment fragment) {
        if (fragment.mInnerView != null) {
            if (this.A == null) {
                this.A = new SparseArray<>();
            } else {
                this.A.clear();
            }
            fragment.mInnerView.saveHierarchyState(this.A);
            if (this.A.size() > 0) {
                fragment.mSavedViewState = this.A;
                this.A = null;
            }
        }
    }

    Bundle n(Fragment fragment) {
        Bundle bundle;
        if (this.z == null) {
            this.z = new Bundle();
        }
        fragment.performSaveInstanceState(this.z);
        c(fragment, this.z, false);
        if (!this.z.isEmpty()) {
            bundle = this.z;
            this.z = null;
        } else {
            bundle = null;
        }
        if (fragment.mView != null) {
            m(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Parcelable l() {
        int[] iArr;
        int size;
        int size2;
        boolean z;
        BackStackState[] backStackStateArr = null;
        B();
        C();
        h();
        if (b) {
            this.s = true;
        }
        if (this.e == null || this.e.size() <= 0) {
            return null;
        }
        int size3 = this.e.size();
        FragmentState[] fragmentStateArr = new FragmentState[size3];
        int i = 0;
        boolean z2 = false;
        while (i < size3) {
            Fragment fragment = this.e.get(i);
            if (fragment != null) {
                if (fragment.mIndex < 0) {
                    a(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i] = fragmentState;
                if (fragment.mState > 0 && fragmentState.k == null) {
                    fragmentState.k = n(fragment);
                    if (fragment.mTarget != null) {
                        if (fragment.mTarget.mIndex < 0) {
                            a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget));
                        }
                        if (fragmentState.k == null) {
                            fragmentState.k = new Bundle();
                        }
                        a(fragmentState.k, "android:target_state", fragment.mTarget);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.k.putInt("android:target_req_state", fragment.mTargetRequestCode);
                        }
                    }
                } else {
                    fragmentState.k = fragment.mSavedFragmentState;
                }
                if (f262a) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.k);
                }
                z = true;
            } else {
                z = z2;
            }
            i++;
            z2 = z;
        }
        if (!z2) {
            if (!f262a) {
                return null;
            }
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
        if (this.f == null || (size2 = this.f.size()) <= 0) {
            iArr = null;
        } else {
            iArr = new int[size2];
            for (int i2 = 0; i2 < size2; i2++) {
                iArr[i2] = this.f.get(i2).mIndex;
                if (iArr[i2] < 0) {
                    a(new IllegalStateException("Failure saving state: active " + this.f.get(i2) + " has cleared index: " + iArr[i2]));
                }
                if (f262a) {
                    Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.f.get(i2));
                }
            }
        }
        if (this.h != null && (size = this.h.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this.h.get(i3));
                if (f262a) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i3 + ": " + this.h.get(i3));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f208a = fragmentStateArr;
        fragmentManagerState.b = iArr;
        fragmentManagerState.c = backStackStateArr;
        return fragmentManagerState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Parcelable parcelable, w wVar) {
        List<w> list;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.f208a != null) {
                if (wVar != null) {
                    List<Fragment> a2 = wVar.a();
                    List<w> b2 = wVar.b();
                    int size = a2 != null ? a2.size() : 0;
                    for (int i = 0; i < size; i++) {
                        Fragment fragment = a2.get(i);
                        if (f262a) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.f208a[fragment.mIndex];
                        fragmentState.l = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = false;
                        fragment.mAdded = false;
                        fragment.mTarget = null;
                        if (fragmentState.k != null) {
                            fragmentState.k.setClassLoader(this.n.i().getClassLoader());
                            fragment.mSavedViewState = fragmentState.k.getSparseParcelableArray("android:view_state");
                            fragment.mSavedFragmentState = fragmentState.k;
                        }
                    }
                    list = b2;
                } else {
                    list = null;
                }
                this.e = new ArrayList<>(fragmentManagerState.f208a.length);
                if (this.g != null) {
                    this.g.clear();
                }
                int i2 = 0;
                while (i2 < fragmentManagerState.f208a.length) {
                    FragmentState fragmentState2 = fragmentManagerState.f208a[i2];
                    if (fragmentState2 != null) {
                        Fragment a3 = fragmentState2.a(this.n, this.p, (list == null || i2 >= list.size()) ? null : list.get(i2));
                        if (f262a) {
                            Log.v("FragmentManager", "restoreAllState: active #" + i2 + ": " + a3);
                        }
                        this.e.add(a3);
                        fragmentState2.l = null;
                    } else {
                        this.e.add(null);
                        if (this.g == null) {
                            this.g = new ArrayList<>();
                        }
                        if (f262a) {
                            Log.v("FragmentManager", "restoreAllState: avail #" + i2);
                        }
                        this.g.add(Integer.valueOf(i2));
                    }
                    i2++;
                }
                if (wVar != null) {
                    List<Fragment> a4 = wVar.a();
                    int size2 = a4 != null ? a4.size() : 0;
                    for (int i3 = 0; i3 < size2; i3++) {
                        Fragment fragment2 = a4.get(i3);
                        if (fragment2.mTargetIndex >= 0) {
                            if (fragment2.mTargetIndex < this.e.size()) {
                                fragment2.mTarget = this.e.get(fragment2.mTargetIndex);
                            } else {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                                fragment2.mTarget = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.b != null) {
                    this.f = new ArrayList<>(fragmentManagerState.b.length);
                    for (int i4 = 0; i4 < fragmentManagerState.b.length; i4++) {
                        Fragment fragment3 = this.e.get(fragmentManagerState.b[i4]);
                        if (fragment3 == null) {
                            a(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.b[i4]));
                        }
                        fragment3.mAdded = true;
                        if (f262a) {
                            Log.v("FragmentManager", "restoreAllState: added #" + i4 + ": " + fragment3);
                        }
                        if (this.f.contains(fragment3)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.f.add(fragment3);
                    }
                } else {
                    this.f = null;
                }
                if (fragmentManagerState.c != null) {
                    this.h = new ArrayList<>(fragmentManagerState.c.length);
                    for (int i5 = 0; i5 < fragmentManagerState.c.length; i5++) {
                        j a5 = fragmentManagerState.c[i5].a(this);
                        if (f262a) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i5 + " (index " + a5.n + "): " + a5);
                            PrintWriter printWriter = new PrintWriter(new android.support.v4.f.e("FragmentManager"));
                            a5.a("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.h.add(a5);
                        if (a5.n >= 0) {
                            a(a5.n, a5);
                        }
                    }
                    return;
                }
                this.h = null;
            }
        }
    }

    public void a(t tVar, r rVar, Fragment fragment) {
        if (this.n != null) {
            throw new IllegalStateException("Already attached");
        }
        this.n = tVar;
        this.o = rVar;
        this.p = fragment;
    }

    public void m() {
        this.s = false;
    }

    public void n() {
        this.s = false;
        this.d = true;
        a(1, false);
        this.d = false;
    }

    public void o() {
        this.s = false;
        this.d = true;
        a(2, false);
        this.d = false;
    }

    public void p() {
        this.s = false;
        this.d = true;
        a(4, false);
        this.d = false;
    }

    public void q() {
        this.s = false;
        this.d = true;
        a(5, false);
        this.d = false;
    }

    public void r() {
        this.d = true;
        a(4, false);
        this.d = false;
    }

    public void s() {
        this.s = true;
        this.d = true;
        a(3, false);
        this.d = false;
    }

    public void t() {
        this.d = true;
        a(2, false);
        this.d = false;
    }

    public void u() {
        this.d = true;
        a(1, false);
        this.d = false;
    }

    public void v() {
        this.t = true;
        h();
        this.d = true;
        a(0, false);
        this.d = false;
        this.n = null;
        this.o = null;
        this.p = null;
    }

    public void a(boolean z) {
        if (this.f != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f.get(size);
                if (fragment != null) {
                    fragment.performMultiWindowModeChanged(z);
                }
            }
        }
    }

    public void b(boolean z) {
        if (this.f != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f.get(size);
                if (fragment != null) {
                    fragment.performPictureInPictureModeChanged(z);
                }
            }
        }
    }

    public void a(Configuration configuration) {
        if (this.f != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f.size()) {
                    Fragment fragment = this.f.get(i2);
                    if (fragment != null) {
                        fragment.performConfigurationChanged(configuration);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void w() {
        if (this.f != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f.size()) {
                    Fragment fragment = this.f.get(i2);
                    if (fragment != null) {
                        fragment.performLowMemory();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        boolean z;
        ArrayList<Fragment> arrayList = null;
        if (this.f != null) {
            int i = 0;
            z = false;
            while (i < this.f.size()) {
                Fragment fragment = this.f.get(i);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                }
                i++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.i != null) {
            for (int i2 = 0; i2 < this.i.size(); i2++) {
                Fragment fragment2 = this.i.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.i = arrayList;
        return z;
    }

    public boolean a(Menu menu) {
        if (this.f != null) {
            boolean z = false;
            for (int i = 0; i < this.f.size(); i++) {
                Fragment fragment = this.f.get(i);
                if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                    z = true;
                }
            }
            return z;
        }
        return false;
    }

    public boolean a(MenuItem menuItem) {
        if (this.f != null) {
            for (int i = 0; i < this.f.size(); i++) {
                Fragment fragment = this.f.get(i);
                if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public boolean b(MenuItem menuItem) {
        if (this.f != null) {
            for (int i = 0; i < this.f.size(); i++) {
                Fragment fragment = this.f.get(i);
                if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void b(Menu menu) {
        if (this.f != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f.size()) {
                    Fragment fragment = this.f.get(i2);
                    if (fragment != null) {
                        fragment.performOptionsMenuClosed(menu);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    void a(Fragment fragment, Context context, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).a(fragment, context, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.a(this, fragment, context);
                }
            }
        }
    }

    void b(Fragment fragment, Context context, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).b(fragment, context, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.b(this, fragment, context);
                }
            }
        }
    }

    void a(Fragment fragment, Bundle bundle, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).a(fragment, bundle, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.a(this, fragment, bundle);
                }
            }
        }
    }

    void b(Fragment fragment, Bundle bundle, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).b(fragment, bundle, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.b(this, fragment, bundle);
                }
            }
        }
    }

    void a(Fragment fragment, View view, Bundle bundle, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).a(fragment, view, bundle, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.a(this, fragment, view, bundle);
                }
            }
        }
    }

    void b(Fragment fragment, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).b(fragment, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.a(this, fragment);
                }
            }
        }
    }

    void c(Fragment fragment, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).c(fragment, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.b(this, fragment);
                }
            }
        }
    }

    void d(Fragment fragment, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).d(fragment, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.c(this, fragment);
                }
            }
        }
    }

    void e(Fragment fragment, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).e(fragment, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.d(this, fragment);
                }
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).c(fragment, bundle, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.c(this, fragment, bundle);
                }
            }
        }
    }

    void f(Fragment fragment, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).f(fragment, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.e(this, fragment);
                }
            }
        }
    }

    void g(Fragment fragment, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).g(fragment, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.f(this, fragment);
                }
            }
        }
    }

    void h(Fragment fragment, boolean z) {
        if (this.p != null) {
            u fragmentManager = this.p.getFragmentManager();
            if (fragmentManager instanceof v) {
                ((v) fragmentManager).h(fragment, true);
            }
        }
        if (this.H != null) {
            Iterator<android.support.v4.f.i<u.a, Boolean>> it = this.H.iterator();
            while (it.hasNext()) {
                android.support.v4.f.i<u.a, Boolean> next = it.next();
                if (!z || next.b.booleanValue()) {
                    next.f325a.g(this, fragment);
                }
            }
        }
    }

    public static int d(int i) {
        switch (i) {
            case 4097:
                return 8194;
            case 4099:
                return 4099;
            case 8194:
                return 4097;
            default:
                return 0;
        }
    }

    public static int b(int i, boolean z) {
        switch (i) {
            case 4097:
                return z ? 1 : 2;
            case 4099:
                return z ? 5 : 6;
            case 8194:
                return z ? 3 : 4;
            default:
                return -1;
        }
    }

    @Override // android.support.v4.view.n
    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.f267a);
        String string = attributeValue == null ? obtainStyledAttributes.getString(0) : attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string2 = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.n.i(), string)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string2 == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string);
        }
        Fragment b2 = resourceId != -1 ? b(resourceId) : null;
        if (b2 == null && string2 != null) {
            b2 = a(string2);
        }
        if (b2 == null && id != -1) {
            b2 = b(id);
        }
        if (f262a) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + string + " existing=" + b2);
        }
        if (b2 == null) {
            Fragment instantiate = Fragment.instantiate(context, string);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string2;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this;
            instantiate.mHost = this.n;
            instantiate.onInflate(this.n.i(), attributeSet, instantiate.mSavedFragmentState);
            a(instantiate, true);
            fragment = instantiate;
        } else if (b2.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + string);
        } else {
            b2.mInLayout = true;
            b2.mHost = this.n;
            if (!b2.mRetaining) {
                b2.onInflate(this.n.i(), attributeSet, b2.mSavedFragmentState);
            }
            fragment = b2;
        }
        if (this.m < 1 && fragment.mFromLayout) {
            a(fragment, 1, 0, 0, false);
        } else {
            c(fragment);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string2);
        }
        return fragment.mView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public android.support.v4.view.n x() {
        return this;
    }

    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    private class d implements c {

        /* renamed from: a  reason: collision with root package name */
        final String f268a;
        final int b;
        final int c;

        d(String str, int i, int i2) {
            this.f268a = str;
            this.b = i;
            this.c = i2;
        }

        @Override // android.support.v4.app.v.c
        public boolean a(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2) {
            return v.this.a(arrayList, arrayList2, this.f268a, this.b, this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentManager.java */
    /* loaded from: classes.dex */
    public static class e implements Fragment.b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f269a;
        private final j b;
        private int c;

        e(j jVar, boolean z) {
            this.f269a = z;
            this.b = jVar;
        }

        @Override // android.support.v4.app.Fragment.b
        public void a() {
            this.c--;
            if (this.c == 0) {
                this.b.b.z();
            }
        }

        @Override // android.support.v4.app.Fragment.b
        public void b() {
            this.c++;
        }

        public boolean c() {
            return this.c == 0;
        }

        public void d() {
            boolean z = false;
            boolean z2 = this.c > 0;
            v vVar = this.b.b;
            int size = vVar.f.size();
            for (int i = 0; i < size; i++) {
                Fragment fragment = vVar.f.get(i);
                fragment.setOnStartEnterTransitionListener(null);
                if (z2 && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            v vVar2 = this.b.b;
            j jVar = this.b;
            boolean z3 = this.f269a;
            if (!z2) {
                z = true;
            }
            vVar2.a(jVar, z3, z, true);
        }

        public void e() {
            this.b.b.a(this.b, this.f269a, false, false);
        }
    }
}
