.class Lcom/adcolony/sdk/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/ai$a;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x4

.field static final d:I = 0x1

.field static final e:I = 0x2

.field static final f:I = 0x200

.field static g:I

.field static h:Ljava/nio/ByteBuffer;

.field static i:Ljava/nio/IntBuffer;

.field static j:Landroid/graphics/BitmapFactory$Options;

.field static k:[I


# instance fields
.field A:Lcom/adcolony/sdk/ak;

.field B:Lcom/adcolony/sdk/ak;

.field C:Lcom/adcolony/sdk/ak;

.field D:Lcom/adcolony/sdk/ak;

.field E:Lcom/adcolony/sdk/ak;

.field F:Lcom/adcolony/sdk/ak;

.field l:I

.field m:I

.field n:I

.field o:I

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/ai$a;",
            ">;"
        }
    .end annotation
.end field

.field q:I

.field r:I

.field s:Z

.field t:Z

.field u:Lcom/adcolony/sdk/ai$a;

.field v:I

.field w:Ljava/nio/FloatBuffer;

.field x:Ljava/nio/FloatBuffer;

.field y:Ljava/nio/IntBuffer;

.field z:Lcom/adcolony/sdk/at;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    sput v1, Lcom/adcolony/sdk/ai;->g:I

    .line 38
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/ai;->j:Landroid/graphics/BitmapFactory$Options;

    .line 40
    new-array v0, v1, [I

    sput-object v0, Lcom/adcolony/sdk/ai;->k:[I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->p:Ljava/util/ArrayList;

    .line 55
    iput-boolean v1, p0, Lcom/adcolony/sdk/ai;->s:Z

    .line 56
    iput-boolean v1, p0, Lcom/adcolony/sdk/ai;->t:Z

    .line 66
    new-instance v0, Lcom/adcolony/sdk/at;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/at;-><init>(Lcom/adcolony/sdk/ai;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->z:Lcom/adcolony/sdk/at;

    .line 79
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->w:Ljava/nio/FloatBuffer;

    .line 82
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->w:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 84
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->x:Ljava/nio/FloatBuffer;

    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 89
    const/16 v0, 0x800

    const/high16 v1, 0x400000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->y:Ljava/nio/IntBuffer;

    .line 92
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->y:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    return-void
.end method


# virtual methods
.method a(I)Lcom/adcolony/sdk/ai$a;
    .locals 3

    .prologue
    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ai$a;

    .line 255
    iget v2, v0, Lcom/adcolony/sdk/ai$a;->b:I

    if-ne v2, p1, :cond_0

    .line 260
    :goto_1
    return-object v0

    .line 252
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/ai$a;
    .locals 5

    .prologue
    const/high16 v0, 0x400000

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 196
    :goto_0
    if-ge v2, v3, :cond_0

    .line 198
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_0
    :goto_1
    if-ge v1, v4, :cond_1

    .line 202
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    :cond_1
    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    .line 207
    sget-object v2, Lcom/adcolony/sdk/ai;->h:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/adcolony/sdk/ai;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 209
    :cond_2
    if-ge v1, v0, :cond_4

    .line 213
    :goto_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/ai;->h:Ljava/nio/ByteBuffer;

    .line 214
    sget-object v0, Lcom/adcolony/sdk/ai;->h:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 215
    sget-object v0, Lcom/adcolony/sdk/ai;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/ai;->i:Ljava/nio/IntBuffer;

    .line 218
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/ai;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 219
    sget-object v0, Lcom/adcolony/sdk/ai;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    new-instance v0, Lcom/adcolony/sdk/ai$a;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ai$a;-><init>(Lcom/adcolony/sdk/ai;)V

    .line 224
    iget-object v1, p0, Lcom/adcolony/sdk/ai;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/adcolony/sdk/ai;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1, v3, v4}, Lcom/adcolony/sdk/ai$a;->a(Ljava/nio/IntBuffer;II)Lcom/adcolony/sdk/ai$a;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method a(Ljava/io/InputStream;)Lcom/adcolony/sdk/ai$a;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 435
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 437
    sget-object v0, Lcom/adcolony/sdk/ai;->j:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 438
    const/4 v0, 0x0

    sget-object v1, Lcom/adcolony/sdk/ai;->j:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 440
    if-nez v0, :cond_0

    .line 442
    const-string v0, "ADC3"

    const-string v1, "Failed to decode input stream."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ai;->a(Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/ai$a;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/adcolony/sdk/ai$a;
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 416
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 418
    sget-object v0, Lcom/adcolony/sdk/ai;->j:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 419
    sget-object v0, Lcom/adcolony/sdk/ai;->j:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    if-nez v0, :cond_0

    .line 423
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 427
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ai;->a(Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/ai$a;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ai;->b(Lcom/adcolony/sdk/ai$a;)V

    .line 135
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->z:Lcom/adcolony/sdk/at;

    invoke-virtual {v0}, Lcom/adcolony/sdk/at;->b()V

    .line 136
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->b()V

    .line 137
    return-void
.end method

.method a(DDDDI)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 101
    shr-int/lit8 v2, p9, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 102
    shr-int/lit8 v3, p9, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 103
    shr-int/lit8 v4, p9, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 104
    move/from16 v0, p9

    and-int/lit16 v5, v0, 0xff

    .line 106
    if-lez v2, :cond_0

    .line 108
    iput-boolean v7, p0, Lcom/adcolony/sdk/ai;->t:Z

    .line 110
    :cond_0
    const/16 v6, 0xff

    if-ge v2, v6, :cond_1

    .line 112
    iput-boolean v7, p0, Lcom/adcolony/sdk/ai;->s:Z

    .line 115
    :cond_1
    mul-int/2addr v3, v2

    div-int/lit16 v3, v3, 0xff

    .line 116
    mul-int/2addr v4, v2

    div-int/lit16 v4, v4, 0xff

    .line 117
    mul-int/2addr v5, v2

    div-int/lit16 v5, v5, 0xff

    .line 119
    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 121
    iget-object v3, p0, Lcom/adcolony/sdk/ai;->w:Ljava/nio/FloatBuffer;

    double-to-float v4, p1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 122
    iget-object v3, p0, Lcom/adcolony/sdk/ai;->w:Ljava/nio/FloatBuffer;

    double-to-float v4, p3

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 123
    iget-object v3, p0, Lcom/adcolony/sdk/ai;->x:Ljava/nio/FloatBuffer;

    move-wide/from16 v0, p5

    double-to-float v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 124
    iget-object v3, p0, Lcom/adcolony/sdk/ai;->x:Ljava/nio/FloatBuffer;

    move-wide/from16 v0, p7

    double-to-float v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 125
    iget-object v3, p0, Lcom/adcolony/sdk/ai;->y:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 126
    iget v2, p0, Lcom/adcolony/sdk/ai;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/adcolony/sdk/ai;->v:I

    .line 127
    return-void
.end method

.method a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 468
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADCRenderer on_surface_changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    iput p1, p0, Lcom/adcolony/sdk/ai;->l:I

    .line 470
    iput p2, p0, Lcom/adcolony/sdk/ai;->m:I

    .line 471
    iput p1, p0, Lcom/adcolony/sdk/ai;->n:I

    .line 472
    iput p2, p0, Lcom/adcolony/sdk/ai;->o:I

    .line 473
    invoke-static {v3, v3, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 474
    return-void
.end method

.method a(IID)V
    .locals 3

    .prologue
    .line 514
    iput p1, p0, Lcom/adcolony/sdk/ai;->n:I

    .line 515
    iput p2, p0, Lcom/adcolony/sdk/ai;->o:I

    .line 516
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->z:Lcom/adcolony/sdk/at;

    iget-object v1, p0, Lcom/adcolony/sdk/ai;->z:Lcom/adcolony/sdk/at;

    iget-object v1, v1, Lcom/adcolony/sdk/at;->d:Lcom/adcolony/sdk/x;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/adcolony/sdk/x;->a(IID)Lcom/adcolony/sdk/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/at;->a(Lcom/adcolony/sdk/x;)V

    .line 517
    return-void
.end method

.method a(IIDI)V
    .locals 7

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 144
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 153
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 155
    const/16 v0, 0x4000

    .line 156
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v5

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v5

    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v5

    shr-int/lit8 v4, p2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 159
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 161
    or-int/lit16 v0, v0, 0x100

    .line 162
    double-to-float v1, p3

    invoke-static {v1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 165
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 167
    or-int/lit16 v0, v0, 0x400

    .line 168
    invoke-static {p5}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 171
    :cond_3
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    goto :goto_0
.end method

.method a(IIII)V
    .locals 8

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 483
    iget v0, p0, Lcom/adcolony/sdk/ai;->l:I

    int-to-double v0, v0

    iget v2, p0, Lcom/adcolony/sdk/ai;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 484
    iget v2, p0, Lcom/adcolony/sdk/ai;->m:I

    int-to-double v2, v2

    iget v4, p0, Lcom/adcolony/sdk/ai;->o:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 486
    int-to-double v4, p3

    mul-double/2addr v4, v0

    double-to-int v4, v4

    .line 487
    int-to-double v6, p4

    mul-double/2addr v6, v2

    double-to-int v5, v6

    .line 488
    int-to-double v6, p1

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 489
    iget v1, p0, Lcom/adcolony/sdk/ai;->m:I

    int-to-double v6, p2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    .line 492
    invoke-static {v0, v1, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 493
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 494
    return-void
.end method

.method a(Lcom/adcolony/sdk/ai$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/adcolony/sdk/ai;->k:[I

    iget v1, p1, Lcom/adcolony/sdk/ai$a;->b:I

    aput v1, v0, v2

    .line 235
    const/4 v0, 0x1

    sget-object v1, Lcom/adcolony/sdk/ai;->k:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 236
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 180
    const/16 v0, 0xc11

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 181
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/adcolony/sdk/ai;->q:I

    if-ne p1, v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 530
    iput p1, p0, Lcom/adcolony/sdk/ai;->q:I

    goto :goto_0
.end method

.method b(IIII)V
    .locals 2

    .prologue
    .line 538
    or-int/lit8 v0, p1, 0x2

    .line 539
    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0xc

    or-int/2addr v0, v1

    shl-int/lit8 v1, p4, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/ai;->b(I)V

    .line 540
    return-void
.end method

.method b(Lcom/adcolony/sdk/ai$a;)V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->u:Lcom/adcolony/sdk/ai$a;

    if-ne p1, v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 552
    iput-object p1, p0, Lcom/adcolony/sdk/ai;->u:Lcom/adcolony/sdk/ai$a;

    goto :goto_0
.end method

.method c()V
    .locals 0

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 244
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->b()V

    .line 245
    return-void
.end method

.method d()V
    .locals 7

    .prologue
    const v6, 0x46180400    # 9729.0f

    const/high16 v5, 0x46180000    # 9728.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, 0xde1

    .line 268
    iget v0, p0, Lcom/adcolony/sdk/ai;->v:I

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->z:Lcom/adcolony/sdk/at;

    invoke-virtual {v0}, Lcom/adcolony/sdk/at;->g()V

    .line 276
    iget v0, p0, Lcom/adcolony/sdk/ai;->q:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 279
    iget v0, p0, Lcom/adcolony/sdk/ai;->q:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 297
    :goto_1
    iget v3, p0, Lcom/adcolony/sdk/ai;->q:I

    shr-int/lit8 v3, v3, 0xc

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_1

    move v3, v1

    .line 315
    :goto_2
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 316
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 324
    :goto_3
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->u:Lcom/adcolony/sdk/ai$a;

    if-eqz v0, :cond_6

    .line 326
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 328
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 329
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->u:Lcom/adcolony/sdk/ai$a;

    iget v0, v0, Lcom/adcolony/sdk/ai$a;->a:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 331
    iget v0, p0, Lcom/adcolony/sdk/ai;->q:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_2

    .line 333
    const/16 v0, 0x2802

    const v3, 0x46240400    # 10497.0f

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 334
    const/16 v0, 0x2803

    const v3, 0x46240400    # 10497.0f

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 342
    :goto_4
    iget v0, p0, Lcom/adcolony/sdk/ai;->q:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 344
    const/16 v0, 0x2801

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 345
    const/16 v0, 0x2800

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 353
    :goto_5
    iget v0, p0, Lcom/adcolony/sdk/ai;->q:I

    const/high16 v3, 0xff0000

    and-int/2addr v0, v3

    sparse-switch v0, :sswitch_data_0

    .line 381
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->B:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    .line 391
    :goto_6
    iget v0, p0, Lcom/adcolony/sdk/ai;->r:I

    packed-switch v0, :pswitch_data_2

    .line 403
    :goto_7
    iput v1, p0, Lcom/adcolony/sdk/ai;->v:I

    .line 404
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->w:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 405
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 406
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->y:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 407
    iput-boolean v2, p0, Lcom/adcolony/sdk/ai;->s:Z

    .line 408
    iput-boolean v2, p0, Lcom/adcolony/sdk/ai;->t:Z

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    .line 283
    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 286
    goto :goto_1

    .line 288
    :pswitch_2
    const/16 v0, 0x302

    .line 289
    goto :goto_1

    .line 291
    :pswitch_3
    const/16 v0, 0x303

    .line 292
    goto :goto_1

    :pswitch_4
    move v3, v1

    .line 301
    goto :goto_2

    :pswitch_5
    move v3, v2

    .line 304
    goto :goto_2

    .line 306
    :pswitch_6
    const/16 v3, 0x302

    .line 307
    goto :goto_2

    .line 309
    :pswitch_7
    const/16 v3, 0x303

    .line 310
    goto :goto_2

    .line 320
    :cond_1
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_3

    .line 338
    :cond_2
    const/16 v0, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 339
    const/16 v0, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_4

    .line 349
    :cond_3
    const/16 v0, 0x2801

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 350
    const/16 v0, 0x2800

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_5

    .line 356
    :sswitch_0
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->C:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    goto :goto_6

    .line 360
    :sswitch_1
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->D:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    goto :goto_6

    .line 365
    :sswitch_2
    iget-boolean v0, p0, Lcom/adcolony/sdk/ai;->s:Z

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->E:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    goto :goto_6

    .line 369
    :cond_4
    iget-boolean v0, p0, Lcom/adcolony/sdk/ai;->t:Z

    if-eqz v0, :cond_5

    .line 371
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->B:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    goto :goto_6

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->F:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    goto :goto_6

    .line 386
    :cond_6
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 387
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->A:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    goto :goto_6

    .line 394
    :pswitch_8
    iget-object v0, p0, Lcom/adcolony/sdk/ai;->A:Lcom/adcolony/sdk/ak;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ak;->a()V

    .line 395
    iget v0, p0, Lcom/adcolony/sdk/ai;->v:I

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_7

    .line 399
    :pswitch_9
    const/4 v0, 0x4

    iget v3, p0, Lcom/adcolony/sdk/ai;->v:I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_7

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 297
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
    .end sparse-switch

    .line 391
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method e()V
    .locals 2

    .prologue
    .line 454
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ADCRenderer on_surface_created()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    new-instance v0, Lcom/adcolony/sdk/ak$a;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ak$a;-><init>(Lcom/adcolony/sdk/ai;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->A:Lcom/adcolony/sdk/ak;

    .line 456
    new-instance v0, Lcom/adcolony/sdk/ak$b;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ak$b;-><init>(Lcom/adcolony/sdk/ai;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->B:Lcom/adcolony/sdk/ak;

    .line 457
    new-instance v0, Lcom/adcolony/sdk/ak$d;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ak$d;-><init>(Lcom/adcolony/sdk/ai;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->C:Lcom/adcolony/sdk/ak;

    .line 458
    new-instance v0, Lcom/adcolony/sdk/ak$c;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ak$c;-><init>(Lcom/adcolony/sdk/ai;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->D:Lcom/adcolony/sdk/ak;

    .line 459
    new-instance v0, Lcom/adcolony/sdk/ak$e;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ak$e;-><init>(Lcom/adcolony/sdk/ai;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->E:Lcom/adcolony/sdk/ak;

    .line 460
    new-instance v0, Lcom/adcolony/sdk/ak$f;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/ak$f;-><init>(Lcom/adcolony/sdk/ai;)V

    iput-object v0, p0, Lcom/adcolony/sdk/ai;->F:Lcom/adcolony/sdk/ak;

    .line 461
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 501
    iget v0, p0, Lcom/adcolony/sdk/ai;->r:I

    if-ne v0, v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 506
    iput v1, p0, Lcom/adcolony/sdk/ai;->r:I

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 560
    iget v0, p0, Lcom/adcolony/sdk/ai;->r:I

    if-ne v0, v1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/adcolony/sdk/ai;->d()V

    .line 565
    iput v1, p0, Lcom/adcolony/sdk/ai;->r:I

    goto :goto_0
.end method
