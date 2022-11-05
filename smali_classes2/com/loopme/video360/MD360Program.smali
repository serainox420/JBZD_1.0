.class public Lcom/loopme/video360/MD360Program;
.super Ljava/lang/Object;
.source "MD360Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/video360/MD360Program$FragmentShaderFactory;
    }
.end annotation


# instance fields
.field private mContentType:I

.field private mMVMatrixHandle:I

.field private mMVPMatrixHandle:I

.field private mPositionHandle:I

.field private mProgramHandle:I

.field private mTextureCoordinateHandle:I

.field private mTextureUniformHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/loopme/video360/MD360Program;->mContentType:I

    .line 23
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/loopme/video360/MD360Program;->getVertexShader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0, p1}, Lcom/loopme/video360/MD360Program;->getFragmentShader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const v2, 0x8b31

    invoke-static {v2, v0}, Lcom/loopme/video360/common/GLUtil;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 39
    const v2, 0x8b30

    invoke-static {v2, v1}, Lcom/loopme/video360/common/GLUtil;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 41
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a_Position"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "a_TexCoordinate"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/loopme/video360/common/GLUtil;->createAndLinkProgram(II[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Program;->mProgramHandle:I

    .line 45
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mProgramHandle:I

    const-string v1, "u_MVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Program;->mMVPMatrixHandle:I

    .line 46
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mProgramHandle:I

    const-string v1, "u_MVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Program;->mMVMatrixHandle:I

    .line 47
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mProgramHandle:I

    const-string v1, "u_Texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Program;->mTextureUniformHandle:I

    .line 48
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mProgramHandle:I

    const-string v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Program;->mPositionHandle:I

    .line 49
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mProgramHandle:I

    const-string v1, "a_TexCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Program;->mTextureCoordinateHandle:I

    .line 50
    return-void
.end method

.method protected getFragmentShader(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mContentType:I

    invoke-static {p1, v0}, Lcom/loopme/video360/MD360Program$FragmentShaderFactory;->fs(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMVMatrixHandle()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mMVMatrixHandle:I

    return v0
.end method

.method public getMVPMatrixHandle()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mMVPMatrixHandle:I

    return v0
.end method

.method public getPositionHandle()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mPositionHandle:I

    return v0
.end method

.method public getTextureCoordinateHandle()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mTextureCoordinateHandle:I

    return v0
.end method

.method public getTextureUniformHandle()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mTextureUniformHandle:I

    return v0
.end method

.method protected getVertexShader(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/loopme/R$raw;->per_pixel_vertex_shader:I

    invoke-static {p1, v0}, Lcom/loopme/video360/common/GLUtil;->readTextFileFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public use()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/loopme/video360/MD360Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 62
    return-void
.end method
