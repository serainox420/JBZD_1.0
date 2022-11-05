package com.facebook.share.internal;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.FacebookButtonBase;
import com.facebook.R;
import com.facebook.internal.AnalyticsEvents;
/* loaded from: classes.dex */
public class LikeButton extends FacebookButtonBase {
    public LikeButton(Context context, boolean z) {
        super(context, null, 0, 0, AnalyticsEvents.EVENT_LIKE_BUTTON_CREATE, AnalyticsEvents.EVENT_LIKE_BUTTON_DID_TAP);
        setSelected(z);
    }

    @Override // android.widget.TextView, android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        updateForLikeStatus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void configureButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super.configureButton(context, attributeSet, i, i2);
        updateForLikeStatus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        return 0;
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_button_like;
    }

    private void updateForLikeStatus() {
        if (isSelected()) {
            setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_like_icon_selected, 0, 0, 0);
            setText(getResources().getString(R.string.com_facebook_like_button_liked));
            return;
        }
        setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_icon, 0, 0, 0);
        setText(getResources().getString(R.string.com_facebook_like_button_not_liked));
    }
}
