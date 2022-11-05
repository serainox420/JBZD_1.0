package com.madsdk;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.madsdk.javascript.MraidEventsListener;
/* loaded from: classes2.dex */
public class FullScreenDialog extends Dialog {
    private ImageButton mCloseButton;
    private FrameLayout mFrameLayout;
    private AdWebView mWebView;
    private MraidEventsListener mraidEventsListener;

    public FullScreenDialog(Context context, MraidEventsListener mraidEventsListener) {
        super(context, 16973834);
        this.mraidEventsListener = mraidEventsListener;
        init(context);
    }

    private void init(Context context) {
        this.mFrameLayout = new FrameLayout(context);
        this.mCloseButton = new ImageButton(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388613);
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.close_button_padding);
        this.mCloseButton.setPadding(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
        this.mCloseButton.setLayoutParams(layoutParams);
        this.mCloseButton.setImageResource(R.drawable.ic_clear_white_24dp);
        this.mCloseButton.setBackgroundResource(17301673);
        this.mCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.madsdk.FullScreenDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FullScreenDialog.this.mraidEventsListener.close();
            }
        });
        this.mFrameLayout.addView(this.mCloseButton);
        setContentView(this.mFrameLayout);
    }

    public void addWebView(AdWebView adWebView, FrameLayout.LayoutParams layoutParams, boolean z) {
        this.mWebView = adWebView;
        removeWebView();
        this.mFrameLayout.addView(adWebView, 0, layoutParams);
        if (z) {
            this.mCloseButton.setVisibility(8);
        } else {
            this.mCloseButton.setVisibility(0);
        }
    }

    public void showButton() {
        this.mCloseButton.setVisibility(0);
    }

    public void hideButton() {
        this.mCloseButton.setVisibility(8);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.mraidEventsListener.close();
        super.onBackPressed();
    }

    public void removeWebView() {
        this.mFrameLayout.removeView(this.mWebView);
    }
}
