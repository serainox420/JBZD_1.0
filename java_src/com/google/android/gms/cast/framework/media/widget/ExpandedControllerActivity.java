package com.google.android.gms.cast.framework.media.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.b.a.a;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.internal.zzxf;
import com.google.android.gms.internal.zzxk;
import com.google.android.gms.internal.zzxp;
/* loaded from: classes2.dex */
public abstract class ExpandedControllerActivity extends AppCompatActivity implements ControlButtonsContainer {
    private SessionManager zzapY;
    private SeekBar zzatM;
    private int zzauA;
    private int zzauB;
    private int zzauC;
    private TextView zzauD;
    private ImageView zzauE;
    private ImageView zzauF;
    private zzxk zzauG;
    private int[] zzauH;
    private View zzauJ;
    private ImageView zzauK;
    private TextView zzauL;
    private TextView zzauM;
    private zzxf zzauN;
    private UIMediaController zzauO;
    private int zzaup;
    private int zzauq;
    private int zzaur;
    private int zzaus;
    private int zzaut;
    private int zzauu;
    private int zzauv;
    private int zzauw;
    private int zzaux;
    private int zzauy;
    private int zzauz;
    private final SessionManagerListener<CastSession> zzauo = new zzb();
    private final RemoteMediaClient.Listener zzatv = new zza();
    private ImageView[] zzauI = new ImageView[4];

