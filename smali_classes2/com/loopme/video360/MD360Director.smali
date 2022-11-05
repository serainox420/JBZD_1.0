.class public Lcom/loopme/video360/MD360Director;
.super Ljava/lang/Object;
.source "MD360Director.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/video360/MD360Director$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sDamping:F = 0.2f

.field private static final sDensity:F


# instance fields
.field private mAccelSupported:Z

.field private mAccumulatedRotation:[F

.field private mAngle:F

.field private mCallback:Lcom/loopme/View360Controller$Callback;

.field private mCurrentRotation:[F

.field private mCurrentViewQuarter:I

.field private mDeltaSensorX:F

.field private mDeltaSensorY:F

.field private mDeltaSensorZ:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mEyeX:F

.field private mEyeZ:F

.field private mGyroSupported:Z

.field private mHandledEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandledMotion:Z

.field private mLookX:F

.field private mMVMatrix:[F

.field private mMVPMatrix:[F

.field private mModelMatrix:[F

.field private mNear:F

.field private mPreviousX:F

.field private mPreviousY:F

.field private mProjectionMatrix:[F

.field private mRatio:F

.field private mTemporaryMatrix:[F

.field private mViewMatrix:[F

.field private mWasSwipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/loopme/video360/MD360Director;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/video360/MD360Director;->LOG_TAG:Ljava/lang/String;

    .line 18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/loopme/video360/MD360Director;->sDensity:F

    return-void
.end method

.method private constructor <init>(Lcom/loopme/video360/MD360Director$Builder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mModelMatrix:[F

    .line 22
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mViewMatrix:[F

    .line 23
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mProjectionMatrix:[F

    .line 25
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mMVMatrix:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mMVPMatrix:[F

    .line 28
    iput v2, p0, Lcom/loopme/video360/MD360Director;->mEyeZ:F

    .line 29
    iput v2, p0, Lcom/loopme/video360/MD360Director;->mEyeX:F

    .line 30
    iput v2, p0, Lcom/loopme/video360/MD360Director;->mAngle:F

    .line 31
    iput v2, p0, Lcom/loopme/video360/MD360Director;->mRatio:F

    .line 32
    iput v2, p0, Lcom/loopme/video360/MD360Director;->mNear:F

    .line 33
    iput v2, p0, Lcom/loopme/video360/MD360Director;->mLookX:F

    .line 35
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mCurrentRotation:[F

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mAccumulatedRotation:[F

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mTemporaryMatrix:[F

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mCurrentViewQuarter:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loopme/video360/MD360Director;->mHandledEvents:Ljava/util/List;

    .line 60
    invoke-static {p1}, Lcom/loopme/video360/MD360Director$Builder;->access$000(Lcom/loopme/video360/MD360Director$Builder;)F

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mEyeZ:F

    .line 61
    invoke-static {p1}, Lcom/loopme/video360/MD360Director$Builder;->access$100(Lcom/loopme/video360/MD360Director$Builder;)F

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mRatio:F

    .line 62
    invoke-static {p1}, Lcom/loopme/video360/MD360Director$Builder;->access$200(Lcom/loopme/video360/MD360Director$Builder;)F

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mNear:F

    .line 63
    invoke-static {p1}, Lcom/loopme/video360/MD360Director$Builder;->access$300(Lcom/loopme/video360/MD360Director$Builder;)F

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mAngle:F

    .line 64
    invoke-static {p1}, Lcom/loopme/video360/MD360Director$Builder;->access$400(Lcom/loopme/video360/MD360Director$Builder;)F

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mEyeX:F

    .line 65
    invoke-static {p1}, Lcom/loopme/video360/MD360Director$Builder;->access$500(Lcom/loopme/video360/MD360Director$Builder;)F

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mLookX:F

    .line 66
    invoke-direct {p0}, Lcom/loopme/video360/MD360Director;->initCamera()V

    .line 67
    invoke-direct {p0}, Lcom/loopme/video360/MD360Director;->initModel()V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/loopme/video360/MD360Director$Builder;Lcom/loopme/video360/MD360Director$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/loopme/video360/MD360Director;-><init>(Lcom/loopme/video360/MD360Director$Builder;)V

    return-void
.end method

.method public static builder()Lcom/loopme/video360/MD360Director$Builder;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/loopme/video360/MD360Director$Builder;

    invoke-direct {v0}, Lcom/loopme/video360/MD360Director$Builder;-><init>()V

    return-object v0
.end method

.method private detectViewQuarter(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v1, 0x42340000    # 45.0f

    .line 129
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 130
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->updateCurentViewQuarter(I)V

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 133
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->updateCurentViewQuarter(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->updateCurentViewQuarter(I)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->updateCurentViewQuarter(I)V

    goto :goto_0
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mCallback:Lcom/loopme/View360Controller$Callback;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mHandledEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mCallback:Lcom/loopme/View360Controller$Callback;

    invoke-interface {v0, p1}, Lcom/loopme/View360Controller$Callback;->onEvent(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mHandledEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    return-void
.end method

.method private initCamera()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/loopme/video360/MD360Director;->updateViewMatrix()V

    .line 145
    return-void
.end method

.method private initModel()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mAccumulatedRotation:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 149
    iget v0, p0, Lcom/loopme/video360/MD360Director;->mAngle:F

    invoke-virtual {p0, v0}, Lcom/loopme/video360/MD360Director;->updateModelRotate(F)V

    .line 150
    return-void
.end method

.method private updateCurentViewQuarter(I)V
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/loopme/video360/MD360Director;->mCurrentViewQuarter:I

    if-eq v0, p1, :cond_0

    .line 105
    iput p1, p0, Lcom/loopme/video360/MD360Director;->mCurrentViewQuarter:I

    .line 106
    const/4 v0, 0x0

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->handleEvent(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void

    .line 109
    :pswitch_0
    const-string v0, "FRONT"

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v0, "LEFT"

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v0, "RIGHT"

    goto :goto_0

    .line 121
    :pswitch_3
    const-string v0, "BACK"

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateProjectionNear(F)V
    .locals 8

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 193
    iput p1, p0, Lcom/loopme/video360/MD360Director;->mNear:F

    .line 194
    iget v0, p0, Lcom/loopme/video360/MD360Director;->mRatio:F

    neg-float v0, v0

    div-float v2, v0, v1

    .line 195
    iget v0, p0, Lcom/loopme/video360/MD360Director;->mRatio:F

    div-float v3, v0, v1

    .line 199
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    iget v6, p0, Lcom/loopme/video360/MD360Director;->mNear:F

    const/high16 v7, 0x43fa0000    # 500.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 200
    return-void
.end method

.method private updateViewMatrix()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 175
    iget v2, p0, Lcom/loopme/video360/MD360Director;->mEyeX:F

    .line 177
    iget v4, p0, Lcom/loopme/video360/MD360Director;->mEyeZ:F

    .line 178
    iget v5, p0, Lcom/loopme/video360/MD360Director;->mLookX:F

    .line 184
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 185
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mViewMatrix:[F

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v6, v3

    move v8, v3

    move v10, v3

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 186
    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const v6, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 80
    iget v1, p0, Lcom/loopme/video360/MD360Director;->mPreviousX:F

    sub-float v1, v2, v1

    sget v4, Lcom/loopme/video360/MD360Director;->sDensity:F

    div-float/2addr v1, v4

    mul-float/2addr v1, v6

    .line 81
    iget v4, p0, Lcom/loopme/video360/MD360Director;->mPreviousY:F

    sub-float v4, v3, v4

    sget v5, Lcom/loopme/video360/MD360Director;->sDensity:F

    div-float/2addr v4, v5

    mul-float/2addr v4, v6

    .line 82
    iget v5, p0, Lcom/loopme/video360/MD360Director;->mDeltaX:F

    add-float/2addr v1, v5

    iput v1, p0, Lcom/loopme/video360/MD360Director;->mDeltaX:F

    .line 83
    iget v1, p0, Lcom/loopme/video360/MD360Director;->mDeltaY:F

    add-float/2addr v1, v4

    iput v1, p0, Lcom/loopme/video360/MD360Director;->mDeltaY:F

    .line 84
    iput-boolean v0, p0, Lcom/loopme/video360/MD360Director;->mWasSwipe:Z

    .line 94
    :cond_0
    :goto_0
    iput v2, p0, Lcom/loopme/video360/MD360Director;->mPreviousX:F

    .line 95
    iput v3, p0, Lcom/loopme/video360/MD360Director;->mPreviousY:F

    .line 99
    :goto_1
    return v0

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 87
    iget-boolean v4, p0, Lcom/loopme/video360/MD360Director;->mWasSwipe:Z

    if-eqz v4, :cond_2

    .line 88
    iput-boolean v1, p0, Lcom/loopme/video360/MD360Director;->mWasSwipe:Z

    .line 89
    const-string v4, "SWIPE"

    invoke-direct {p0, v4}, Lcom/loopme/video360/MD360Director;->handleEvent(Ljava/lang/String;)V

    .line 91
    :cond_2
    iput-boolean v1, p0, Lcom/loopme/video360/MD360Director;->mHandledMotion:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method public setAccelSupported(Z)V
    .locals 0

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/loopme/video360/MD360Director;->mAccelSupported:Z

    .line 234
    return-void
.end method

.method setEventCallback(Lcom/loopme/View360Controller$Callback;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/loopme/video360/MD360Director;->mCallback:Lcom/loopme/View360Controller$Callback;

    .line 72
    return-void
.end method

.method public setGyroSupported(Z)V
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/loopme/video360/MD360Director;->mGyroSupported:Z

    .line 230
    return-void
.end method

.method public shot(Lcom/loopme/video360/MD360Program;)V
    .locals 13

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 156
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mCurrentRotation:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 157
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mCurrentRotation:[F

    iget v2, p0, Lcom/loopme/video360/MD360Director;->mDeltaY:F

    neg-float v2, v2

    iget v5, p0, Lcom/loopme/video360/MD360Director;->mDeltaSensorZ:F

    add-float/2addr v2, v5

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 158
    iget-object v5, p0, Lcom/loopme/video360/MD360Director;->mCurrentRotation:[F

    iget v0, p0, Lcom/loopme/video360/MD360Director;->mDeltaX:F

    neg-float v0, v0

    iget v2, p0, Lcom/loopme/video360/MD360Director;->mDeltaSensorY:F

    add-float v7, v0, v2

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 160
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mCurrentRotation:[F

    iget-object v2, p0, Lcom/loopme/video360/MD360Director;->mAccumulatedRotation:[F

    invoke-static {v0, v1, v2, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mTemporaryMatrix:[F

    iget-object v2, p0, Lcom/loopme/video360/MD360Director;->mModelMatrix:[F

    iget-object v4, p0, Lcom/loopme/video360/MD360Director;->mAccumulatedRotation:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 162
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mTemporaryMatrix:[F

    iget-object v2, p0, Lcom/loopme/video360/MD360Director;->mModelMatrix:[F

    invoke-static {v0, v1, v2, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mMVMatrix:[F

    iget-object v2, p0, Lcom/loopme/video360/MD360Director;->mViewMatrix:[F

    iget-object v4, p0, Lcom/loopme/video360/MD360Director;->mModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 164
    iget-object v0, p0, Lcom/loopme/video360/MD360Director;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/loopme/video360/MD360Director;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/loopme/video360/MD360Director;->mMVMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 165
    invoke-virtual {p1}, Lcom/loopme/video360/MD360Program;->getMVMatrixHandle()I

    move-result v0

    iget-object v2, p0, Lcom/loopme/video360/MD360Director;->mMVMatrix:[F

    invoke-static {v0, v11, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 166
    invoke-virtual {p1}, Lcom/loopme/video360/MD360Program;->getMVPMatrixHandle()I

    move-result v0

    iget-object v2, p0, Lcom/loopme/video360/MD360Director;->mMVPMatrix:[F

    invoke-static {v0, v11, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 167
    return-void
.end method

.method protected updateModelRotate(F)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/loopme/video360/MD360Director;->mAngle:F

    .line 190
    return-void
.end method

.method public updateProjection(II)V
    .locals 2

    .prologue
    .line 170
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mRatio:F

    .line 171
    iget v0, p0, Lcom/loopme/video360/MD360Director;->mNear:F

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->updateProjectionNear(F)V

    .line 172
    return-void
.end method

.method public updateSensorInfo([F)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 212
    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mDeltaSensorX:F

    .line 213
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mDeltaSensorY:F

    .line 214
    aget v0, p1, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/loopme/video360/MD360Director;->mDeltaSensorZ:F

    .line 216
    iget-boolean v0, p0, Lcom/loopme/video360/MD360Director;->mHandledMotion:Z

    if-nez v0, :cond_2

    .line 217
    iget-boolean v0, p0, Lcom/loopme/video360/MD360Director;->mAccelSupported:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "ACCEL"

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->handleEvent(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-boolean v0, p0, Lcom/loopme/video360/MD360Director;->mGyroSupported:Z

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "GYRO"

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->handleEvent(Ljava/lang/String;)V

    .line 223
    :cond_1
    iput-boolean v2, p0, Lcom/loopme/video360/MD360Director;->mHandledMotion:Z

    .line 225
    :cond_2
    iget v0, p0, Lcom/loopme/video360/MD360Director;->mDeltaSensorY:F

    invoke-direct {p0, v0}, Lcom/loopme/video360/MD360Director;->detectViewQuarter(F)V

    .line 226
    return-void
.end method
