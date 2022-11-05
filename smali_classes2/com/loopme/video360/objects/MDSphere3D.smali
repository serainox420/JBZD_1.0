.class public Lcom/loopme/video360/objects/MDSphere3D;
.super Ljava/lang/Object;
.source "MDSphere3D.java"


# static fields
.field private static final sPositionDataSize:I = 0x3


# instance fields
.field private mNumIndices:I

.field private mTexCoordinateBuffer:Ljava/nio/FloatBuffer;

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getNumIndices()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/loopme/video360/objects/MDSphere3D;->mNumIndices:I

    return v0
.end method

.method public getTexCoordinateBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/loopme/video360/objects/MDSphere3D;->mTexCoordinateBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getVerticesBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/loopme/video360/objects/MDSphere3D;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public loadObj(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/loopme/video360/objects/MDSphere3D;->obtainObjResId()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/loopme/video360/common/GLUtil;->loadObject3D(Landroid/content/Context;ILcom/loopme/video360/objects/MDSphere3D;)V

    .line 42
    return-void
.end method

.method protected obtainObjResId()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/loopme/R$raw;->sphere:I

    return v0
.end method

.method public setNumIndices(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/loopme/video360/objects/MDSphere3D;->mNumIndices:I

    .line 54
    return-void
.end method

.method public setTexCoordinateBuffer(Ljava/nio/FloatBuffer;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/loopme/video360/objects/MDSphere3D;->mTexCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 70
    return-void
.end method

.method public setVerticesBuffer(Ljava/nio/FloatBuffer;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/loopme/video360/objects/MDSphere3D;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 62
    return-void
.end method

.method public uploadDataToProgram(Lcom/loopme/video360/MD360Program;)V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/4 v3, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/loopme/video360/objects/MDSphere3D;->getVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 27
    invoke-virtual {p0}, Lcom/loopme/video360/objects/MDSphere3D;->getTexCoordinateBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 28
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    invoke-virtual {p1}, Lcom/loopme/video360/MD360Program;->getPositionHandle()I

    move-result v0

    .line 32
    const/4 v1, 0x3

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 33
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 35
    invoke-virtual {p1}, Lcom/loopme/video360/MD360Program;->getTextureCoordinateHandle()I

    move-result v0

    .line 36
    const/4 v1, 0x2

    move v4, v3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 37
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 38
    return-void
.end method
