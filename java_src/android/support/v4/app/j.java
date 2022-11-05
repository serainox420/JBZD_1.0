package android.support.v4.app;

import android.os.Build;
import android.support.v4.app.Fragment;
import android.support.v4.app.v;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BackStackRecord.java */
/* loaded from: classes.dex */
public final class j extends y implements v.c {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f257a;
    final v b;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    boolean j;
    String l;
    boolean m;
    int o;
    CharSequence p;
    int q;
    CharSequence r;
    ArrayList<String> s;
    ArrayList<String> t;
    ArrayList<a> c = new ArrayList<>();
    boolean k = true;
    int n = -1;
    boolean u = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BackStackRecord.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f258a;
        Fragment b;
        int c;
        int d;
        int e;
        int f;
    }

    static {
        f257a = Build.VERSION.SDK_INT >= 21;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.n >= 0) {
            sb.append(" #");
            sb.append(this.n);
        }
        if (this.l != null) {
            sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            sb.append(this.l);
        }
        sb.append("}");
        return sb.toString();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.l);
            printWriter.print(" mIndex=");
            printWriter.print(this.n);
            printWriter.print(" mCommitted=");
            printWriter.println(this.m);
            if (this.h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.h));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.i));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.f != 0 || this.g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.g));
            }
            if (this.o != 0 || this.p != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.o));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.p);
            }
            if (this.q != 0 || this.r != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.q));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.r);
            }
        }
        if (!this.c.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str3 = str + "    ";
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                a aVar = this.c.get(i);
                switch (aVar.f258a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    default:
                        str2 = "cmd=" + aVar.f258a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                printWriter.println(aVar.b);
                if (z) {
                    if (aVar.c != 0 || aVar.d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.d));
                    }
                    if (aVar.e != 0 || aVar.f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f));
                    }
                }
            }
        }
    }

    public j(v vVar) {
        this.b = vVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.c.add(aVar);
        aVar.c = this.d;
        aVar.d = this.e;
        aVar.e = this.f;
        aVar.f = this.g;
    }

    @Override // android.support.v4.app.y
    public y a(Fragment fragment, String str) {
        a(0, fragment, str, 1);
        return this;
    }

    @Override // android.support.v4.app.y
    public y a(int i, Fragment fragment) {
        a(i, fragment, (String) null, 1);
        return this;
    }

    @Override // android.support.v4.app.y
    public y a(int i, Fragment fragment, String str) {
        a(i, fragment, str, 1);
        return this;
    }

    private void a(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        fragment.mFragmentManager = this.b;
        if (str != null) {
            if (fragment.mTag != null && !str.equals(fragment.mTag)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        a aVar = new a();
        aVar.f258a = i2;
        aVar.b = fragment;
        a(aVar);
    }

    @Override // android.support.v4.app.y
    public y b(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(i, fragment, str, 2);
        return this;
    }

    @Override // android.support.v4.app.y
    public y a(Fragment fragment) {
        a aVar = new a();
        aVar.f258a = 3;
        aVar.b = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.y
    public y b(Fragment fragment) {
        a aVar = new a();
        aVar.f258a = 4;
        aVar.b = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.y
    public y c(Fragment fragment) {
        a aVar = new a();
        aVar.f258a = 5;
        aVar.b = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.y
    public y d(Fragment fragment) {
        a aVar = new a();
        aVar.f258a = 6;
        aVar.b = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.y
    public y e(Fragment fragment) {
        a aVar = new a();
        aVar.f258a = 7;
        aVar.b = fragment;
        a(aVar);
        return this;
    }

    @Override // android.support.v4.app.y
    public y a(int i, int i2) {
        return a(i, i2, 0, 0);
    }

    public y a(int i, int i2, int i3, int i4) {
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        return this;
    }

    @Override // android.support.v4.app.y
    public y a(String str) {
        if (!this.k) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.j = true;
        this.l = str;
        return this;
    }

    public y a() {
        if (this.j) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.k = false;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (this.j) {
            if (v.f262a) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = this.c.get(i2);
                if (aVar.b != null) {
                    aVar.b.mBackStackNesting += i;
                    if (v.f262a) {
                        Log.v("FragmentManager", "Bump nesting of " + aVar.b + " to " + aVar.b.mBackStackNesting);
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.y
    public int b() {
        return a(false);
    }

    @Override // android.support.v4.app.y
    public int c() {
        return a(true);
    }

    @Override // android.support.v4.app.y
    public void d() {
        a();
        this.b.b((v.c) this, true);
    }

    int a(boolean z) {
        if (this.m) {
            throw new IllegalStateException("commit already called");
        }
        if (v.f262a) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new android.support.v4.f.e("FragmentManager"));
            a("  ", (FileDescriptor) null, printWriter, (String[]) null);
            printWriter.close();
        }
        this.m = true;
        if (this.j) {
            this.n = this.b.a(this);
        } else {
            this.n = -1;
        }
        this.b.a(this, z);
        return this.n;
    }

    @Override // android.support.v4.app.v.c
    public boolean a(ArrayList<j> arrayList, ArrayList<Boolean> arrayList2) {
        if (v.f262a) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (this.j) {
            this.b.b(this);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i) {
        int size = this.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.c.get(i2).b.mContainerId == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(ArrayList<j> arrayList, int i, int i2) {
        int i3;
        if (i2 == i) {
            return false;
        }
        int size = this.c.size();
        int i4 = -1;
        int i5 = 0;
        while (i5 < size) {
            int i6 = this.c.get(i5).b.mContainerId;
            if (i6 == 0 || i6 == i4) {
                i3 = i4;
            } else {
                for (int i7 = i; i7 < i2; i7++) {
                    j jVar = arrayList.get(i7);
                    int size2 = jVar.c.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        if (jVar.c.get(i8).b.mContainerId == i6) {
                            return true;
                        }
                    }
                }
                i3 = i6;
            }
            i5++;
            i4 = i3;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            a aVar = this.c.get(i);
            Fragment fragment = aVar.b;
            fragment.setNextTransition(this.h, this.i);
            switch (aVar.f258a) {
                case 1:
                    fragment.setNextAnim(aVar.c);
                    this.b.a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f258a);
                case 3:
                    fragment.setNextAnim(aVar.d);
                    this.b.h(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.d);
                    this.b.i(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.c);
                    this.b.j(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.d);
                    this.b.k(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.c);
                    this.b.l(fragment);
                    break;
            }
            if (!this.u && aVar.f258a != 1) {
                this.b.e(fragment);
            }
        }
        if (!this.u) {
            this.b.a(this.b.m, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            a aVar = this.c.get(size);
            Fragment fragment = aVar.b;
            fragment.setNextTransition(v.d(this.h), this.i);
            switch (aVar.f258a) {
                case 1:
                    fragment.setNextAnim(aVar.f);
                    this.b.h(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f258a);
                case 3:
                    fragment.setNextAnim(aVar.e);
                    this.b.a(fragment, false);
                    break;
                case 4:
                    fragment.setNextAnim(aVar.e);
                    this.b.j(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(aVar.f);
                    this.b.i(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(aVar.e);
                    this.b.l(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(aVar.f);
                    this.b.k(fragment);
                    break;
            }
            if (!this.u && aVar.f258a != 3) {
                this.b.e(fragment);
            }
        }
        if (!this.u && z) {
            this.b.a(this.b.m, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ArrayList<Fragment> arrayList) {
        boolean z;
        int i;
        int i2 = 0;
        while (i2 < this.c.size()) {
            a aVar = this.c.get(i2);
            switch (aVar.f258a) {
                case 1:
                case 7:
                    arrayList.add(aVar.b);
                    break;
                case 2:
                    Fragment fragment = aVar.b;
                    int i3 = fragment.mContainerId;
                    int size = arrayList.size() - 1;
                    int i4 = i2;
                    boolean z2 = false;
                    while (size >= 0) {
                        Fragment fragment2 = arrayList.get(size);
                        if (fragment2.mContainerId != i3) {
                            z = z2;
                            i = i4;
                        } else if (fragment2 == fragment) {
                            z = true;
                            i = i4;
                        } else {
                            a aVar2 = new a();
                            aVar2.f258a = 3;
                            aVar2.b = fragment2;
                            aVar2.c = aVar.c;
                            aVar2.e = aVar.e;
                            aVar2.d = aVar.d;
                            aVar2.f = aVar.f;
                            this.c.add(i4, aVar2);
                            arrayList.remove(fragment2);
                            boolean z3 = z2;
                            i = i4 + 1;
                            z = z3;
                        }
                        size--;
                        i4 = i;
                        z2 = z;
                    }
                    if (z2) {
                        this.c.remove(i4);
                        i2 = i4 - 1;
                        break;
                    } else {
                        aVar.f258a = 1;
                        arrayList.add(fragment);
                        i2 = i4;
                        break;
                    }
                case 3:
                case 6:
                    arrayList.remove(aVar.b);
                    break;
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ArrayList<Fragment> arrayList) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                a aVar = this.c.get(i2);
                switch (aVar.f258a) {
                    case 1:
                    case 7:
                        arrayList.remove(aVar.b);
                        break;
                    case 3:
                    case 6:
                        arrayList.add(aVar.b);
                        break;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        for (int i = 0; i < this.c.size(); i++) {
            if (b(this.c.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Fragment.b bVar) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                a aVar = this.c.get(i2);
                if (b(aVar)) {
                    aVar.b.setOnStartEnterTransitionListener(bVar);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static boolean b(a aVar) {
        Fragment fragment = aVar.b;
        return fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    public String g() {
        return this.l;
    }
}
