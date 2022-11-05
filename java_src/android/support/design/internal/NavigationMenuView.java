package android.support.design.internal;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.p;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
@RestrictTo
/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements p {
    public NavigationMenuView(Context context) {
        this(context, null);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutManager(new LinearLayoutManager(context, 1, false));
    }

    @Override // android.support.v7.view.menu.p
    public void a(h hVar) {
    }

    public int getWindowAnimations() {
        return 0;
    }
}
