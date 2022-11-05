package pl.jbzd.core.ui.view.toggleswitch;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes3.dex */
public class ToggleSwitch extends BaseToggleSwitch {

    /* renamed from: a  reason: collision with root package name */
    private int f6129a;

    public ToggleSwitch(Context context) {
        this(context, null);
    }

    public ToggleSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public int getCheckedTogglePosition() {
        return this.f6129a;
    }

    @Override // pl.jbzd.core.ui.view.toggleswitch.BaseToggleSwitch
    protected void e(int i) {
        setCheckedTogglePosition(i);
    }

    public void setCheckedTogglePosition(int i) {
        b();
        a(i);
        setSeparatorVisibility(i);
        this.f6129a = i;
        f(i);
    }

    private void setSeparatorVisibility(int i) {
        for (int i2 = 0; i2 < getToggleSwitchesContainer().getChildCount() - 1; i2++) {
            a aVar = new a(getToggleSwitchesContainer().getChildAt(i2));
            if (i2 == i || i2 == i - 1) {
                aVar.e();
            } else {
                aVar.d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pl.jbzd.core.ui.view.toggleswitch.BaseToggleSwitch
    public void a() {
        super.a();
        setCheckedTogglePosition(0);
    }

    @Override // pl.jbzd.core.ui.view.toggleswitch.BaseToggleSwitch
    protected boolean c(int i) {
        return this.f6129a == i;
    }
}
