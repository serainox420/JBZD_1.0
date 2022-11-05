package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: MenuBuilder.java */
@RestrictTo
/* loaded from: classes.dex */
public class h implements android.support.v4.d.a.a {
    private static final int[] d = {1, 4, 5, 3, 2, 0};

    /* renamed from: a  reason: collision with root package name */
    CharSequence f719a;
    Drawable b;
    View c;
    private final Context e;
    private final Resources f;
    private boolean g;
    private boolean h;
    private a i;
    private ContextMenu.ContextMenuInfo q;
    private j y;
    private boolean z;
    private int p = 0;
    private boolean r = false;
    private boolean s = false;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private ArrayList<j> w = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<o>> x = new CopyOnWriteArrayList<>();
    private ArrayList<j> j = new ArrayList<>();
    private ArrayList<j> k = new ArrayList<>();
    private boolean l = true;
    private ArrayList<j> m = new ArrayList<>();
    private ArrayList<j> n = new ArrayList<>();
    private boolean o = true;

    /* compiled from: MenuBuilder.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public interface a {
        void a(h hVar);

        boolean a(h hVar, MenuItem menuItem);
    }

    /* compiled from: MenuBuilder.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public interface b {
        boolean a(j jVar);
    }

    public h(Context context) {
        this.e = context;
        this.f = context.getResources();
        e(true);
    }

    public h a(int i) {
        this.p = i;
        return this;
    }

    public void a(o oVar) {
        a(oVar, this.e);
    }

    public void a(o oVar, Context context) {
        this.x.add(new WeakReference<>(oVar));
        oVar.a(context, this);
        this.o = true;
    }

    public void b(o oVar) {
        Iterator<WeakReference<o>> it = this.x.iterator();
        while (it.hasNext()) {
            WeakReference<o> next = it.next();
            o oVar2 = next.get();
            if (oVar2 == null || oVar2 == oVar) {
                this.x.remove(next);
            }
        }
    }

    private void d(boolean z) {
        if (!this.x.isEmpty()) {
            g();
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                } else {
                    oVar.a(z);
                }
            }
            h();
        }
    }

    private boolean a(u uVar, o oVar) {
        boolean z = false;
        if (this.x.isEmpty()) {
            return false;
        }
        if (oVar != null) {
            z = oVar.a(uVar);
        }
        Iterator<WeakReference<o>> it = this.x.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            WeakReference<o> next = it.next();
            o oVar2 = next.get();
            if (oVar2 == null) {
                this.x.remove(next);
            } else if (!z2) {
                z2 = oVar2.a(uVar);
            }
            z = z2;
        }
    }

    private void e(Bundle bundle) {
        Parcelable c;
        if (!this.x.isEmpty()) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                } else {
                    int b2 = oVar.b();
                    if (b2 > 0 && (c = oVar.c()) != null) {
                        sparseArray.put(b2, c);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
        }
    }

    private void f(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null && !this.x.isEmpty()) {
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                } else {
                    int b2 = oVar.b();
                    if (b2 > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(b2)) != null) {
                        oVar.a(parcelable);
                    }
                }
            }
        }
    }

    public void a(Bundle bundle) {
        e(bundle);
    }

    public void b(Bundle bundle) {
        f(bundle);
    }

    public void c(Bundle bundle) {
        int size = size();
        int i = 0;
        SparseArray<Parcelable> sparseArray = null;
        while (i < size) {
            MenuItem item = getItem(i);
            View a2 = android.support.v4.view.q.a(item);
            if (a2 != null && a2.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                a2.saveHierarchyState(sparseArray);
                if (android.support.v4.view.q.d(item)) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            SparseArray<Parcelable> sparseArray2 = sparseArray;
            if (item.hasSubMenu()) {
                ((u) item.getSubMenu()).c(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(a(), sparseArray);
        }
    }

    public void d(Bundle bundle) {
        MenuItem findItem;
        if (bundle != null) {
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(a());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View a2 = android.support.v4.view.q.a(item);
                if (a2 != null && a2.getId() != -1) {
                    a2.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((u) item.getSubMenu()).d(bundle);
                }
            }
            int i2 = bundle.getInt("android:menu:expandedactionview");
            if (i2 > 0 && (findItem = findItem(i2)) != null) {
                android.support.v4.view.q.c(findItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return "android:menu:actionviewstates";
    }

    public void a(a aVar) {
        this.i = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int f = f(i3);
        j a2 = a(i, i2, i3, f, charSequence, this.p);
        if (this.q != null) {
            a2.a(this.q);
        }
        this.j.add(a(this.j, f), a2);
        a(true);
        return a2;
    }

    private j a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new j(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.f.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.f.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        j jVar = (j) a(i, i2, i3, charSequence);
        u uVar = new u(this.e, this, jVar);
        jVar.a(uVar);
        return uVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f.getString(i4));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.e.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i5 = 0; i5 < size; i5++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        a(b(i), true);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int c = c(i);
        if (c >= 0) {
            int size = this.j.size() - c;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.j.get(c).getGroupId() != i) {
                    break;
                }
                a(c, false);
                i2 = i3;
            }
            a(true);
        }
    }

    private void a(int i, boolean z) {
        if (i >= 0 && i < this.j.size()) {
            this.j.remove(i);
            if (z) {
                a(true);
            }
        }
    }

    @Override // android.view.Menu
    public void clear() {
        if (this.y != null) {
            d(this.y);
        }
        this.j.clear();
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.j.size();
        g();
        for (int i = 0; i < size; i++) {
            j jVar = this.j.get(i);
            if (jVar.getGroupId() == groupId && jVar.g() && jVar.isCheckable()) {
                jVar.b(jVar == menuItem);
            }
        }
        h();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.j.size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.j.get(i2);
            if (jVar.getGroupId() == i) {
                jVar.a(z2);
                jVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.j.size();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            j jVar = this.j.get(i2);
            i2++;
            z2 = (jVar.getGroupId() != i || !jVar.c(z)) ? z2 : true;
        }
        if (z2) {
            a(true);
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.j.size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.j.get(i2);
            if (jVar.getGroupId() == i) {
                jVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.j.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.j.get(i2);
            if (jVar.getItemId() != i) {
                if (jVar.hasSubMenu() && (findItem = jVar.getSubMenu().findItem(i)) != null) {
                    return findItem;
                }
            } else {
                return jVar;
            }
        }
        return null;
    }

    public int b(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.j.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public int c(int i) {
        return a(i, 0);
    }

    public int a(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        for (int i3 = i2; i3 < size; i3++) {
            if (this.j.get(i3).getGroupId() == i) {
                return i3;
            }
        }
        return -1;
    }

    @Override // android.view.Menu
    public int size() {
        return this.j.size();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.j.get(i);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return a(i, keyEvent) != null;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.g = z;
        a(false);
    }

    private static int f(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 < 0 || i2 >= d.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        return (d[i2] << 16) | (65535 & i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.g;
    }

    private void e(boolean z) {
        boolean z2 = true;
        if (!z || this.f.getConfiguration().keyboard == 1 || !this.f.getBoolean(R.bool.abc_config_showMenuShortcutsWhenKeyboardPresent)) {
            z2 = false;
        }
        this.h = z2;
    }

    public boolean c() {
        return this.h;
    }

    Resources d() {
        return this.f;
    }

    public Context e() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(h hVar, MenuItem menuItem) {
        return this.i != null && this.i.a(hVar, menuItem);
    }

    public void f() {
        if (this.i != null) {
            this.i.a(this);
        }
    }

    private static int a(ArrayList<j> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        j a2 = a(i, keyEvent);
        boolean z = false;
        if (a2 != null) {
            z = a(a2, i2);
        }
        if ((i2 & 2) != 0) {
            b(true);
        }
        return z;
    }

    void a(List<j> list, int i, KeyEvent keyEvent) {
        boolean b2 = b();
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.j.size();
            for (int i2 = 0; i2 < size; i2++) {
                j jVar = this.j.get(i2);
                if (jVar.hasSubMenu()) {
                    ((h) jVar.getSubMenu()).a(list, i, keyEvent);
                }
                char alphabeticShortcut = b2 ? jVar.getAlphabeticShortcut() : jVar.getNumericShortcut();
                if ((metaState & 5) == 0 && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (b2 && alphabeticShortcut == '\b' && i == 67)) && jVar.isEnabled())) {
                    list.add(jVar);
                }
            }
        }
    }

    j a(int i, KeyEvent keyEvent) {
        ArrayList<j> arrayList = this.w;
        arrayList.clear();
        a(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean b2 = b();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = arrayList.get(i2);
            char alphabeticShortcut = b2 ? jVar.getAlphabeticShortcut() : jVar.getNumericShortcut();
            if (alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) {
                return jVar;
            }
            if (alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) {
                return jVar;
            }
            if (b2 && alphabeticShortcut == '\b' && i == 67) {
                return jVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return a(findItem(i), i2);
    }

    public boolean a(MenuItem menuItem, int i) {
        return a(menuItem, (o) null, i);
    }

    public boolean a(MenuItem menuItem, o oVar, int i) {
        j jVar = (j) menuItem;
        if (jVar == null || !jVar.isEnabled()) {
            return false;
        }
        boolean b2 = jVar.b();
        android.support.v4.view.d a2 = jVar.a();
        boolean z = a2 != null && a2.g();
        if (jVar.n()) {
            boolean expandActionView = jVar.expandActionView() | b2;
            if (expandActionView) {
                b(true);
                return expandActionView;
            }
            return expandActionView;
        } else if (jVar.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                b(false);
            }
            if (!jVar.hasSubMenu()) {
                jVar.a(new u(e(), this, jVar));
            }
            u uVar = (u) jVar.getSubMenu();
            if (z) {
                a2.a(uVar);
            }
            boolean a3 = a(uVar, oVar) | b2;
            if (!a3) {
                b(true);
                return a3;
            }
            return a3;
        } else {
            if ((i & 1) == 0) {
                b(true);
            }
            return b2;
        }
    }

    public final void b(boolean z) {
        if (!this.v) {
            this.v = true;
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (it.hasNext()) {
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                } else {
                    oVar.a(this, z);
                }
            }
            this.v = false;
        }
    }

    @Override // android.view.Menu
    public void close() {
        b(true);
    }

    public void a(boolean z) {
        if (!this.r) {
            if (z) {
                this.l = true;
                this.o = true;
            }
            d(z);
            return;
        }
        this.s = true;
        if (z) {
            this.t = true;
        }
    }

    public void g() {
        if (!this.r) {
            this.r = true;
            this.s = false;
            this.t = false;
        }
    }

    public void h() {
        this.r = false;
        if (this.s) {
            this.s = false;
            a(this.t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar) {
        this.l = true;
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(j jVar) {
        this.o = true;
        a(true);
    }

    public ArrayList<j> i() {
        if (!this.l) {
            return this.k;
        }
        this.k.clear();
        int size = this.j.size();
        for (int i = 0; i < size; i++) {
            j jVar = this.j.get(i);
            if (jVar.isVisible()) {
                this.k.add(jVar);
            }
        }
        this.l = false;
        this.o = true;
        return this.k;
    }

    public void j() {
        boolean a2;
        ArrayList<j> i = i();
        if (this.o) {
            Iterator<WeakReference<o>> it = this.x.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                    a2 = z;
                } else {
                    a2 = oVar.a() | z;
                }
                z = a2;
            }
            if (z) {
                this.m.clear();
                this.n.clear();
                int size = i.size();
                for (int i2 = 0; i2 < size; i2++) {
                    j jVar = i.get(i2);
                    if (jVar.j()) {
                        this.m.add(jVar);
                    } else {
                        this.n.add(jVar);
                    }
                }
            } else {
                this.m.clear();
                this.n.clear();
                this.n.addAll(i());
            }
            this.o = false;
        }
    }

    public ArrayList<j> k() {
        j();
        return this.m;
    }

    public ArrayList<j> l() {
        j();
        return this.n;
    }

    public void clearHeader() {
        this.b = null;
        this.f719a = null;
        this.c = null;
        a(false);
    }

    private void a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources d2 = d();
        if (view != null) {
            this.c = view;
            this.f719a = null;
            this.b = null;
        } else {
            if (i > 0) {
                this.f719a = d2.getText(i);
            } else if (charSequence != null) {
                this.f719a = charSequence;
            }
            if (i2 > 0) {
                this.b = android.support.v4.content.b.a(e(), i2);
            } else if (drawable != null) {
                this.b = drawable;
            }
            this.c = null;
        }
        a(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h a(CharSequence charSequence) {
        a(0, charSequence, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h d(int i) {
        a(i, null, 0, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h a(Drawable drawable) {
        a(0, null, 0, drawable, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h e(int i) {
        a(0, null, i, null, null);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h a(View view) {
        a(0, null, 0, null, view);
        return this;
    }

    public CharSequence m() {
        return this.f719a;
    }

    public Drawable n() {
        return this.b;
    }

    public View o() {
        return this.c;
    }

    public h p() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q() {
        return this.u;
    }

    public boolean c(j jVar) {
        boolean z = false;
        if (!this.x.isEmpty()) {
            g();
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    z = z2;
                    break;
                }
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                    z = z2;
                } else {
                    z = oVar.a(this, jVar);
                    if (z) {
                        break;
                    }
                }
            }
            h();
            if (z) {
                this.y = jVar;
            }
        }
        return z;
    }

    public boolean d(j jVar) {
        boolean z = false;
        if (!this.x.isEmpty() && this.y == jVar) {
            g();
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    z = z2;
                    break;
                }
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                    z = z2;
                } else {
                    z = oVar.b(this, jVar);
                    if (z) {
                        break;
                    }
                }
            }
            h();
            if (z) {
                this.y = null;
            }
        }
        return z;
    }

    public j r() {
        return this.y;
    }

    public void c(boolean z) {
        this.z = z;
    }
}
