package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.transition.y;
import android.view.View;
import android.view.ViewGroup;
import com.flurry.android.AdCreative;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Map;
/* compiled from: ChangeBoundsPort.java */
@TargetApi(14)
/* loaded from: classes.dex */
class f extends y {
    private static final String[] w = {"android:changeBounds:bounds", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static k x = new k();

    /* renamed from: a  reason: collision with root package name */
    int[] f174a = new int[2];
    boolean b = false;
    boolean c = false;

    @Override // android.support.transition.y
    public String[] a() {
        return w;
    }

    private void c(ae aeVar) {
        View view = aeVar.b;
        aeVar.f165a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        aeVar.f165a.put("android:changeBounds:parent", aeVar.b.getParent());
        aeVar.b.getLocationInWindow(this.f174a);
        aeVar.f165a.put("android:changeBounds:windowX", Integer.valueOf(this.f174a[0]));
        aeVar.f165a.put("android:changeBounds:windowY", Integer.valueOf(this.f174a[1]));
    }

    @Override // android.support.transition.y
    public void a(ae aeVar) {
        c(aeVar);
    }

    @Override // android.support.transition.y
    public void b(ae aeVar) {
        c(aeVar);
    }

    @Override // android.support.transition.y
    public Animator a(final ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        int i;
        int i2;
        int i3;
        int i4;
        if (aeVar == null || aeVar2 == null) {
            return null;
        }
        Map<String, Object> map = aeVar.f165a;
        Map<String, Object> map2 = aeVar2.f165a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view = aeVar2.b;
        boolean z = viewGroup2 == viewGroup3 || viewGroup2.getId() == viewGroup3.getId();
        if (!this.c || z) {
            Rect rect = (Rect) aeVar.f165a.get("android:changeBounds:bounds");
            Rect rect2 = (Rect) aeVar2.f165a.get("android:changeBounds:bounds");
            int i5 = rect.left;
            int i6 = rect2.left;
            int i7 = rect.top;
            int i8 = rect2.top;
            int i9 = rect.right;
            int i10 = rect2.right;
            int i11 = rect.bottom;
            int i12 = rect2.bottom;
            int i13 = i9 - i5;
            int i14 = i11 - i7;
            int i15 = i10 - i6;
            int i16 = i12 - i8;
            int i17 = 0;
            if (i13 != 0 && i14 != 0 && i15 != 0 && i16 != 0) {
                if (i5 != i6) {
                    i17 = 1;
                }
                if (i7 != i8) {
                    i17++;
                }
                if (i9 != i10) {
                    i17++;
                }
                if (i11 != i12) {
                    i17++;
                }
            }
            if (i17 > 0) {
                if (!this.b) {
                    PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[i17];
                    if (i5 != i6) {
                        view.setLeft(i5);
                    }
                    if (i7 != i8) {
                        view.setTop(i7);
                    }
                    if (i9 != i10) {
                        view.setRight(i9);
                    }
                    if (i11 != i12) {
                        view.setBottom(i11);
                    }
                    if (i5 == i6) {
                        i2 = 0;
                    } else {
                        i2 = 1;
                        propertyValuesHolderArr[0] = PropertyValuesHolder.ofInt(AdCreative.kAlignmentLeft, i5, i6);
                    }
                    if (i7 != i8) {
                        i3 = i2 + 1;
                        propertyValuesHolderArr[i2] = PropertyValuesHolder.ofInt(AdCreative.kAlignmentTop, i7, i8);
                    } else {
                        i3 = i2;
                    }
                    if (i9 != i10) {
                        i4 = i3 + 1;
                        propertyValuesHolderArr[i3] = PropertyValuesHolder.ofInt(AdCreative.kAlignmentRight, i9, i10);
                    } else {
                        i4 = i3;
                    }
                    if (i11 != i12) {
                        int i18 = i4 + 1;
                        propertyValuesHolderArr[i4] = PropertyValuesHolder.ofInt(AdCreative.kAlignmentBottom, i11, i12);
                    }
                    ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, propertyValuesHolderArr);
                    if (view.getParent() instanceof ViewGroup) {
                        ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                        a(new y.c() { // from class: android.support.transition.f.1

                            /* renamed from: a  reason: collision with root package name */
                            boolean f175a = false;

                            @Override // android.support.transition.y.c, android.support.transition.y.b
                            public void a(y yVar) {
                                if (!this.f175a) {
                                }
                            }

                            @Override // android.support.transition.y.c, android.support.transition.y.b
                            public void b(y yVar) {
                            }

                            @Override // android.support.transition.y.c, android.support.transition.y.b
                            public void c(y yVar) {
                            }
                        });
                    }
                    return ofPropertyValuesHolder;
                }
                if (i13 != i15) {
                    view.setRight(Math.max(i13, i15) + i6);
                }
                if (i14 != i16) {
                    view.setBottom(Math.max(i14, i16) + i8);
                }
                if (i5 != i6) {
                    view.setTranslationX(i5 - i6);
                }
                if (i7 != i8) {
                    view.setTranslationY(i7 - i8);
                }
                float f = i6 - i5;
                float f2 = i8 - i7;
                int i19 = i15 - i13;
                int i20 = i16 - i14;
                int i21 = 0;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    i21 = 1;
                }
                if (f2 != BitmapDescriptorFactory.HUE_RED) {
                    i21++;
                }
                if (i19 != 0 || i20 != 0) {
                    i21++;
                }
                PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[i21];
                if (f == BitmapDescriptorFactory.HUE_RED) {
                    i = 0;
                } else {
                    i = 1;
                    propertyValuesHolderArr2[0] = PropertyValuesHolder.ofFloat("translationX", view.getTranslationX(), BitmapDescriptorFactory.HUE_RED);
                }
                if (f2 != BitmapDescriptorFactory.HUE_RED) {
                    int i22 = i + 1;
                    propertyValuesHolderArr2[i] = PropertyValuesHolder.ofFloat("translationY", view.getTranslationY(), BitmapDescriptorFactory.HUE_RED);
                }
                if (i19 != 0 || i20 != 0) {
                    new Rect(0, 0, i13, i14);
                    new Rect(0, 0, i15, i16);
                }
                ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(view, propertyValuesHolderArr2);
                if (view.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup5 = (ViewGroup) view.getParent();
                    a(new y.c() { // from class: android.support.transition.f.2

                        /* renamed from: a  reason: collision with root package name */
                        boolean f176a = false;

                        @Override // android.support.transition.y.c, android.support.transition.y.b
                        public void a(y yVar) {
                            if (!this.f176a) {
                            }
                        }

                        @Override // android.support.transition.y.c, android.support.transition.y.b
                        public void b(y yVar) {
                        }

                        @Override // android.support.transition.y.c, android.support.transition.y.b
                        public void c(y yVar) {
                        }
                    });
                }
                ofPropertyValuesHolder2.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.f.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }
                });
                return ofPropertyValuesHolder2;
            }
        } else {
            int intValue = ((Integer) aeVar.f165a.get("android:changeBounds:windowX")).intValue();
            int intValue2 = ((Integer) aeVar.f165a.get("android:changeBounds:windowY")).intValue();
            int intValue3 = ((Integer) aeVar2.f165a.get("android:changeBounds:windowX")).intValue();
            int intValue4 = ((Integer) aeVar2.f165a.get("android:changeBounds:windowY")).intValue();
            if (intValue != intValue3 || intValue2 != intValue4) {
                viewGroup.getLocationInWindow(this.f174a);
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
                view.draw(new Canvas(createBitmap));
                final BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
                view.setVisibility(4);
                ah.d(viewGroup).a(bitmapDrawable);
                ObjectAnimator ofObject = ObjectAnimator.ofObject(bitmapDrawable, "bounds", x, new Rect(intValue - this.f174a[0], intValue2 - this.f174a[1], (intValue - this.f174a[0]) + view.getWidth(), (intValue2 - this.f174a[1]) + view.getHeight()), new Rect(intValue3 - this.f174a[0], intValue4 - this.f174a[1], (intValue3 - this.f174a[0]) + view.getWidth(), (intValue4 - this.f174a[1]) + view.getHeight()));
                ofObject.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.f.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ah.d(viewGroup).b(bitmapDrawable);
                        view.setVisibility(0);
                    }
                });
                return ofObject;
            }
        }
        return null;
    }
}
