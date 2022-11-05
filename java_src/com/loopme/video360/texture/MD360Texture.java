package com.loopme.video360.texture;
/* loaded from: classes2.dex */
public abstract class MD360Texture {
    private static final String TAG = "MD360Texture";
    private static final int TEXTURE_EMPTY = 0;
    private int mHeight;
    private ThreadLocal<Integer> mLocalGLTexture = new ThreadLocal<>();
    private int mWidth;

    /* loaded from: classes2.dex */
    public interface ISyncDrawCallback {
        void onDrawOpenGL();
    }

    protected abstract int createTextureId();

    protected abstract void onResize(int i, int i2);

    public abstract void syncDrawInContext(ISyncDrawCallback iSyncDrawCallback);

    public void resize(int i, int i2) {
        boolean z = false;
        if (this.mWidth == i && this.mHeight == i2) {
            z = true;
        }
        this.mWidth = i;
        this.mHeight = i2;
        if (z) {
            onResize(this.mWidth, this.mHeight);
        }
    }

    public void create() {
        int createTextureId = createTextureId();
        if (createTextureId != 0) {
            this.mLocalGLTexture.set(Integer.valueOf(createTextureId));
        }
    }

    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getCurrentTextureId() {
        Integer num = this.mLocalGLTexture.get();
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isEmpty(int i) {
        return i == 0;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }
}
