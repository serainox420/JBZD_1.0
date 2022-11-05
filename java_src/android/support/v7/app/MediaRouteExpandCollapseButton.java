package android.support.v7.app;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.AnimationDrawable;
import android.support.v7.mediarouter.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MediaRouteExpandCollapseButton extends ImageButton {

    /* renamed from: a  reason: collision with root package name */
    final AnimationDrawable f560a;
    final AnimationDrawable b;
    final String c;
    final String d;
    boolean e;
    View.OnClickListener f;

    public MediaRouteExpandCollapseButton(Context context) {
        this(context, null);
    }

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f560a = (AnimationDrawable) android.support.v4.content.b.a(context, R.drawable.mr_group_expand);
        this.b = (AnimationDrawable) android.support.v4.content.b.a(context, R.drawable.mr_group_collapse);
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(t.c(context, i), PorterDuff.Mode.SRC_IN);
        this.f560a.setColorFilter(porterDuffColorFilter);
        this.b.setColorFilter(porterDuffColorFilter);
        this.c = context.getString(R.string.mr_controller_expand_group);
        this.d = context.getString(R.string.mr_controller_collapse_group);
        setImageDrawable(this.f560a.getFrame(0));
        setContentDescription(this.c);
        super.setOnClickListener(new View.OnClickListener() { // from class: android.support.v7.app.MediaRouteExpandCollapseButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MediaRouteExpandCollapseButton.this.e = !MediaRouteExpandCollapseButton.this.e;
                if (MediaRouteExpandCollapseButton.this.e) {
                    MediaRouteExpandCollapseButton.this.setImageDrawable(MediaRouteExpandCollapseButton.this.f560a);
                    MediaRouteExpandCollapseButton.this.f560a.start();
                    MediaRouteExpandCollapseButton.this.setContentDescription(MediaRouteExpandCollapseButton.this.d);
                } else {
                    MediaRouteExpandCollapseButton.this.setImageDrawable(MediaRouteExpandCollapseButton.this.b);
                    MediaRouteExpandCollapseButton.this.b.start();
                    MediaRouteExpandCollapseButton.this.setContentDescription(MediaRouteExpandCollapseButton.this.c);
                }
                if (MediaRouteExpandCollapseButton.this.f != null) {
                    MediaRouteExpandCollapseButton.this.f.onClick(view);
                }
            }
        });
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f = onClickListener;
    }
}
