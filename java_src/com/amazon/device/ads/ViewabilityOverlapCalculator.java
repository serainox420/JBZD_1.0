package com.amazon.device.ads;

import android.annotation.TargetApi;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ListView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ViewabilityOverlapCalculator {
    private static final String LOGTAG = ViewabilityOverlapCalculator.class.getSimpleName();
    private final AdController adController;
    private final MobileAdsLogger logger;
    private View rootView;
    private Rect visibleAdRectangle;

    public ViewabilityOverlapCalculator(AdController adController) {
        this(adController, new MobileAdsLoggerFactory());
    }

    ViewabilityOverlapCalculator(AdController adController, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.adController = adController;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
    }

    public float calculateViewablePercentage(View view, Rect rect) {
        int width = view.getWidth() * view.getHeight();
        if (width == BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        this.visibleAdRectangle = rect;
        if (this.rootView == null) {
            this.rootView = this.adController.getRootView();
        }
        ArrayList arrayList = new ArrayList();
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null) {
            this.logger.d("AdContainer is null");
            return BitmapDescriptorFactory.HUE_RED;
        }
        findOverlapppingViews(new Rectangle(rect), viewGroup.indexOfChild(view) + 1, viewGroup, arrayList, true);
        int width2 = (rect.width() * rect.height()) - getTotalAreaOfSetOfRectangles(arrayList);
        this.logger.d("Visible area: %s , Total area: %s", Integer.valueOf(width2), Integer.valueOf(width));
        return (width2 / width) * 100.0f;
    }

    @TargetApi(11)
    private void findOverlapppingViews(Rectangle rectangle, int i, ViewGroup viewGroup, List<Rectangle> list, boolean z) {
        ViewParent parent;
        if (viewGroup != null && z && AndroidTargetUtils.isAdTransparent(viewGroup)) {
            list.add(new Rectangle(this.visibleAdRectangle));
            return;
        }
        while (i < viewGroup.getChildCount()) {
            View childAt = viewGroup.getChildAt(i);
            boolean z2 = childAt != null && (childAt instanceof ListView);
            if (childAt.isShown() && (!AndroidTargetUtils.isAtLeastAndroidAPI(11) || childAt.getAlpha() != BitmapDescriptorFactory.HUE_RED)) {
                Rectangle viewRectangle = getViewRectangle(childAt);
                if (viewRectangle.intersect(rectangle)) {
                    if (!z2 && (childAt instanceof ViewGroup)) {
                        findOverlapppingViews(rectangle, 0, (ViewGroup) childAt, list, false);
                    } else {
                        this.logger.d("Overlap found with View: %s", childAt);
                        list.add(viewRectangle);
                    }
                }
            }
            i++;
        }
        if (z && !this.rootView.equals(viewGroup) && (parent = viewGroup.getParent()) != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup2 = (ViewGroup) parent;
            findOverlapppingViews(rectangle, viewGroup2.indexOfChild(viewGroup) + 1, viewGroup2, list, true);
        }
    }

    private Rectangle getViewRectangle(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Rectangle(iArr[0], iArr[1], view.getWidth() + iArr[0], view.getHeight() + iArr[1]);
    }

    protected int getTotalAreaOfSetOfRectangles(List<Rectangle> list) {
        int[] iArr = new int[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            Rectangle rectangle = list.get(i);
            int i2 = i * 2;
            iArr[i2] = rectangle.getLeft();
            iArr[i2 + 1] = rectangle.getRight();
        }
        Arrays.sort(iArr);
        Collections.sort(list);
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length - 1; i4++) {
            int i5 = iArr[i4];
            int i6 = iArr[i4 + 1];
            if (i5 != i6) {
                Range range = new Range(i5, i6);
                i3 += computeArea(range, getYRanges(range, list));
            }
        }
        return i3;
    }

    private int computeArea(Range range, List<Range> list) {
        int i = range.high - range.low;
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Range range2 = list.get(i3);
            i2 += (range2.high - range2.low) * i;
        }
        return i2;
    }

    protected List<Range> getYRanges(Range range, List<Rectangle> list) {
        Range range2;
        ArrayList arrayList = new ArrayList();
        Range range3 = null;
        int i = 0;
        while (i < list.size()) {
            Rectangle rectangle = list.get(i);
            if (range.low >= rectangle.getRight() || range.high <= rectangle.getLeft()) {
                range2 = range3;
            } else {
                Range range4 = new Range(rectangle.getTop(), rectangle.getBottom());
                if (range3 == null) {
                    arrayList.add(range4);
                    range2 = range4;
                } else if (range4.isOverlap(range3)) {
                    range3.mergeRange(range4);
                    range2 = range3;
                } else {
                    arrayList.add(range4);
                    range2 = range4;
                }
            }
            i++;
            range3 = range2;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Range {
        int high;
        int low;

        public Range(int i, int i2) {
            this.low = i;
            this.high = i2;
        }

        public boolean isOverlap(Range range) {
            return this.low <= range.high && this.high >= range.low;
        }

        public void mergeRange(Range range) {
            this.low = this.low > range.low ? range.low : this.low;
            this.high = this.high < range.high ? range.high : this.high;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Rectangle implements Comparable<Rectangle> {
        private final Rect rect;

        public Rectangle(Rect rect) {
            this.rect = rect;
        }

        public Rectangle(int i, int i2, int i3, int i4) {
            this.rect = new Rect();
            this.rect.left = i;
            this.rect.top = i2;
            this.rect.right = i3;
            this.rect.bottom = i4;
        }

        public int getLeft() {
            return this.rect.left;
        }

        public int getTop() {
            return this.rect.top;
        }

        public int getRight() {
            return this.rect.right;
        }

        public int getBottom() {
            return this.rect.bottom;
        }

        public boolean intersect(Rectangle rectangle) {
            if (this.rect.width() == 0 || this.rect.height() == 0) {
                return false;
            }
            return this.rect.intersect(rectangle.rect);
        }

        public boolean contains(Rectangle rectangle) {
            return this.rect.contains(rectangle.rect);
        }

        public int getWidth() {
            return this.rect.width();
        }

        public int getHeight() {
            return this.rect.height();
        }

        @Override // java.lang.Comparable
        public int compareTo(Rectangle rectangle) {
            if (this.rect.top < rectangle.rect.top) {
                return 1;
            }
            if (this.rect.top == rectangle.rect.top) {
                return 0;
            }
            return -1;
        }
    }
}
