package android.support.v7.widget;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
/* compiled from: ActionBarBackgroundDrawable.java */
@TargetApi(9)
/* loaded from: classes.dex */
class b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    final ActionBarContainer f891a;

    public b(ActionBarContainer actionBarContainer) {
        this.f891a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f891a.d) {
            if (this.f891a.c != null) {
                this.f891a.c.draw(canvas);
                return;
            }
            return;
        }
        if (this.f891a.f732a != null) {
            this.f891a.f732a.draw(canvas);
        }
        if (this.f891a.b != null && this.f891a.e) {
            this.f891a.b.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }
}
