package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
public class MiniControllerFragment extends Fragment implements ControlButtonsContainer {
    private static final zzyz zzapV = new zzyz("MiniControllerFragment");
    private int zzauA;
    private int zzauB;
    private int zzauC;
    private int[] zzauH;
    private ImageView[] zzauI = new ImageView[3];
    private UIMediaController zzauO;
    private boolean zzauQ;
    private int zzauR;
    private int zzauS;
    private int zzauT;
    private int zzauU;
    private int zzauV;
    private int zzauW;
    private int zzauX;
    private int zzauY;
    private int zzaut;
    private int zzauu;
    private int zzauv;
    private int zzauw;
    private int zzaux;
    private int zzauy;
    private int zzauz;

    private void zza(Context context, AttributeSet attributeSet) {
        boolean z = true;
        if (this.zzauH != null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CastMiniController, R.attr.castMiniControllerStyle, R.style.CastMiniController);
        this.zzauQ = obtainStyledAttributes.getBoolean(R.styleable.CastMiniController_castShowImageThumbnail, true);
        this.zzauR = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castTitleTextAppearance, 0);
        this.zzauS = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSubtitleTextAppearance, 0);
        this.zzauT = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castBackground, 0);
        this.zzauU = obtainStyledAttributes.getColor(R.styleable.CastMiniController_castProgressBarColor, 0);
        this.zzauC = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castButtonColor, 0);
        this.zzaut = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
        this.zzauu = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
        this.zzauv = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
        this.zzauW = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
        this.zzauX = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
        this.zzauY = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
        this.zzauw = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipPreviousButtonDrawable, 0);
        this.zzaux = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipNextButtonDrawable, 0);
        this.zzauy = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castRewind30ButtonDrawable, 0);
        this.zzauz = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castForward30ButtonDrawable, 0);
        this.zzauA = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castMuteToggleButtonDrawable, 0);
        this.zzauB = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castClosedCaptionsButtonDrawable, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castControlButtons, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
            if (obtainTypedArray.length() != 3) {
                z = false;
            }
            zzac.zzax(z);
            this.zzauH = new int[obtainTypedArray.length()];
            for (int i = 0; i < obtainTypedArray.length(); i++) {
                this.zzauH[i] = obtainTypedArray.getResourceId(i, 0);
            }
            obtainTypedArray.recycle();
            if (this.zzauQ) {
                this.zzauH[0] = R.id.cast_button_type_empty;
            }
            this.zzauV = 0;
            for (int i2 : this.zzauH) {
                if (i2 != R.id.cast_button_type_empty) {
                    this.zzauV++;
                }
            }
        } else {
            zzapV.zzf("Unable to read attribute castControlButtons.", new Object[0]);
            this.zzauH = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
        }
        obtainStyledAttributes.recycle();
    }

    private void zza(RelativeLayout relativeLayout, int i, int i2) {
        int i3;
        int i4;
        ImageView imageView = (ImageView) relativeLayout.findViewById(i);
        int i5 = this.zzauH[i2];
        if (i5 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
        } else if (i5 == R.id.cast_button_type_custom) {
        } else {
            if (i5 == R.id.cast_button_type_play_pause_toggle) {
                int i6 = this.zzaut;
                int i7 = this.zzauu;
                int i8 = this.zzauv;
                if (this.zzauV == 1) {
                    int i9 = this.zzauW;
                    int i10 = this.zzauX;
                    i8 = this.zzauY;
                    i3 = i9;
                    i4 = i10;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                Drawable zza = zza.zza(getContext(), this.zzauC, i3);
                Drawable zza2 = zza.zza(getContext(), this.zzauC, i4);
                Drawable zza3 = zza.zza(getContext(), this.zzauC, i8);
                imageView.setImageDrawable(zza2);
                ProgressBar zzcg = zzcg(i);
                relativeLayout.addView(zzcg);
                this.zzauO.bindImageViewToPlayPauseToggle(imageView, zza, zza2, zza3, zzcg, true);
            } else if (i5 == R.id.cast_button_type_skip_previous) {
                imageView.setImageDrawable(zza.zza(getContext(), this.zzauC, this.zzauw));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
                this.zzauO.bindViewToSkipPrev(imageView, 0);
            } else if (i5 == R.id.cast_button_type_skip_next) {
                imageView.setImageDrawable(zza.zza(getContext(), this.zzauC, this.zzaux));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
                this.zzauO.bindViewToSkipNext(imageView, 0);
            } else if (i5 == R.id.cast_button_type_rewind_30_seconds) {
                imageView.setImageDrawable(zza.zza(getContext(), this.zzauC, this.zzauy));
                imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
                this.zzauO.bindViewToRewind(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            } else if (i5 == R.id.cast_button_type_forward_30_seconds) {
                imageView.setImageDrawable(zza.zza(getContext(), this.zzauC, this.zzauz));
                imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
                this.zzauO.bindViewToForward(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            } else if (i5 == R.id.cast_button_type_mute_toggle) {
                imageView.setImageDrawable(zza.zza(getContext(), this.zzauC, this.zzauA));
                this.zzauO.bindImageViewToMuteToggle(imageView);
            } else if (i5 != R.id.cast_button_type_closed_caption) {
            } else {
                imageView.setImageDrawable(zza.zza(getContext(), this.zzauC, this.zzauB));
                this.zzauO.bindViewToClosedCaption(imageView);
            }
        }
    }

    private ProgressBar zzcg(int i) {
        ProgressBar progressBar = new ProgressBar(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(8, i);
        layoutParams.addRule(6, i);
        layoutParams.addRule(5, i);
        layoutParams.addRule(7, i);
        layoutParams.addRule(15);
        progressBar.setLayoutParams(layoutParams);
        progressBar.setVisibility(8);
        Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
        if (this.zzauU != 0 && indeterminateDrawable != null) {
            indeterminateDrawable.setColorFilter(this.zzauU, PorterDuff.Mode.SRC_IN);
        }
        return progressBar;
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final ImageView getButtonImageViewAt(int i) throws IndexOutOfBoundsException {
        return this.zzauI[i];
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final int getButtonSlotCount() {
        return 3;
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final int getButtonTypeAt(int i) throws IndexOutOfBoundsException {
        return this.zzauH[i];
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public UIMediaController getUIMediaController() {
        return this.zzauO;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.zzauO = new UIMediaController(getActivity());
        View inflate = layoutInflater.inflate(R.layout.cast_mini_controller, viewGroup);
        inflate.setVisibility(8);
        this.zzauO.bindViewVisibilityToMediaSession(inflate, 8);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.container_current);
        if (this.zzauT != 0) {
            relativeLayout.setBackgroundResource(this.zzauT);
        }
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon_view);
        TextView textView = (TextView) inflate.findViewById(R.id.title_view);
        if (this.zzauR != 0) {
            textView.setTextAppearance(getActivity(), this.zzauR);
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.subtitle_view);
        if (this.zzauS != 0) {
            textView2.setTextAppearance(getActivity(), this.zzauS);
        }
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        if (this.zzauU != 0) {
            ((LayerDrawable) progressBar.getProgressDrawable()).setColorFilter(this.zzauU, PorterDuff.Mode.SRC_IN);
        }
        this.zzauO.bindTextViewToMetadataOfCurrentItem(textView, MediaMetadata.KEY_TITLE);
        this.zzauO.bindTextViewToMetadataOfCurrentItem(textView2, MediaMetadata.KEY_SUBTITLE);
        this.zzauO.bindProgressBar(progressBar);
        this.zzauO.bindViewToLaunchExpandedController(relativeLayout);
        if (this.zzauQ) {
            this.zzauO.bindImageViewToImageOfCurrentItem(imageView, new ImageHints(2, getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_width), getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_height)), R.drawable.cast_album_art_placeholder);
        } else {
            imageView.setVisibility(8);
        }
        this.zzauI[0] = (ImageView) relativeLayout.findViewById(R.id.button_0);
        this.zzauI[1] = (ImageView) relativeLayout.findViewById(R.id.button_1);
        this.zzauI[2] = (ImageView) relativeLayout.findViewById(R.id.button_2);
        zza(relativeLayout, R.id.button_0, 0);
        zza(relativeLayout, R.id.button_1, 1);
        zza(relativeLayout, R.id.button_2, 2);
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        if (this.zzauO != null) {
            this.zzauO.dispose();
            this.zzauO = null;
        }
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        zza(context, attributeSet);
    }
}
