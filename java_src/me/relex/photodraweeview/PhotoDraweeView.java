package me.relex.photodraweeview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.BaseControllerListener;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.image.ImageInfo;
/* loaded from: classes3.dex */
public class PhotoDraweeView extends SimpleDraweeView {

    /* renamed from: a  reason: collision with root package name */
    private a f5816a;
    private boolean b;

    public PhotoDraweeView(Context context) {
        super(context);
        this.b = true;
        a();
    }

    public PhotoDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = true;
        a();
    }

    public PhotoDraweeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = true;
        a();
    }

    protected void a() {
        if (this.f5816a == null || this.f5816a.a() == null) {
            this.f5816a = new a(this);
        }
    }

    public a getAttacher() {
        return this.f5816a;
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int save = canvas.save();
        if (this.b) {
            canvas.concat(this.f5816a.h());
        }
        super.onDraw(canvas);
        canvas.restoreToCount(save);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        a();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        this.f5816a.m();
        super.onDetachedFromWindow();
    }

    public float getMinimumScale() {
        return this.f5816a.b();
    }

    public float getMediumScale() {
        return this.f5816a.c();
    }

    public float getMaximumScale() {
        return this.f5816a.d();
    }

    public void setMinimumScale(float f) {
        this.f5816a.c(f);
    }

    public void setMediumScale(float f) {
        this.f5816a.b(f);
    }

    public void setMaximumScale(float f) {
        this.f5816a.a(f);
    }

    public float getScale() {
        return this.f5816a.e();
    }

    public void setScale(float f) {
        this.f5816a.d(f);
    }

    public void setOrientation(int i) {
        this.f5816a.a(i);
    }

    public void setZoomTransitionDuration(long j) {
        this.f5816a.a(j);
    }

    public void setAllowParentInterceptOnEdge(boolean z) {
        this.f5816a.a(z);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f5816a.a(onDoubleTapListener);
    }

    public void setOnScaleChangeListener(d dVar) {
        this.f5816a.a(dVar);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5816a.a(onLongClickListener);
    }

    public void setOnPhotoTapListener(c cVar) {
        this.f5816a.a(cVar);
    }

    public void setOnViewTapListener(f fVar) {
        this.f5816a.a(fVar);
    }

    public c getOnPhotoTapListener() {
        return this.f5816a.f();
    }

    public f getOnViewTapListener() {
        return this.f5816a.g();
    }

    public void a(int i, int i2) {
        this.f5816a.a(i, i2);
    }

    public void setEnableDraweeMatrix(boolean z) {
        this.b = z;
    }

    public void setPhotoUri(Uri uri) {
        a(uri, (Context) null);
    }

    public void a(Uri uri, Context context) {
        this.b = false;
        setController(Fresco.newDraweeControllerBuilder().mo74setCallerContext((Object) context).mo70setUri(uri).mo75setOldController(getController()).setControllerListener(new BaseControllerListener<ImageInfo>() { // from class: me.relex.photodraweeview.PhotoDraweeView.1
            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onFailure(String str, Throwable th) {
                super.onFailure(str, th);
                PhotoDraweeView.this.b = false;
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            /* renamed from: a */
            public void onFinalImageSet(String str, ImageInfo imageInfo, Animatable animatable) {
                super.onFinalImageSet(str, imageInfo, animatable);
                PhotoDraweeView.this.b = true;
                if (imageInfo != null) {
                    PhotoDraweeView.this.a(imageInfo.getWidth(), imageInfo.getHeight());
                }
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            public void onIntermediateImageFailed(String str, Throwable th) {
                super.onIntermediateImageFailed(str, th);
                PhotoDraweeView.this.b = false;
            }

            @Override // com.facebook.drawee.controller.BaseControllerListener, com.facebook.drawee.controller.ControllerListener
            /* renamed from: a */
            public void onIntermediateImageSet(String str, ImageInfo imageInfo) {
                super.onIntermediateImageSet(str, imageInfo);
                PhotoDraweeView.this.b = true;
                if (imageInfo != null) {
                    PhotoDraweeView.this.a(imageInfo.getWidth(), imageInfo.getHeight());
                }
            }
        }).mo73build());
    }
}
