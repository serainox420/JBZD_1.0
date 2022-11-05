package pl.jbzd.a;

import android.app.Activity;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GoogleApiAvailability;
import com.intentsoftware.addapptr.AATKit;
import java.util.ArrayList;
import java.util.List;
import pl.jbzd.app.MyApplication;
/* compiled from: AdsManager.java */
/* loaded from: classes.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private static b f5880a = null;
    private int b;
    private List<Integer> c;
    private SparseBooleanArray d = new SparseBooleanArray();
    private SparseBooleanArray e = new SparseBooleanArray();
    private int f;
    private int g;
    private int h;

    public static b a(MyApplication myApplication) {
        if (f5880a == null) {
            f5880a = new b(myApplication);
        }
        return f5880a;
    }

    public static b a() {
        return f5880a;
    }

    private b(MyApplication myApplication) {
        this.b = 0;
        this.c = new ArrayList();
        this.f = -1;
        this.g = -1;
        this.h = -1;
        this.c = myApplication.b();
        int size = this.c.size();
        this.h = size;
        this.g = size;
        this.f = size;
        this.b = size;
        for (Integer num : this.c) {
            int intValue = num.intValue();
            this.e.put(intValue, false);
            this.d.put(intValue, false);
        }
        myApplication.a((a) this);
    }

    public void a(Activity activity) {
        d(0);
    }

    public void b(Activity activity) {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(activity) != 0) {
            GoogleApiAvailability.getInstance().getErrorDialog(activity, GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(activity), 4).show();
        }
        AATKit.onActivityResume(activity);
        if (this.b > 1) {
            int i = -1;
            if (this.f >= 0 && this.f < this.b) {
                i = this.c.get(this.f).intValue();
                AATKit.startPlacementAutoReload(i, 30);
            }
            int i2 = i;
            for (Integer num : this.c) {
                int intValue = num.intValue();
                if (intValue != i2) {
                    AATKit.stopPlacementAutoReload(intValue);
                }
            }
            return;
        }
        AATKit.startPlacementAutoReload(this.c.get(0).intValue(), 30);
    }

    public void c(Activity activity) {
        for (Integer num : this.c) {
            AATKit.stopPlacementAutoReload(num.intValue());
        }
        AATKit.onActivityPause(activity);
    }

    public void d(Activity activity) {
    }

    public void e(Activity activity) {
    }

    public View b() {
        if (this.b > 1) {
            for (Integer num : this.c) {
                AATKit.stopPlacementAutoReload(num.intValue());
            }
            if (this.b == 2) {
                int i = this.f;
                this.g = i;
                this.h = i;
            } else {
                this.h = this.g;
                this.g = this.f;
            }
            if (this.h >= 0 && this.h < this.b) {
                d(this.h);
            }
        }
        int i2 = this.f + 1;
        this.f = i2;
        if (i2 >= this.b || this.f < 0) {
            this.f = 0;
        }
        AATKit.startPlacementAutoReload(this.c.get(this.f).intValue(), 30);
        return c(this.f);
    }

    private View c(int i) {
        View placementView = AATKit.getPlacementView(((i < 0 || i >= this.b) ? this.c.get(0) : this.c.get(i)).intValue());
        if (placementView != null) {
            if (placementView.getParent() != null) {
                ((ViewGroup) placementView.getParent()).removeView(placementView);
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            placementView.setLayoutParams(layoutParams);
        }
        return placementView;
    }

    private boolean d(int i) {
        if (i < 0 || i >= this.b || this.e.get(this.c.get(i).intValue())) {
            return false;
        }
        this.e.put(this.c.get(i).intValue(), true);
        AATKit.reloadPlacement(i);
        return true;
    }

    private void c() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.b) {
                if (this.d.get(this.c.get(i2).intValue()) || !d(i2)) {
                    i = i2 + 1;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // pl.jbzd.a.a
    public void a(int i) {
        this.d.put(i, true);
        this.e.put(i, false);
        c();
    }

    @Override // pl.jbzd.a.a
    public void b(int i) {
        int i2 = 0;
        this.e.put(i, false);
        while (true) {
            int i3 = i2;
            if (i3 < this.b) {
                if (i != this.c.get(i3).intValue()) {
                    i2 = i3 + 1;
                } else {
                    d(i3);
                    return;
                }
            } else {
                return;
            }
        }
    }
}
