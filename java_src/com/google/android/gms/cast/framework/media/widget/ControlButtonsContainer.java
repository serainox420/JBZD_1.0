package com.google.android.gms.cast.framework.media.widget;

import android.widget.ImageView;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
/* loaded from: classes2.dex */
public interface ControlButtonsContainer {
    ImageView getButtonImageViewAt(int i) throws IndexOutOfBoundsException;

    int getButtonSlotCount();

    int getButtonTypeAt(int i) throws IndexOutOfBoundsException;

    UIMediaController getUIMediaController();
}
