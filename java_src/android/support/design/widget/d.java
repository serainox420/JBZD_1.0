package android.support.design.widget;

import android.annotation.TargetApi;
import android.graphics.Outline;
/* compiled from: CircularBorderDrawableLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class d extends c {
    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        copyBounds(this.b);
        outline.setOval(this.b);
    }
}
