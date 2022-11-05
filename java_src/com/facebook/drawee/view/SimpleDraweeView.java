package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.util.UriUtil;
import com.facebook.drawee.R;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.interfaces.SimpleDraweeControllerBuilder;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class SimpleDraweeView extends GenericDraweeView {
    private static Supplier<? extends SimpleDraweeControllerBuilder> sDraweeControllerBuilderSupplier;
    private SimpleDraweeControllerBuilder mSimpleDraweeControllerBuilder;

    public static void initialize(Supplier<? extends SimpleDraweeControllerBuilder> supplier) {
        sDraweeControllerBuilderSupplier = supplier;
    }

    public static void shutDown() {
        sDraweeControllerBuilderSupplier = null;
    }

    public SimpleDraweeView(Context context, GenericDraweeHierarchy genericDraweeHierarchy) {
        super(context, genericDraweeHierarchy);
        init(context, null);
    }

    public SimpleDraweeView(Context context) {
        super(context);
        init(context, null);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    @TargetApi(21)
    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(context, attributeSet);
    }

    private void init(Context context, @Nullable AttributeSet attributeSet) {
        int resourceId;
        if (!isInEditMode()) {
            Preconditions.checkNotNull(sDraweeControllerBuilderSupplier, "SimpleDraweeView was not initialized!");
            this.mSimpleDraweeControllerBuilder = sDraweeControllerBuilderSupplier.mo89get();
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SimpleDraweeView);
                try {
                    if (obtainStyledAttributes.hasValue(R.styleable.SimpleDraweeView_actualImageUri)) {
                        setImageURI(Uri.parse(obtainStyledAttributes.getString(R.styleable.SimpleDraweeView_actualImageUri)), (Object) null);
                    } else if (obtainStyledAttributes.hasValue(R.styleable.SimpleDraweeView_actualImageResource) && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.SimpleDraweeView_actualImageResource, -1)) != -1) {
                        setActualImageResource(resourceId);
                    }
                } finally {
                    obtainStyledAttributes.recycle();
                }
            }
        }
    }

    protected SimpleDraweeControllerBuilder getControllerBuilder() {
        return this.mSimpleDraweeControllerBuilder;
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        setImageURI(uri, (Object) null);
    }

    public void setImageURI(@Nullable String str) {
        setImageURI(str, (Object) null);
    }

    public void setImageURI(Uri uri, @Nullable Object obj) {
        setController(this.mSimpleDraweeControllerBuilder.mo74setCallerContext(obj).mo70setUri(uri).mo75setOldController(getController()).mo73build());
    }

    public void setImageURI(@Nullable String str, @Nullable Object obj) {
        setImageURI(str != null ? Uri.parse(str) : null, obj);
    }

    public void setActualImageResource(int i) {
        setActualImageResource(i, null);
    }

    public void setActualImageResource(int i, @Nullable Object obj) {
        setImageURI(UriUtil.getUriForResourceId(i), obj);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
    }
}
