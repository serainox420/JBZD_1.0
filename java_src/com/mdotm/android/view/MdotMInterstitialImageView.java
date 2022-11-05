package com.mdotm.android.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.drive.DriveFile;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes3.dex */
class MdotMInterstitialImageView extends RelativeLayout {
    private static final int HIGHLIGHT_BACKGROUND_COLOR = -1147097;
    private static final int HIGHLIGHT_COLOR = -19456;
    private ProgressBar activityIndicator;
    private String adLandingUrl;
    public boolean adLoadSuccess;
    private Drawable adSelectedBackground;
    private boolean adSelectionInProgress;
    private int backgroundColor;
    private Drawable defaultBackground;
    Handler handler;
    Bitmap imagrBitmap;
    private boolean isAdClicked;
    private int launchType;
    private MdotMAdActionListener mAdClickListener;
    private WebView webView;

    public MdotMInterstitialImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.backgroundColor = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.webView = null;
        this.isAdClicked = false;
    }

    public MdotMInterstitialImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MdotMInterstitialImageView(Context context, MdotMAdResponse mdotMAdResponse, MdotMAdActionListener mdotMAdActionListener) {
        super(context);
        this.backgroundColor = DrawableConstants.CtaButton.BACKGROUND_COLOR;
        this.webView = null;
        this.isAdClicked = false;
        this.handler = new Handler();
        this.launchType = mdotMAdResponse.getLaunchType();
        this.webView = new WebView(context);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.setWebViewClient(new AnonymousClass1());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        setLayoutParams(layoutParams);
        this.mAdClickListener = mdotMAdActionListener;
        setFocusable(true);
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!MdotMInterstitialImageView.this.isAdClicked) {
                    MdotMInterstitialImageView.this.isAdClicked = true;
                    MdotMInterstitialImageView.this.setClickable(false);
                    MdotMInterstitialImageView.this.clicked(MdotMInterstitialImageView.this.getContext());
                }
            }
        });
        setAdSelectionInProgress(false);
        try {
            initializeAdView(mdotMAdResponse, context);
        } catch (Exception e) {
            MdotMLogger.e(this, "Exception initializing interstitial adview");
            this.adLoadSuccess = false;
        }
    }

    /* renamed from: com.mdotm.android.view.MdotMInterstitialImageView$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends WebViewClient {
        Runnable run = new Runnable() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.1.1
            @Override // java.lang.Runnable
            public void run() {
                if (AnonymousClass1.this.timeout) {
                    MdotMLogger.e(this, "timeout loading landing url");
                    MdotMInterstitialImageView.this.webView.stopLoading();
                    MdotMInterstitialImageView.this.adNetworkCompleted();
                    AnonymousClass1.this.timeout = false;
                }
            }
        };
        boolean timeout;

        AnonymousClass1() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MdotMLogger.i(this, "started Loading url " + str);
            if (MdotMInterstitialImageView.this.isAdSelectionInProgress()) {
                this.timeout = true;
                MdotMInterstitialImageView.this.handler.removeCallbacks(this.run);
                MdotMInterstitialImageView.this.handler.postDelayed(this.run, 15000L);
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MdotMLogger.i(this, "returned url " + str);
            if (str != null && str.startsWith("market://")) {
                try {
                    webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    MdotMInterstitialImageView.this.mAdClickListener.leaveApplication();
                } catch (Exception e) {
                    MdotMLogger.e(this, "Google Play store app is not installed");
                    e.printStackTrace();
                }
                MdotMInterstitialImageView.this.adNetworkCompleted();
                this.timeout = false;
                return true;
            }
            MdotMLogger.i(this, "loading other url " + str);
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            this.timeout = false;
            MdotMLogger.i(this, "Click page finished " + str);
            MdotMInterstitialImageView.this.adNetworkCompleted();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            this.timeout = false;
            if (MdotMInterstitialImageView.this.isAdSelectionInProgress()) {
                MdotMLogger.e(this, "Unable to load landing url : " + str);
            } else {
                MdotMLogger.e(this, "Unable to report impression : " + str);
            }
            MdotMInterstitialImageView.this.adNetworkCompleted();
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [com.mdotm.android.view.MdotMInterstitialImageView$3] */
    private void initializeAdView(final MdotMAdResponse mdotMAdResponse, Context context) throws Exception {
        if (mdotMAdResponse != null) {
            this.activityIndicator = new ProgressBar(getContext());
            this.activityIndicator.setIndeterminate(false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getPixels(25), getPixels(25));
            this.activityIndicator.setLayoutParams(layoutParams);
            this.activityIndicator.setVisibility(4);
            this.activityIndicator.setMinimumHeight(30);
            this.activityIndicator.setMinimumWidth(30);
            this.activityIndicator.setMax(100);
            if (this.activityIndicator != null) {
                this.activityIndicator.setId(2);
                layoutParams.addRule(13);
            }
            this.adLandingUrl = mdotMAdResponse.getLandingUrl();
            setFocusable(true);
            setClickable(true);
            if (mdotMAdResponse.isCachedLocally()) {
                this.imagrBitmap = BitmapFactory.decodeFile(mdotMAdResponse.getImageUrl());
            } else {
                this.imagrBitmap = fetchImage(mdotMAdResponse.getImageUrl(), false);
            }
            MdotMLogger.i(this, "Image is " + mdotMAdResponse.getImageUrl());
            if (this.imagrBitmap != null) {
                displayImageView(mdotMAdResponse, this.imagrBitmap);
            } else {
                MdotMLogger.e(this, "Unable to create bitmap from cached file. Trying to download from remote");
                this.adLoadSuccess = true;
                new Thread() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.3
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        MdotMInterstitialImageView.this.imagrBitmap = MdotMInterstitialImageView.this.fetchImage(mdotMAdResponse.getOriginalImageUrl(), false);
                        Handler handler = MdotMInterstitialImageView.this.handler;
                        final MdotMAdResponse mdotMAdResponse2 = mdotMAdResponse;
                        handler.post(new Runnable() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MdotMInterstitialImageView.this.displayImageView(mdotMAdResponse2, MdotMInterstitialImageView.this.imagrBitmap);
                            }
                        });
                    }
                }.start();
                if (this.activityIndicator != null) {
                    addView(this.activityIndicator);
                }
                showActivityIndicator();
            }
            drawBackgroundView(true);
            setVisibility(super.getVisibility());
            return;
        }
        this.adLoadSuccess = false;
    }

    public void displayImageView(MdotMAdResponse mdotMAdResponse, Bitmap bitmap) {
        if (mdotMAdResponse.getAdType() == MdotMUtils.AD_WITH_BANNER_OR_XHTML_OR_VIDEO) {
            createAdWithBannerView(bitmap, mdotMAdResponse);
            if (this.activityIndicator != null) {
                removeView(this.activityIndicator);
                addView(this.activityIndicator);
                hideActivityIndicator();
                return;
            }
            return;
        }
        this.adLoadSuccess = false;
        MdotMLogger.e(this, "Woooo!! unable to display ad, We got unsupported ad type for interstitial. AdType : " + mdotMAdResponse.getAdType());
    }

    private void drawBackgroundView(boolean z) {
        MdotMLogger.d(this, " drawBackgroundView   :: " + z);
        if (this.adSelectedBackground == null) {
            this.adSelectedBackground = populateDrawablwBackGround(HIGHLIGHT_BACKGROUND_COLOR, HIGHLIGHT_COLOR);
        }
        if (this.defaultBackground == null) {
            this.defaultBackground = populateDrawablwBackGround(DrawableConstants.CtaButton.BACKGROUND_COLOR, this.backgroundColor);
        }
        if (z) {
            setBackgroundDrawable(this.defaultBackground);
        } else {
            setBackgroundDrawable(this.adSelectedBackground);
        }
    }

    private static Drawable populateDrawablwBackGround(int i, int i2) {
        MdotMLogger.i("", "populate backgnd called");
        Rect rect = new Rect(0, 0, 1, 1);
        MdotMLogger.i("", "rect width and height " + rect.width() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + rect.height());
        Bitmap createBitmap = Bitmap.createBitmap(rect.width(), rect.height(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        paint.setAntiAlias(true);
        canvas.drawRect(rect, paint);
        return new BitmapDrawable(createBitmap);
    }

    private void createAdWithBannerView(Bitmap bitmap, MdotMAdResponse mdotMAdResponse) {
        if (bitmap != null) {
            ImageView imageView = new ImageView(getContext());
            imageView.setImageBitmap(bitmap);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            imageView.setLayoutParams(layoutParams);
            imageView.setId(1);
            addView(imageView);
            this.adLoadSuccess = true;
            return;
        }
        TextView textView = new TextView(getContext());
        textView.setText("Oops! error while downloading Image. Click here to view detail.");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        textView.setLayoutParams(layoutParams2);
        textView.setPadding(50, 50, 50, 50);
        textView.setId(1);
        textView.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        textView.setBackgroundColor(-3355444);
        addView(textView);
        this.adLoadSuccess = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap fetchImage(String str, boolean z) {
        URL url;
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream = null;
        if (str != null) {
            try {
                url = new URL(str);
            } catch (MalformedURLException e) {
                e.printStackTrace();
                url = null;
            }
            try {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } catch (IOException e2) {
                e2.printStackTrace();
                httpURLConnection = null;
            }
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(30000);
            int i = 0;
            try {
                i = httpURLConnection.getResponseCode();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            if (i != 200 && i != 201) {
                return null;
            }
            try {
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return BitmapFactory.decodeStream(bufferedInputStream);
        }
        MdotMLogger.e(this, "Image url is null");
        return null;
    }

    private void setAdSelectionInProgress(boolean z) {
        this.adSelectionInProgress = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAdSelectionInProgress() {
        return this.adSelectionInProgress;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (!this.isAdClicked && action == 1) {
            this.isAdClicked = true;
            clicked(getContext());
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.mdotm.android.view.MdotMInterstitialImageView$4] */
    public void clicked(Context context) {
        MdotMLogger.i(this, "  Selected to clicked  ");
        if (this.adLandingUrl != null) {
            if (!isAdSelectionInProgress()) {
                final String str = this.adLandingUrl;
                setAdSelectionInProgress(true);
                showActivityIndicator();
                new Thread() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.4
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Thread.sleep(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                        MdotMInterstitialImageView.this.mAdClickListener.adClicked();
                        MdotMLogger.i(this, "Launch type is " + MdotMInterstitialImageView.this.launchType);
                        if (MdotMInterstitialImageView.this.launchType == 2) {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            try {
                                MdotMInterstitialImageView.this.getContext().startActivity(intent);
                            } catch (Exception e2) {
                                MdotMLogger.i(this, "Could not open browser on ad click to " + e2);
                            }
                            MdotMInterstitialImageView.this.mAdClickListener.leaveApplication();
                            MdotMInterstitialImageView.this.adNetworkCompleted();
                            return;
                        }
                        Handler handler = MdotMInterstitialImageView.this.handler;
                        final String str2 = str;
                        handler.post(new Runnable() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MdotMInterstitialImageView.this.webView.loadUrl(str2);
                            }
                        });
                    }
                }.start();
                return;
            }
            MdotMLogger.i(this, "ad selection under progress");
            return;
        }
        MdotMLogger.i(this, "selected ad is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adNetworkCompleted() {
        MdotMLogger.i(this, "On ad network completed");
        setClickable(true);
        setAdSelectionInProgress(false);
        this.isAdClicked = false;
        hideActivityIndicator();
    }

    private void showActivityIndicator() {
        post(new Thread() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (MdotMInterstitialImageView.this.activityIndicator != null) {
                    MdotMInterstitialImageView.this.activityIndicator.setVisibility(0);
                }
            }
        });
    }

    private void hideActivityIndicator() {
        post(new Thread() { // from class: com.mdotm.android.view.MdotMInterstitialImageView.6
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (MdotMInterstitialImageView.this.activityIndicator != null) {
                    MdotMInterstitialImageView.this.activityIndicator.setVisibility(4);
                }
            }
        });
    }

    private int getPixels(int i) {
        return (int) ((getResources().getDisplayMetrics().density * i) + 0.5f);
    }
}
