package com.applovin.impl.adview;

import android.util.AttributeSet;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAdSize;
/* loaded from: classes.dex */
class m {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static AppLovinAdSize a(AttributeSet attributeSet) {
        String attributeValue;
        if (attributeSet == null || (attributeValue = attributeSet.getAttributeValue(AppLovinAdView.NAMESPACE, "size")) == null) {
            return null;
        }
        return AppLovinAdSize.fromString(attributeValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(AttributeSet attributeSet) {
        return attributeSet != null && attributeSet.getAttributeBooleanValue(AppLovinAdView.NAMESPACE, "loadAdOnCreate", false);
    }
}
