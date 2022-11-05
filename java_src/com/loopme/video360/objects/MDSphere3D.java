package com.loopme.video360.objects;

import android.content.Context;
import android.opengl.GLES20;
import com.loopme.R;
import com.loopme.video360.MD360Program;
import com.loopme.video360.common.GLUtil;
import java.nio.Buffer;
import java.nio.FloatBuffer;
/* loaded from: classes2.dex */
public class MDSphere3D {
    private static final int sPositionDataSize = 3;
    private int mNumIndices;
    private FloatBuffer mTexCoordinateBuffer;
    private FloatBuffer mVerticesBuffer;

    public void uploadDataToProgram(MD360Program mD360Program) {
        FloatBuffer verticesBuffer = getVerticesBuffer();
        FloatBuffer texCoordinateBuffer = getTexCoordinateBuffer();
        verticesBuffer.position(0);
        texCoordinateBuffer.position(0);
        int positionHandle = mD360Program.getPositionHandle();
        GLES20.glVertexAttribPointer(positionHandle, 3, 5126, false, 0, (Buffer) verticesBuffer);
        GLES20.glEnableVertexAttribArray(positionHandle);
        int textureCoordinateHandle = mD360Program.getTextureCoordinateHandle();
        GLES20.glVertexAttribPointer(textureCoordinateHandle, 2, 5126, false, 0, (Buffer) texCoordinateBuffer);
        GLES20.glEnableVertexAttribArray(textureCoordinateHandle);
    }

    public void loadObj(Context context) {
        GLUtil.loadObject3D(context, obtainObjResId(), this);
    }

    protected int obtainObjResId() {
        return R.raw.sphere;
    }

    public int getNumIndices() {
        return this.mNumIndices;
    }

    public void setNumIndices(int i) {
        this.mNumIndices = i;
    }

    public FloatBuffer getVerticesBuffer() {
        return this.mVerticesBuffer;
    }

    public void setVerticesBuffer(FloatBuffer floatBuffer) {
        this.mVerticesBuffer = floatBuffer;
    }

    public FloatBuffer getTexCoordinateBuffer() {
        return this.mTexCoordinateBuffer;
    }

    public void setTexCoordinateBuffer(FloatBuffer floatBuffer) {
        this.mTexCoordinateBuffer = floatBuffer;
    }
}