    /* loaded from: classes2.dex */
    private class zza implements RemoteMediaClient.Listener {
        private zza() {
        }

        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
        public void onAdBreakStatusUpdated() {
            ExpandedControllerActivity.this.zzuk();
        }

        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
        public void onMetadataUpdated() {
            ExpandedControllerActivity.this.zzui();
        }

        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
        public void onPreloadStatusUpdated() {
        }

        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
        public void onQueueStatusUpdated() {
        }

        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
        public void onSendingRemoteMediaRequest() {
            ExpandedControllerActivity.this.zzauD.setText(ExpandedControllerActivity.this.getResources().getString(R.string.cast_expanded_controller_loading));
        }

        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener
        public void onStatusUpdated() {
            RemoteMediaClient remoteMediaClient = ExpandedControllerActivity.this.getRemoteMediaClient();
            if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
                ExpandedControllerActivity.this.finish();
                return;
            }
            ExpandedControllerActivity.this.zzuj();
            ExpandedControllerActivity.this.zzuk();
        }
    }

    /* loaded from: classes2.dex */
    private class zzb implements SessionManagerListener<CastSession> {
        private zzb() {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public void onSessionEnded(CastSession castSession, int i) {
            ExpandedControllerActivity.this.finish();
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionEnding(CastSession castSession) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionResumeFailed(CastSession castSession, int i) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionResumed(CastSession castSession, boolean z) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionResuming(CastSession castSession, String str) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionStartFailed(CastSession castSession, int i) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionStarted(CastSession castSession, String str) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionStarting(CastSession castSession) {
        }

        @Override // com.google.android.gms.cast.framework.SessionManagerListener
        public /* bridge */ /* synthetic */ void onSessionSuspended(CastSession castSession, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RemoteMediaClient getRemoteMediaClient() {
        CastSession currentCastSession = this.zzapY.getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            return null;
        }
        return currentCastSession.getRemoteMediaClient();
    }

    private zzxk zza(RelativeLayout relativeLayout) {
        zzxk zzxkVar = new zzxk(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(0, R.id.end_text);
        layoutParams.addRule(1, R.id.start_text);
        layoutParams.addRule(6, R.id.seek_bar);
        layoutParams.addRule(7, R.id.seek_bar);
        layoutParams.addRule(5, R.id.seek_bar);
        layoutParams.addRule(8, R.id.seek_bar);
        zzxkVar.setLayoutParams(layoutParams);
        zzxkVar.setPadding(this.zzatM.getPaddingLeft(), this.zzatM.getPaddingTop(), this.zzatM.getPaddingRight(), this.zzatM.getPaddingBottom());
        zzxkVar.setContentDescription(getResources().getString(R.string.cast_seek_bar));
        zzxkVar.setBackgroundColor(0);
        relativeLayout.addView(zzxkVar);
        return zzxkVar;
    }

    private void zza(Toolbar toolbar) {
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().b(true);
            getSupportActionBar().a(R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        }
    }

    private void zza(View view, int i, int i2, UIMediaController uIMediaController) {
        ImageView imageView = (ImageView) view.findViewById(i);
        if (i2 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
        } else if (i2 == R.id.cast_button_type_custom) {
        } else {
            if (i2 == R.id.cast_button_type_play_pause_toggle) {
                zza(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_skip_previous) {
                zzb(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_skip_next) {
                zzc(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_rewind_30_seconds) {
                zzd(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_forward_30_seconds) {
                zze(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_mute_toggle) {
                zzf(imageView, uIMediaController);
            } else if (i2 != R.id.cast_button_type_closed_caption) {
            } else {
                zzg(imageView, uIMediaController);
            }
        }
    }

    private void zza(View view, UIMediaController uIMediaController) {
        this.zzauE = (ImageView) view.findViewById(R.id.background_image_view);
        this.zzauF = (ImageView) view.findViewById(R.id.blurred_background_image_view);
        View findViewById = view.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        uIMediaController.bindImageViewToImageOfCurrentItem(this.zzauE, new ImageHints(4, displayMetrics.widthPixels, displayMetrics.heightPixels), findViewById);
        this.zzauD = (TextView) view.findViewById(R.id.status_text);
        uIMediaController.bindViewToLoadingIndicator((ProgressBar) view.findViewById(R.id.loading_indicator));
        this.zzatM = (SeekBar) view.findViewById(R.id.seek_bar);
        zzue();
        zzug();
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.live_stream_seek_bar);
        uIMediaController.bindTextViewToStreamPosition((TextView) view.findViewById(R.id.start_text), true);
        uIMediaController.bindTextViewToStreamDuration((TextView) view.findViewById(R.id.end_text), (ImageView) view.findViewById(R.id.live_stream_indicator));
        uIMediaController.bindSeekBar(this.zzatM);
        uIMediaController.bindViewToUIController(seekBar, new zzxp(seekBar, this.zzatM));
        this.zzauI[0] = (ImageView) view.findViewById(R.id.button_0);
        this.zzauI[1] = (ImageView) view.findViewById(R.id.button_1);
        this.zzauI[2] = (ImageView) view.findViewById(R.id.button_2);
        this.zzauI[3] = (ImageView) view.findViewById(R.id.button_3);
        zza(view, R.id.button_0, this.zzauH[0], uIMediaController);
        zza(view, R.id.button_1, this.zzauH[1], uIMediaController);
        zza(view, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, uIMediaController);
        zza(view, R.id.button_2, this.zzauH[2], uIMediaController);
        zza(view, R.id.button_3, this.zzauH[3], uIMediaController);
        this.zzauJ = findViewById(R.id.ad_container);
        this.zzauK = (ImageView) this.zzauJ.findViewById(R.id.ad_image_view);
        this.zzauM = (TextView) this.zzauJ.findViewById(R.id.ad_label);
        this.zzauL = (TextView) this.zzauJ.findViewById(R.id.ad_in_progress_label);
        this.zzauG = zza((RelativeLayout) view.findViewById(R.id.seek_bar_controls));
    }

    private void zza(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzaup);
        Drawable zzb2 = com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzauu);
        Drawable zzb3 = com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzaut);
        Drawable zzb4 = com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzauv);
        imageView.setImageDrawable(zzb3);
        uIMediaController.bindImageViewToPlayPauseToggle(imageView, zzb3, zzb2, zzb4, null, false);
    }

    private void zzb(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzaup);
        imageView.setImageDrawable(com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzauw));
        imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
        uIMediaController.bindViewToSkipPrev(imageView, 0);
    }

    private void zzc(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzaup);
        imageView.setImageDrawable(com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzaux));
        imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
        uIMediaController.bindViewToSkipNext(imageView, 0);
    }

    private void zzd(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzaup);
        imageView.setImageDrawable(com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzauy));
        imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
        uIMediaController.bindViewToRewind(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
    }

    private void zze(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzaup);
        imageView.setImageDrawable(com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzauz));
        imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
        uIMediaController.bindViewToForward(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
    }

    private void zzf(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzaup);
        imageView.setImageDrawable(com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzauA));
        uIMediaController.bindImageViewToMuteToggle(imageView);
    }

    private void zzg(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzaup);
        imageView.setImageDrawable(com.google.android.gms.cast.framework.media.widget.zza.zzb(this, this.zzauC, this.zzauB));
        uIMediaController.bindViewToClosedCaption(imageView);
    }

    private void zzuc() {
        TypedArray obtainStyledAttributes = obtainStyledAttributes(new int[]{android.support.v7.appcompat.R.attr.selectableItemBackgroundBorderless, android.support.v7.appcompat.R.attr.colorControlActivated});
        this.zzaup = obtainStyledAttributes.getResourceId(0, 0);
        this.zzauq = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
    }

    private void zzud() {
        boolean z = true;
        TypedArray obtainStyledAttributes = obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.zzauC = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castButtonColor, 0);
        this.zzaur = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarProgressDrawable, 0);
        this.zzaus = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarThumbDrawable, 0);
        this.zzaut = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castPlayButtonDrawable, 0);
        this.zzauu = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castPauseButtonDrawable, 0);
        this.zzauv = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castStopButtonDrawable, 0);
        this.zzauw = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSkipPreviousButtonDrawable, 0);
        this.zzaux = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSkipNextButtonDrawable, 0);
        this.zzauy = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castRewind30ButtonDrawable, 0);
        this.zzauz = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castForward30ButtonDrawable, 0);
        this.zzauA = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castMuteToggleButtonDrawable, 0);
        this.zzauB = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castClosedCaptionsButtonDrawable, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castControlButtons, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = getResources().obtainTypedArray(resourceId);
            if (obtainTypedArray.length() != 4) {
                z = false;
            }
            zzac.zzax(z);
            this.zzauH = new int[obtainTypedArray.length()];
            for (int i = 0; i < obtainTypedArray.length(); i++) {
                this.zzauH[i] = obtainTypedArray.getResourceId(i, 0);
            }
            obtainTypedArray.recycle();
        } else {
            this.zzauH = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
        }
        obtainStyledAttributes.recycle();
    }

    private void zzue() {
        Drawable drawable = getResources().getDrawable(this.zzaur);
        ColorStateList colorStateList = null;
        if (drawable != null) {
            if (this.zzaur == R.drawable.cast_expanded_controller_seekbar_track) {
                ColorStateList zzuf = zzuf();
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable g = a.g(layerDrawable.findDrawableByLayerId(16908301));
                a.a(g, zzuf);
                layerDrawable.setDrawableByLayerId(16908301, g);
                layerDrawable.findDrawableByLayerId(16908288).setColorFilter(getResources().getColor(R.color.cast_expanded_controller_seek_bar_progress_background_tint_color), PorterDuff.Mode.SRC_IN);
                colorStateList = zzuf;
            }
            this.zzatM.setProgressDrawable(drawable);
        }
        Drawable drawable2 = getResources().getDrawable(this.zzaus);
        if (drawable2 != null) {
            if (this.zzaus == R.drawable.cast_expanded_controller_seekbar_thumb) {
                if (colorStateList == null) {
                    colorStateList = zzuf();
                }
                drawable2 = a.g(drawable2);
                a.a(drawable2, colorStateList);
            }
            this.zzatM.setThumb(drawable2);
        }
    }

    private ColorStateList zzuf() {
        int color = getResources().getColor(this.zzauq);
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.dimen.cast_expanded_controller_seekbar_disabled_alpha, typedValue, true);
        return new ColorStateList(new int[][]{new int[]{16842910}, new int[]{-16842910}}, new int[]{color, Color.argb((int) (typedValue.getFloat() * Color.alpha(color)), Color.red(color), Color.green(color), Color.blue(color))});
    }

    @TargetApi(21)
    private void zzug() {
        if (zzt.zzzo()) {
            this.zzatM.setSplitTrack(false);
        }
    }

    @TargetApi(19)
    private void zzuh() {
        zzt.zzze();
        int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
        zzt.zzzg();
        int i = systemUiVisibility ^ 2;
        if (zzt.zzzi()) {
            i ^= 4;
        }
        if (zzt.zzzl()) {
            i ^= 4096;
        }
        getWindow().getDecorView().setSystemUiVisibility(i);
        if (zzt.zzzk()) {
            setImmersive(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzui() {
        MediaInfo mediaInfo;
        MediaMetadata metadata;
        ActionBar supportActionBar;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || (mediaInfo = remoteMediaClient.getMediaInfo()) == null || (metadata = mediaInfo.getMetadata()) == null || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.a(metadata.getString(MediaMetadata.KEY_TITLE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzuj() {
        CastDevice castDevice;
        CastSession currentCastSession = this.zzapY.getCurrentCastSession();
        if (currentCastSession != null && (castDevice = currentCastSession.getCastDevice()) != null) {
            String friendlyName = castDevice.getFriendlyName();
            if (!TextUtils.isEmpty(friendlyName)) {
                this.zzauD.setText(getResources().getString(R.string.cast_casting_to_device, friendlyName));
                return;
            }
        }
        this.zzauD.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzuk() {
        String str;
        Drawable drawable;
        Bitmap bitmap;
        Bitmap zza2;
        String str2 = null;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        MediaInfo mediaInfo = remoteMediaClient == null ? null : remoteMediaClient.getMediaInfo();
        MediaStatus mediaStatus = remoteMediaClient == null ? null : remoteMediaClient.getMediaStatus();
        if (mediaStatus != null && mediaStatus.isPlayingAd()) {
            if (zzt.zzzj() && this.zzauF.getVisibility() == 8 && (drawable = this.zzauE.getDrawable()) != null && (drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null && (zza2 = com.google.android.gms.cast.framework.media.widget.zza.zza(this, bitmap, 0.25f, 7.5f)) != null) {
                this.zzauF.setImageBitmap(zza2);
                this.zzauF.setVisibility(0);
            }
            AdBreakClipInfo currentAdBreakClip = mediaStatus.getCurrentAdBreakClip();
            if (currentAdBreakClip != null) {
                str2 = currentAdBreakClip.getTitle();
                str = currentAdBreakClip.getContentUrl();
            } else {
                str = null;
            }
            this.zzauL.setVisibility(0);
            if (!TextUtils.isEmpty(str)) {
                this.zzauN.zzo(Uri.parse(str));
            } else {
                this.zzauK.setVisibility(8);
            }
            TextView textView = this.zzauM;
            if (TextUtils.isEmpty(str2)) {
                str2 = getResources().getString(R.string.cast_ad_label);
            }
            textView.setText(str2);
            this.zzatM.setEnabled(false);
            this.zzauJ.setVisibility(0);
        } else {
            this.zzatM.setEnabled(true);
            this.zzauJ.setVisibility(8);
            if (zzt.zzzj()) {
                this.zzauF.setVisibility(8);
                this.zzauF.setImageBitmap(null);
            }
        }
        if (mediaInfo != null) {
            this.zzauG.zzcf(this.zzatM.getMax());
            this.zzauG.zzb(mediaInfo.getAdBreaks(), -1);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final ImageView getButtonImageViewAt(int i) throws IndexOutOfBoundsException {
        return this.zzauI[i];
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final int getButtonSlotCount() {
        return 4;
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final int getButtonTypeAt(int i) throws IndexOutOfBoundsException {
        return this.zzauH[i];
    }

    public SeekBar getSeekBar() {
        return this.zzatM;
    }

    public TextView getStatusTextView() {
        return this.zzauD;
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public UIMediaController getUIMediaController() {
        return this.zzauO;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.k, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CastContext.getSharedInstance(this).registerLifecycleCallbacksBeforeIceCreamSandwich(this, bundle);
        this.zzapY = CastContext.getSharedInstance(this).getSessionManager();
        if (this.zzapY.getCurrentCastSession() == null) {
            finish();
        }
        this.zzauO = new UIMediaController(this);
        this.zzauO.setPostRemoteMediaClientListener(this.zzatv);
        setContentView(R.layout.cast_expanded_controller_activity);
        zzuc();
        zzud();
        zza(findViewById(R.id.expanded_controller_layout), this.zzauO);
        zza((Toolbar) findViewById(R.id.toolbar));
        zzuj();
        zzui();
        this.zzauN = new zzxf(getApplicationContext(), new ImageHints(-1, this.zzauK.getWidth(), this.zzauK.getHeight()));
        this.zzauN.zza(new zzxf.zza() { // from class: com.google.android.gms.cast.framework.media.widget.ExpandedControllerActivity.1
            @Override // com.google.android.gms.internal.zzxf.zza
            public void zzc(Bitmap bitmap) {
                if (bitmap != null) {
                    if (ExpandedControllerActivity.this.zzauL != null) {
                        ExpandedControllerActivity.this.zzauL.setVisibility(8);
                    }
                    if (ExpandedControllerActivity.this.zzauK == null) {
                        return;
                    }
                    ExpandedControllerActivity.this.zzauK.setVisibility(0);
                    ExpandedControllerActivity.this.zzauK.setImageBitmap(bitmap);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.zzauN.clear();
        if (this.zzauO != null) {
            this.zzauO.setPostRemoteMediaClientListener(null);
            this.zzauO.dispose();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        CastContext.getSharedInstance(this).getSessionManager().removeSessionManagerListener(this.zzauo, CastSession.class);
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        CastContext.getSharedInstance(this).getSessionManager().addSessionManagerListener(this.zzauo, CastSession.class);
        CastSession currentCastSession = CastContext.getSharedInstance(this).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || (!currentCastSession.isConnected() && !currentCastSession.isConnecting())) {
            finish();
        }
        zzuj();
        zzuk();
        super.onResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            zzuh();
        }
    }
}
