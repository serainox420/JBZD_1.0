.class public Lcom/facebook/drawee/generic/RoundingParams;
.super Ljava/lang/Object;
.source "RoundingParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    }
.end annotation


# instance fields
.field private mBorderColor:I

.field private mBorderWidth:F

.field private mCornersRadii:[F

.field private mOverlayColor:I

.field private mPadding:F

.field private mRoundAsCircle:Z

.field private mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 43
    iput-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundAsCircle:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    .line 45
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mOverlayColor:I

    .line 46
    iput v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    .line 47
    iput v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderColor:I

    .line 48
    iput v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mPadding:F

    return-void
.end method

.method public static asCircle()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/RoundingParams;->setRoundAsCircle(Z)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method public static fromCornersRadii(FFFF)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 179
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public static fromCornersRadii([F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadii([F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method public static fromCornersRadius(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/generic/RoundingParams;->setCornersRadius(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateRoundedCornersRadii()[F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    if-nez v0, :cond_0

    .line 157
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    if-ne p0, p1, :cond_1

    .line 246
    const/4 v0, 0x1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 252
    check-cast p1, Lcom/facebook/drawee/generic/RoundingParams;

    .line 254
    iget-boolean v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundAsCircle:Z

    iget-boolean v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->mRoundAsCircle:Z

    if-ne v1, v2, :cond_0

    .line 258
    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mOverlayColor:I

    iget v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->mOverlayColor:I

    if-ne v1, v2, :cond_0

    .line 262
    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderColor:I

    iget v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->mBorderColor:I

    if-ne v1, v2, :cond_0

    .line 270
    iget v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->mPadding:F

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mPadding:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iget-object v2, p1, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-ne v1, v2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    iget-object v1, p1, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    return v0
.end method

.method public getCornersRadii()[F
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    return-object v0
.end method

.method public getOverlayColor()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mOverlayColor:I

    return v0
.end method

.method public getPadding()F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mPadding:F

    return v0
.end method

.method public getRoundAsCircle()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundAsCircle:Z

    return v0
.end method

.method public getRoundingMethod()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->hashCode()I

    move-result v0

    .line 285
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundAsCircle:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 286
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mCornersRadii:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 287
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mOverlayColor:I

    add-int/2addr v0, v2

    .line 288
    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderColor:I

    add-int/2addr v0, v2

    .line 290
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mPadding:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mPadding:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 292
    return v0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_0

    :cond_2
    move v0, v1

    .line 285
    goto :goto_1

    :cond_3
    move v0, v1

    .line 286
    goto :goto_2

    :cond_4
    move v0, v1

    .line 288
    goto :goto_3
.end method

.method public setBorder(IF)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "the border width cannot be < 0"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 223
    iput p2, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    .line 224
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderColor:I

    .line 225
    return-object p0

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBorderColor(I)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderColor:I

    .line 208
    return-object p0
.end method

.method public setBorderWidth(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "the border width cannot be < 0"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 193
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mBorderWidth:F

    .line 194
    return-object p0

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCornersRadii(FFFF)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/facebook/drawee/generic/RoundingParams;->getOrCreateRoundedCornersRadii()[F

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput p1, v0, v2

    aput p1, v0, v1

    .line 93
    const/4 v1, 0x2

    const/4 v2, 0x3

    aput p2, v0, v2

    aput p2, v0, v1

    .line 94
    const/4 v1, 0x4

    const/4 v2, 0x5

    aput p3, v0, v2

    aput p3, v0, v1

    .line 95
    const/4 v1, 0x6

    const/4 v2, 0x7

    aput p4, v0, v2

    aput p4, v0, v1

    .line 96
    return-object p0
.end method

.method public setCornersRadii([F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 107
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    array-length v0, p1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "radii should have exactly 8 values"

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 109
    invoke-direct {p0}, Lcom/facebook/drawee/generic/RoundingParams;->getOrCreateRoundedCornersRadii()[F

    move-result-object v0

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    return-object p0

    :cond_0
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public setCornersRadius(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/facebook/drawee/generic/RoundingParams;->getOrCreateRoundedCornersRadii()[F

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 74
    return-object p0
.end method

.method public setOverlayColor(I)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .prologue
    .line 145
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mOverlayColor:I

    .line 146
    sget-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    iput-object v0, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 147
    return-object p0
.end method

.method public setPadding(F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "the padding cannot be < 0"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 234
    iput p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mPadding:F

    .line 235
    return-object p0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoundAsCircle(Z)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundAsCircle:Z

    .line 58
    return-object p0
.end method

.method public setRoundingMethod(Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/drawee/generic/RoundingParams;->mRoundingMethod:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 131
    return-object p0
.end method
