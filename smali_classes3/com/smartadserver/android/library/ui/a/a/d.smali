.class public Lcom/smartadserver/android/library/ui/a/a/d;
.super Ljava/lang/Object;
.source "SASGLUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_0
    return-void
.end method

.method public static a([F)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    move v1, v0

    .line 62
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 63
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 72
    :cond_0
    return v0

    .line 62
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
