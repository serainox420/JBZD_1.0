package android.support.v7.widget;

import android.annotation.TargetApi;
import android.graphics.Outline;
/* compiled from: ActionBarBackgroundDrawableV21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class c extends b {
    public c(ActionBarContainer actionBarContainer) {
        super(actionBarContainer);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f891a.d) {
            if (this.f891a.c != null) {
                this.f891a.c.getOutline(outline);
            }
        } else if (this.f891a.f732a != null) {
            this.f891a.f732a.getOutline(outline);
        }
    }
}
