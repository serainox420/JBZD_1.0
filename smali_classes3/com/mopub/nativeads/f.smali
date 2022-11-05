.class Lcom/mopub/nativeads/f;
.super Ljava/lang/Object;
.source "PlacementData.java"


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final a:[I

.field private final b:[I

.field private c:I

.field private final d:[I

.field private final e:[I

.field private final f:[Lcom/mopub/nativeads/NativeAd;

.field private g:I


# direct methods
.method private constructor <init>([I)V
    .locals 3

    .prologue
    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    .line 134
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/f;->b:[I

    .line 135
    iput v2, p0, Lcom/mopub/nativeads/f;->c:I

    .line 136
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    .line 137
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/f;->e:[I

    .line 138
    new-array v0, v1, [Lcom/mopub/nativeads/NativeAd;

    iput-object v0, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    .line 139
    iput v2, p0, Lcom/mopub/nativeads/f;->g:I

    .line 145
    array-length v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/f;->c:I

    .line 146
    iget-object v0, p0, Lcom/mopub/nativeads/f;->b:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    return-void
.end method

.method private static a([III)I
    .locals 3

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/f;->a([IIII)I

    move-result v0

    .line 477
    if-gez v0, :cond_0

    .line 478
    xor-int/lit8 v0, v0, -0x1

    .line 486
    :goto_0
    return v0

    .line 481
    :cond_0
    aget v1, p0, v0

    .line 482
    :goto_1
    if-ltz v0, :cond_1

    aget v2, p0, v0

    if-ne v2, v1, :cond_1

    .line 483
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 486
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([IIII)I
    .locals 4

    .prologue
    .line 510
    .line 511
    add-int/lit8 v0, p2, -0x1

    move v1, p1

    .line 513
    :goto_0
    if-gt v1, v0, :cond_2

    .line 514
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 515
    aget v3, p0, v2

    .line 517
    if-ge v3, p3, :cond_0

    .line 518
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 519
    :cond_0
    if-le v3, p3, :cond_1

    .line 520
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 525
    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method static a()Lcom/mopub/nativeads/f;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/mopub/nativeads/f;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/f;-><init>([I)V

    return-object v0
.end method

.method static a(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/f;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->a()Ljava/util/List;

    move-result-object v3

    .line 153
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->b()I

    move-result v4

    .line 155
    const v0, 0x7fffffff

    if-ne v4, v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 156
    :goto_0
    new-array v5, v1, [I

    .line 162
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v0, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    .line 164
    add-int/lit8 v3, v2, 0x1

    aput v0, v5, v2

    move v2, v3

    .line 165
    goto :goto_1

    .line 155
    :cond_0
    const/16 v0, 0xc8

    move v1, v0

    goto :goto_0

    .line 168
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_2

    .line 169
    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    .line 170
    add-int/lit8 v3, v2, 0x1

    aput v0, v5, v2

    move v2, v3

    goto :goto_2

    .line 172
    :cond_2
    new-instance v0, Lcom/mopub/nativeads/f;

    invoke-direct {v0, v5}, Lcom/mopub/nativeads/f;-><init>([I)V

    return-object v0
.end method

.method private static b([III)I
    .locals 3

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/f;->a([IIII)I

    move-result v0

    .line 494
    if-gez v0, :cond_1

    .line 495
    xor-int/lit8 v0, v0, -0x1

    .line 503
    :cond_0
    return v0

    .line 498
    :cond_1
    aget v1, p0, v0

    .line 499
    :goto_0
    if-ge v0, p1, :cond_0

    aget v2, p0, v0

    if-ne v2, v1, :cond_0

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(II)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 348
    iget v0, p0, Lcom/mopub/nativeads/f;->g:I

    new-array v3, v0, [I

    .line 349
    iget v0, p0, Lcom/mopub/nativeads/f;->g:I

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 354
    :goto_0
    iget v5, p0, Lcom/mopub/nativeads/f;->g:I

    if-ge v0, v5, :cond_2

    .line 355
    iget-object v5, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v5, v5, v0

    .line 356
    iget-object v6, p0, Lcom/mopub/nativeads/f;->e:[I

    aget v6, v6, v0

    .line 357
    if-gt p1, v6, :cond_1

    if-ge v6, p2, :cond_1

    .line 360
    aput v5, v3, v2

    .line 361
    sub-int v5, v6, v2

    aput v5, v4, v2

    .line 364
    iget-object v5, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 365
    iget-object v5, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 366
    add-int/lit8 v2, v2, 0x1

    .line 354
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    if-lez v2, :cond_0

    .line 369
    sub-int v7, v0, v2

    .line 370
    iget-object v8, p0, Lcom/mopub/nativeads/f;->d:[I

    aput v5, v8, v7

    .line 371
    iget-object v5, p0, Lcom/mopub/nativeads/f;->e:[I

    sub-int/2addr v6, v2

    aput v6, v5, v7

    .line 372
    iget-object v5, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    iget-object v6, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object v6, v6, v0

    aput-object v6, v5, v7

    goto :goto_1

    .line 377
    :cond_2
    if-nez v2, :cond_3

    .line 401
    :goto_2
    return v1

    .line 384
    :cond_3
    aget v0, v4, v1

    .line 385
    iget-object v5, p0, Lcom/mopub/nativeads/f;->b:[I

    iget v6, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {v5, v6, v0}, Lcom/mopub/nativeads/f;->a([III)I

    move-result v5

    .line 387
    iget v0, p0, Lcom/mopub/nativeads/f;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-lt v0, v5, :cond_4

    .line 388
    iget-object v6, p0, Lcom/mopub/nativeads/f;->a:[I

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/mopub/nativeads/f;->a:[I

    aget v8, v8, v0

    aput v8, v6, v7

    .line 389
    iget-object v6, p0, Lcom/mopub/nativeads/f;->b:[I

    add-int v7, v0, v2

    iget-object v8, p0, Lcom/mopub/nativeads/f;->b:[I

    aget v8, v8, v0

    sub-int/2addr v8, v2

    aput v8, v6, v7

    .line 387
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 393
    :cond_4
    :goto_4
    if-ge v1, v2, :cond_5

    .line 394
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    add-int v6, v5, v1

    aget v7, v3, v1

    aput v7, v0, v6

    .line 395
    iget-object v0, p0, Lcom/mopub/nativeads/f;->b:[I

    add-int v6, v5, v1

    aget v7, v4, v1

    aput v7, v0, v6

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 399
    :cond_5
    iget v0, p0, Lcom/mopub/nativeads/f;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/nativeads/f;->c:I

    .line 400
    iget v0, p0, Lcom/mopub/nativeads/f;->g:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/nativeads/f;->g:I

    move v1, v2

    .line 401
    goto :goto_2
.end method

.method a(ILcom/mopub/nativeads/NativeAd;)V
    .locals 7

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mopub/nativeads/f;->b:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->a([III)I

    move-result v0

    .line 221
    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/mopub/nativeads/f;->b:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 223
    :cond_0
    const-string v0, "Attempted to insert an ad at an invalid position"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 259
    :cond_1
    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/mopub/nativeads/f;->a:[I

    aget v1, v1, v0

    .line 229
    iget-object v2, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v3, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v2, v3, v1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result v2

    .line 231
    iget v3, p0, Lcom/mopub/nativeads/f;->g:I

    if-ge v2, v3, :cond_3

    .line 232
    iget v3, p0, Lcom/mopub/nativeads/f;->g:I

    sub-int/2addr v3, v2

    .line 233
    iget-object v4, p0, Lcom/mopub/nativeads/f;->d:[I

    iget-object v5, p0, Lcom/mopub/nativeads/f;->d:[I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v4, p0, Lcom/mopub/nativeads/f;->e:[I

    iget-object v5, p0, Lcom/mopub/nativeads/f;->e:[I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v4, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    iget-object v5, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    :cond_3
    iget-object v3, p0, Lcom/mopub/nativeads/f;->d:[I

    aput v1, v3, v2

    .line 240
    iget-object v1, p0, Lcom/mopub/nativeads/f;->e:[I

    aput p1, v1, v2

    .line 241
    iget-object v1, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    aput-object p2, v1, v2

    .line 242
    iget v1, p0, Lcom/mopub/nativeads/f;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/nativeads/f;->g:I

    .line 245
    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 246
    iget-object v3, p0, Lcom/mopub/nativeads/f;->b:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/mopub/nativeads/f;->b:[I

    invoke-static {v3, v4, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v3, p0, Lcom/mopub/nativeads/f;->a:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/mopub/nativeads/f;->a:[I

    invoke-static {v3, v4, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mopub/nativeads/f;->c:I

    .line 253
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    if-ge v0, v1, :cond_4

    .line 254
    iget-object v1, p0, Lcom/mopub/nativeads/f;->b:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_4
    add-int/lit8 v0, v2, 0x1

    :goto_1
    iget v1, p0, Lcom/mopub/nativeads/f;->g:I

    if-ge v0, v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/mopub/nativeads/f;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/mopub/nativeads/f;->b:[I

    iget v2, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {v1, v0, v2, p1}, Lcom/mopub/nativeads/f;->a([IIII)I

    move-result v1

    .line 185
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method b(I)I
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mopub/nativeads/f;->b:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result v0

    .line 195
    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v0, -0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/f;->b:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method b(II)V
    .locals 0

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/f;->j(I)V

    .line 469
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/f;->i(I)V

    .line 470
    return-void
.end method

.method b()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    iget v0, p0, Lcom/mopub/nativeads/f;->g:I

    new-array v0, v0, [I

    .line 289
    iget-object v1, p0, Lcom/mopub/nativeads/f;->e:[I

    iget v2, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 409
    iget v0, p0, Lcom/mopub/nativeads/f;->g:I

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mopub/nativeads/f;->e:[I

    iget v2, p0, Lcom/mopub/nativeads/f;->g:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/f;->a(II)I

    goto :goto_0
.end method

.method c(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Lcom/mopub/nativeads/f;->e:[I

    iget v2, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v1, v0, v2, p1}, Lcom/mopub/nativeads/f;->a([IIII)I

    move-result v1

    .line 266
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method d(I)Lcom/mopub/nativeads/NativeAd;
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mopub/nativeads/f;->e:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v0, v1, v2, p1}, Lcom/mopub/nativeads/f;->a([IIII)I

    move-result v0

    .line 276
    if-gez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/f;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method e(I)I
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mopub/nativeads/f;->e:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v0, v1, v2, p1}, Lcom/mopub/nativeads/f;->a([IIII)I

    move-result v0

    .line 300
    if-gez v0, :cond_0

    .line 301
    xor-int/lit8 v0, v0, -0x1

    sub-int v0, p1, v0

    .line 305
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method f(I)I
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result v0

    .line 314
    add-int/2addr v0, p1

    return v0
.end method

.method g(I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 321
    if-nez p1, :cond_1

    .line 322
    const/4 v0, 0x0

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/f;->e(I)I

    move-result v1

    .line 327
    if-eq v1, v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method h(I)I
    .locals 1

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/f;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method i(I)V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->a([III)I

    move-result v0

    .line 424
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    if-ge v0, v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/mopub/nativeads/f;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 426
    iget-object v1, p0, Lcom/mopub/nativeads/f;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->a([III)I

    move-result v0

    .line 432
    :goto_1
    iget v1, p0, Lcom/mopub/nativeads/f;->g:I

    if-ge v0, v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 434
    iget-object v1, p0, Lcom/mopub/nativeads/f;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    :cond_1
    return-void
.end method

.method j(I)V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mopub/nativeads/f;->a:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result v0

    .line 450
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/f;->c:I

    if-ge v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/mopub/nativeads/f;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 452
    iget-object v1, p0, Lcom/mopub/nativeads/f;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/f;->d:[I

    iget v1, p0, Lcom/mopub/nativeads/f;->g:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/f;->b([III)I

    move-result v0

    .line 458
    :goto_1
    iget v1, p0, Lcom/mopub/nativeads/f;->g:I

    if-ge v0, v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/mopub/nativeads/f;->d:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 460
    iget-object v1, p0, Lcom/mopub/nativeads/f;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    :cond_1
    return-void
.end method
