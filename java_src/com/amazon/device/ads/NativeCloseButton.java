package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.amazon.device.ads.LayoutFactory;
import com.amazon.device.ads.ThreadUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NativeCloseButton {
    private static final int CLOSE_BUTTON_SIZE_DP = 60;
    private static final int CLOSE_BUTTON_TAP_TARGET_SIZE_DP = 80;
    private static final String CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON = "nativeCloseButton";
    private static final String CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_CONTAINER = "nativeCloseButtonContainer";
    private static final String CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_IMAGE = "nativeCloseButtonImage";
    private final AdCloser adCloser;
    private ViewGroup closeButton;
    private ViewGroup closeButtonContainer;
    private ImageView closeButtonImage;
    private boolean hasNativeCloseButton;
    private final ImageViewFactory imageViewFactory;
    private final LayoutFactory layoutFactory;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final ViewGroup viewGroup;

    public NativeCloseButton(ViewGroup viewGroup, AdCloser adCloser) {
        this(viewGroup, adCloser, ThreadUtils.getThreadRunner(), new LayoutFactory(), new ImageButtonFactory());
    }

    NativeCloseButton(ViewGroup viewGroup, AdCloser adCloser, ThreadUtils.ThreadRunner threadRunner, LayoutFactory layoutFactory, ImageViewFactory imageViewFactory) {
        this.hasNativeCloseButton = false;
        this.viewGroup = viewGroup;
        this.adCloser = adCloser;
        this.threadRunner = threadRunner;
        this.layoutFactory = layoutFactory;
        this.imageViewFactory = imageViewFactory;
    }

    private Context getContext() {
        return this.viewGroup.getContext();
    }

    public void enable(final boolean z, final RelativePosition relativePosition) {
        this.hasNativeCloseButton = true;
        if (this.closeButton != null && this.closeButtonImage != null && this.viewGroup.equals(this.closeButton.getParent()) && (this.closeButton.equals(this.closeButtonImage.getParent()) || !z)) {
            if (!z) {
                hideImage();
                return;
            }
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        final int i = (int) ((60.0f * displayMetrics.density) + 0.5f);
        final int i2 = (int) ((80.0f * displayMetrics.density) + 0.5f);
        this.threadRunner.executeAsyncTask(new ThreadUtils.MobileAdsAsyncTask<Void, Void, Void>() { // from class: com.amazon.device.ads.NativeCloseButton.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.amazon.device.ads.ThreadUtils.MobileAdsAsyncTask, android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                NativeCloseButton.this.createButtonIfNeeded(i2);
                return null;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.amazon.device.ads.ThreadUtils.MobileAdsAsyncTask, android.os.AsyncTask
            public void onPostExecute(Void r6) {
                NativeCloseButton.this.addCloseButtonToTapTargetIfNeeded(z, relativePosition, i, i2);
            }
        }, new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createButtonIfNeeded(int i) {
        boolean z = false;
        synchronized (this) {
            if (this.closeButton == null) {
                this.closeButton = this.layoutFactory.createLayout(getContext(), LayoutFactory.LayoutType.RELATIVE_LAYOUT, CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON);
                this.closeButtonImage = this.imageViewFactory.mo31createImageView(getContext(), CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_IMAGE);
                z = true;
            }
        }
        if (z) {
            final BitmapDrawable createBitmapDrawable = this.imageViewFactory.createBitmapDrawable(getContext().getResources(), Assets.getInstance().getFilePath(Assets.CLOSE_NORMAL));
            final BitmapDrawable createBitmapDrawable2 = this.imageViewFactory.createBitmapDrawable(getContext().getResources(), Assets.getInstance().getFilePath(Assets.CLOSE_PRESSED));
            this.closeButtonImage.setImageDrawable(createBitmapDrawable);
            this.closeButtonImage.setScaleType(ImageView.ScaleType.FIT_CENTER);
            this.closeButtonImage.setBackgroundDrawable(null);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.amazon.device.ads.NativeCloseButton.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NativeCloseButton.this.closeAd();
                }
            };
            this.closeButtonImage.setOnClickListener(onClickListener);
            this.closeButton.setOnClickListener(onClickListener);
            View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.amazon.device.ads.NativeCloseButton.3
                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    NativeCloseButton.this.animateCloseButton(motionEvent, createBitmapDrawable, createBitmapDrawable2);
                    return false;
                }
            };
            this.closeButton.setOnTouchListener(onTouchListener);
            this.closeButtonImage.setOnTouchListener(onTouchListener);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
            layoutParams.addRule(11);
            layoutParams.addRule(10);
            this.closeButtonContainer = this.layoutFactory.createLayout(getContext(), LayoutFactory.LayoutType.RELATIVE_LAYOUT, CONTENT_DESCRIPTION_NATIVE_CLOSE_BUTTON_CONTAINER);
            this.closeButtonContainer.addView(this.closeButton, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeAd() {
        this.adCloser.closeAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateCloseButton(MotionEvent motionEvent, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
        switch (motionEvent.getAction()) {
            case 0:
                this.closeButtonImage.setImageDrawable(bitmapDrawable2);
                return;
            case 1:
                this.closeButtonImage.setImageDrawable(bitmapDrawable);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InlinedApi"})
    public void addCloseButtonToTapTargetIfNeeded(boolean z, RelativePosition relativePosition, int i, int i2) {
        if (z && !this.closeButton.equals(this.closeButtonImage.getParent())) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
            layoutParams.addRule(13);
            this.closeButton.addView(this.closeButtonImage, layoutParams);
        } else if (!z && this.closeButton.equals(this.closeButtonImage.getParent())) {
            this.closeButton.removeView(this.closeButtonImage);
        }
        if (!this.viewGroup.equals(this.closeButtonContainer.getParent())) {
            this.viewGroup.addView(this.closeButtonContainer, new FrameLayout.LayoutParams(-1, -1));
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        if (relativePosition == null) {
            relativePosition = RelativePosition.TOP_RIGHT;
        }
        switch (relativePosition) {
            case BOTTOM_CENTER:
                layoutParams2.addRule(12);
                layoutParams2.addRule(14);
                break;
            case BOTTOM_LEFT:
                layoutParams2.addRule(12);
                layoutParams2.addRule(9);
                break;
            case BOTTOM_RIGHT:
                layoutParams2.addRule(12);
                layoutParams2.addRule(11);
                break;
            case CENTER:
                layoutParams2.addRule(13);
                break;
            case TOP_CENTER:
                layoutParams2.addRule(10);
                layoutParams2.addRule(14);
                break;
            case TOP_LEFT:
                layoutParams2.addRule(10);
                layoutParams2.addRule(9);
                break;
            case TOP_RIGHT:
                layoutParams2.addRule(10);
                layoutParams2.addRule(11);
                break;
            default:
                layoutParams2.addRule(10);
                layoutParams2.addRule(11);
                break;
        }
        this.closeButton.setLayoutParams(layoutParams2);
        this.closeButtonContainer.bringToFront();
    }

    public void remove() {
        this.hasNativeCloseButton = false;
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.NativeCloseButton.4
            @Override // java.lang.Runnable
            public void run() {
                NativeCloseButton.this.removeNativeCloseButtonOnMainThread();
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNativeCloseButtonOnMainThread() {
        this.viewGroup.removeView(this.closeButtonContainer);
    }

    public void showImage(boolean z) {
        if (this.hasNativeCloseButton && this.closeButton != null) {
            if (z) {
                enable(true, null);
            } else {
                hideImage();
            }
        }
    }

    private void hideImage() {
        this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.NativeCloseButton.5
            @Override // java.lang.Runnable
            public void run() {
                NativeCloseButton.this.hideImageOnMainThread();
            }
        }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideImageOnMainThread() {
        this.closeButton.removeAllViews();
    }
}
