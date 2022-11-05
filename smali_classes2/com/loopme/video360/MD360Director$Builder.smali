.class public Lcom/loopme/video360/MD360Director$Builder;
.super Ljava/lang/Object;
.source "MD360Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/video360/MD360Director;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAngle:F

.field private mEyeX:F

.field private mEyeZ:F

.field private mLookX:F

.field private mNear:F

.field private mRatio:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput v1, p0, Lcom/loopme/video360/MD360Director$Builder;->mEyeZ:F

    .line 242
    iput v1, p0, Lcom/loopme/video360/MD360Director$Builder;->mAngle:F

    .line 243
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mRatio:F

    .line 244
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mNear:F

    .line 245
    iput v1, p0, Lcom/loopme/video360/MD360Director$Builder;->mEyeX:F

    .line 246
    iput v1, p0, Lcom/loopme/video360/MD360Director$Builder;->mLookX:F

    return-void
.end method

.method static synthetic access$000(Lcom/loopme/video360/MD360Director$Builder;)F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mEyeZ:F

    return v0
.end method

.method static synthetic access$100(Lcom/loopme/video360/MD360Director$Builder;)F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mRatio:F

    return v0
.end method

.method static synthetic access$200(Lcom/loopme/video360/MD360Director$Builder;)F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mNear:F

    return v0
.end method

.method static synthetic access$300(Lcom/loopme/video360/MD360Director$Builder;)F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mAngle:F

    return v0
.end method

.method static synthetic access$400(Lcom/loopme/video360/MD360Director$Builder;)F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mEyeX:F

    return v0
.end method

.method static synthetic access$500(Lcom/loopme/video360/MD360Director$Builder;)F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/loopme/video360/MD360Director$Builder;->mLookX:F

    return v0
.end method


# virtual methods
.method public build()Lcom/loopme/video360/MD360Director;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/loopme/video360/MD360Director;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loopme/video360/MD360Director;-><init>(Lcom/loopme/video360/MD360Director$Builder;Lcom/loopme/video360/MD360Director$1;)V

    return-object v0
.end method
