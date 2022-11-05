.class Lcom/adcolony/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/p$a;
    }
.end annotation


# static fields
.field static a:Landroid/graphics/BitmapFactory$Options;

.field static b:Ljava/nio/ByteBuffer;


# instance fields
.field c:Lcom/adcolony/sdk/o;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/z;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcom/adcolony/sdk/c;

.field k:I

.field l:I

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/p$a;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/p;->a:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method constructor <init>(Lcom/adcolony/sdk/o;ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/p;->i:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/p;->m:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/p;->n:Ljava/util/HashMap;

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AdColony new ADCGLViewRenderer"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/adcolony/sdk/p;->c:Lcom/adcolony/sdk/o;

    .line 52
    iput-boolean p2, p0, Lcom/adcolony/sdk/p;->g:Z

    .line 53
    iput-object p3, p0, Lcom/adcolony/sdk/p;->d:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->g:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    iput-object v0, p0, Lcom/adcolony/sdk/p;->j:Lcom/adcolony/sdk/c;

    .line 56
    iget v0, p1, Lcom/adcolony/sdk/o;->b:I

    iput v0, p0, Lcom/adcolony/sdk/p;->e:I

    .line 57
    iget-object v0, p0, Lcom/adcolony/sdk/p;->j:Lcom/adcolony/sdk/c;

    iget v0, v0, Lcom/adcolony/sdk/c;->l:I

    iput v0, p0, Lcom/adcolony/sdk/p;->f:I

    .line 60
    iget-object v0, p0, Lcom/adcolony/sdk/p;->j:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "RenderView.create_image"

    new-instance v2, Lcom/adcolony/sdk/p$1;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/p$1;-><init>(Lcom/adcolony/sdk/p;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/adcolony/sdk/p;->j:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    const-string v1, "RenderView.load_texture"

    new-instance v2, Lcom/adcolony/sdk/p$2;

    invoke-direct {v2, p0}, Lcom/adcolony/sdk/p$2;-><init>(Lcom/adcolony/sdk/p;)V

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ac;Z)Lcom/adcolony/sdk/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/adcolony/sdk/p;->j:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "RenderView.create_image"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/adcolony/sdk/p;->j:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    const-string v1, "RenderView.load_texture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)Lcom/adcolony/sdk/p$a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    sget-object v0, Lcom/adcolony/sdk/p;->a:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 262
    const-string v0, "file:///android_asset/"

    .line 263
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    sget-object v2, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/adcolony/sdk/p;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    :goto_0
    if-nez v0, :cond_1

    .line 282
    sget-object v0, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v1, "Failed to load "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    const-string v1, " - using white 16x16 as placeholder."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 283
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 285
    invoke-virtual {p0, p1, p2, v0}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/p$a;

    move-result-object v0

    .line 286
    iput-boolean v4, v0, Lcom/adcolony/sdk/p$a;->d:Z

    .line 290
    :goto_1
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    sget-object v2, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    move-object v0, v1

    .line 273
    goto :goto_0

    .line 277
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/p;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/p$a;

    move-result-object v0

    goto :goto_1
.end method

.method a(ILjava/lang/String;Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/p$a;
    .locals 11

    .prologue
    const/high16 v0, 0x400000

    .line 319
    new-instance v9, Lcom/adcolony/sdk/p$a;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v9, p1, p2, v1, v2}, Lcom/adcolony/sdk/p$a;-><init>(ILjava/lang/String;II)V

    .line 321
    iget v1, v9, Lcom/adcolony/sdk/p$a;->h:I

    iget v2, v9, Lcom/adcolony/sdk/p$a;->i:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    .line 323
    sget-object v2, Lcom/adcolony/sdk/p;->b:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/adcolony/sdk/p;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 325
    :cond_0
    if-ge v1, v0, :cond_2

    .line 329
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/p;->b:Ljava/nio/ByteBuffer;

    .line 330
    sget-object v0, Lcom/adcolony/sdk/p;->b:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 333
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/p;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 334
    sget-object v0, Lcom/adcolony/sdk/p;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 336
    iget-object v0, p0, Lcom/adcolony/sdk/p;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/adcolony/sdk/p;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v10, Lcom/adcolony/sdk/ADCNative;->a:Lcom/adcolony/sdk/ADCNative;

    monitor-enter v10

    .line 341
    :try_start_0
    iget v0, p0, Lcom/adcolony/sdk/p;->f:I

    iget v1, p0, Lcom/adcolony/sdk/p;->e:I

    sget-object v4, Lcom/adcolony/sdk/p;->b:Ljava/nio/ByteBuffer;

    iget v5, v9, Lcom/adcolony/sdk/p$a;->f:I

    iget v6, v9, Lcom/adcolony/sdk/p$a;->g:I

    iget v7, v9, Lcom/adcolony/sdk/p$a;->h:I

    iget v8, v9, Lcom/adcolony/sdk/p$a;->i:I

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v8}, Lcom/adcolony/sdk/ADCNative;->nativeCreateTexture(IIILjava/lang/String;Ljava/nio/ByteBuffer;IIII)V

    .line 342
    monitor-exit v10

    .line 344
    return-object v9

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method a(ILjava/lang/String;[B)Lcom/adcolony/sdk/p$a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    sget-object v0, Lcom/adcolony/sdk/p;->a:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 296
    array-length v0, p3

    invoke-static {p3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lcom/adcolony/sdk/u;->f:Lcom/adcolony/sdk/u;

    const-string v1, "Failed to load "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    const-string v1, " bytes - using white 16x16 as placeholder."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 301
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 303
    invoke-virtual {p0, p1, p2, v0}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/p$a;

    move-result-object v0

    .line 304
    iput-boolean v2, v0, Lcom/adcolony/sdk/p$a;->d:Z

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/p$a;

    move-result-object v0

    goto :goto_0
.end method

.method a(ILjava/lang/String;[III)Lcom/adcolony/sdk/p$a;
    .locals 1

    .prologue
    .line 313
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    invoke-virtual {p0, p1, p2, v0}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)Lcom/adcolony/sdk/p$a;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized a()V
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/p;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/adcolony/sdk/p;->h:Z

    .line 93
    sget-object v1, Lcom/adcolony/sdk/ADCNative;->a:Lcom/adcolony/sdk/ADCNative;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :try_start_2
    iget v0, p0, Lcom/adcolony/sdk/p;->f:I

    iget v2, p0, Lcom/adcolony/sdk/p;->e:I

    invoke-static {v0, v2}, Lcom/adcolony/sdk/ADCNative;->nativeDeleteSceneController(II)V

    .line 96
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/adcolony/sdk/z;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method declared-synchronized b()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 184
    monitor-enter p0

    move v8, v1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_6

    .line 186
    iget-object v1, p0, Lcom/adcolony/sdk/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/adcolony/sdk/z;

    move-object v7, v0

    .line 187
    const/4 v1, 0x0

    .line 188
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "pixels"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "pixels"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    new-array v4, v2, [I

    .line 193
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, -0x4

    .line 194
    array-length v2, v4

    .line 195
    :goto_1
    if-ltz v3, :cond_0

    .line 197
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 198
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 199
    add-int/lit8 v10, v3, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 200
    add-int/lit8 v11, v3, 0x3

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 201
    add-int/lit8 v3, v3, 0x4

    .line 202
    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v6, v6, 0x18

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v6, v9

    shl-int/lit8 v9, v10, 0x8

    or-int/2addr v6, v9

    or-int/2addr v6, v11

    aput v6, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 205
    :cond_0
    :try_start_1
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 206
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "height"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 208
    mul-int v2, v5, v6

    array-length v3, v4

    if-ne v2, v3, :cond_1

    .line 210
    iget-object v1, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "texture_id"

    .line 211
    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iget-object v1, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    .line 212
    invoke-static {v1, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    .line 210
    invoke-virtual/range {v1 .. v6}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;[III)Lcom/adcolony/sdk/p$a;

    move-result-object v1

    .line 241
    :cond_1
    :goto_2
    if-nez v1, :cond_5

    .line 243
    iget-object v1, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :goto_3
    monitor-exit p0

    return-void

    .line 219
    :cond_2
    :try_start_2
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "bytes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 222
    iget-object v1, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "bytes"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    new-array v3, v1, [B

    .line 224
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 226
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_4

    .line 229
    :cond_3
    iget-object v1, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "texture_id"

    .line 230
    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "filepath"

    .line 231
    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {p0, v1, v2, v3}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;[B)Lcom/adcolony/sdk/p$a;

    move-result-object v1

    goto :goto_2

    .line 235
    :cond_4
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    iget-object v1, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "texture_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "filepath"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/adcolony/sdk/p;->a(ILjava/lang/String;)Lcom/adcolony/sdk/p$a;

    move-result-object v1

    goto :goto_2

    .line 247
    :cond_5
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "success"

    iget-boolean v4, v1, Lcom/adcolony/sdk/p$a;->d:Z

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 248
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "image_width"

    iget v4, v1, Lcom/adcolony/sdk/p$a;->f:I

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 249
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "image_height"

    iget v4, v1, Lcom/adcolony/sdk/p$a;->g:I

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 250
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "texture_width"

    iget v4, v1, Lcom/adcolony/sdk/p$a;->h:I

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 251
    iget-object v2, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "texture_height"

    iget v1, v1, Lcom/adcolony/sdk/p$a;->i:I

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 252
    iget-object v1, v7, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    invoke-virtual {v7, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/z;->b()V

    .line 184
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/adcolony/sdk/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method declared-synchronized b(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/p;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/adcolony/sdk/p;->a()V

    .line 106
    return-void
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()V

    .line 121
    sget-object v1, Lcom/adcolony/sdk/ADCNative;->a:Lcom/adcolony/sdk/ADCNative;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/p;->h:Z

    if-eqz v0, :cond_0

    .line 125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/adcolony/sdk/p;->b()V

    .line 130
    iget v0, p0, Lcom/adcolony/sdk/p;->f:I

    iget v2, p0, Lcom/adcolony/sdk/p;->e:I

    iget v3, p0, Lcom/adcolony/sdk/p;->k:I

    iget v4, p0, Lcom/adcolony/sdk/p;->l:I

    invoke-static {v0, v2, v3, v4}, Lcom/adcolony/sdk/ADCNative;->nativeRender(IIII)V

    .line 139
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .prologue
    .line 162
    iput p2, p0, Lcom/adcolony/sdk/p;->k:I

    .line 163
    iput p3, p0, Lcom/adcolony/sdk/p;->l:I

    .line 165
    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/adcolony/sdk/ADCNative;->a:Lcom/adcolony/sdk/ADCNative;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    iget-boolean v0, p0, Lcom/adcolony/sdk/p;->h:Z

    if-eqz v0, :cond_0

    .line 151
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 153
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/adcolony/sdk/p;->f:I

    iget v2, p0, Lcom/adcolony/sdk/p;->e:I

    invoke-static {v0, v2}, Lcom/adcolony/sdk/ADCNative;->nativeCreateSceneController(II)V

    .line 154
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
