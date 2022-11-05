.class public Lcom/flurry/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/flurry/sdk/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/flurry/sdk/de;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 1251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/flurry/sdk/ab;->a(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/m$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/m$3;-><init>(Lcom/flurry/sdk/m;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/m;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/m;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/view/ViewGroup;Lcom/flurry/sdk/x;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x3

    .line 8249
    const-string v1, ""

    .line 9206
    iget-object v2, p3, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 8250
    invoke-virtual {v2}, Lcom/flurry/sdk/au;->c()Lcom/flurry/sdk/fr;

    move-result-object v2

    .line 8251
    if-eqz v2, :cond_2

    .line 8253
    invoke-virtual {v2}, Lcom/flurry/sdk/fr;->a()Ljava/lang/String;

    move-result-object v1

    .line 9276
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 10206
    iget-object v2, p3, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 9278
    if-eqz v2, :cond_3

    .line 9279
    invoke-virtual {v2}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v2

    .line 11086
    iget-boolean v2, v2, Lcom/flurry/sdk/gp;->g:Z

    .line 8262
    :goto_1
    if-eqz v2, :cond_4

    .line 8263
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 11251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 11512
    new-instance v2, Ljava/io/File;

    const-string v3, "fileStreamCacheDownloaderTmp"

    .line 12171
    iget v4, p3, Lcom/flurry/sdk/o;->b:I

    .line 11512
    invoke-static {v3, v4}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-static {v1}, Lcom/flurry/sdk/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11516
    iget-object v0, v0, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/ao;->remove(Ljava/lang/Object;)Z

    .line 11520
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11521
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 17287
    :goto_2
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/m$5;

    invoke-direct {v2, p0, p3, v0, p2}, Lcom/flurry/sdk/m$5;-><init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/x;Ljava/lang/String;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 38
    return-void

    .line 8255
    :cond_2
    iget-object v2, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8257
    iget-object v1, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v2, v0

    .line 9283
    goto :goto_1

    .line 8266
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v2

    .line 12251
    iget-object v3, v2, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 12404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 12408
    if-eqz p3, :cond_5

    .line 13171
    iget v4, p3, Lcom/flurry/sdk/o;->b:I

    .line 12413
    if-gtz v4, :cond_6

    .line 12414
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdCacheNative: Invalid ad Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12456
    :cond_5
    const/4 v0, 0x0

    .line 8267
    :goto_3
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 13206
    :cond_6
    iget-object v2, p3, Lcom/flurry/sdk/o;->i:Lcom/flurry/sdk/au;

    .line 12420
    if-eqz v2, :cond_7

    .line 15078
    iget-object v5, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 16058
    iget-object v5, v5, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 12420
    if-eqz v5, :cond_7

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/cn;

    move-result-object v2

    iget v2, v2, Lcom/flurry/sdk/cn;->g:I

    invoke-static {v2}, Lcom/flurry/sdk/ah;->a(I)Lcom/flurry/sdk/ah;

    move-result-object v2

    sget-object v5, Lcom/flurry/sdk/ah;->a:Lcom/flurry/sdk/ah;

    invoke-virtual {v2, v5}, Lcom/flurry/sdk/ah;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 12425
    :cond_7
    new-instance v2, Ljava/io/File;

    const-string v5, "fileStreamCacheDownloaderTmp"

    invoke-static {v5, v4}, Lcom/flurry/sdk/fk;->a(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-static {v1}, Lcom/flurry/sdk/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12428
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 12430
    iget-object v0, v3, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/ao;->add(Ljava/lang/Object;)Z

    .line 12431
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AdCacheNative: queue "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v0, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 12432
    goto :goto_3

    .line 12438
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 12439
    invoke-virtual {v3, p3, v1}, Lcom/flurry/sdk/ab;->d(Lcom/flurry/sdk/r;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 12440
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 12441
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 16460
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 16464
    iget-object v6, v3, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    invoke-virtual {v6}, Lcom/flurry/sdk/ao;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_9

    .line 16465
    iget-object v6, v3, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    invoke-virtual {v6, v0}, Lcom/flurry/sdk/ao;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 16467
    invoke-static {v0}, Lcom/flurry/sdk/ab;->a(Ljava/lang/String;)V

    .line 16470
    :cond_9
    iget-object v0, v3, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/ao;->add(Ljava/lang/Object;)Z

    .line 16471
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "AdCacheNative: queue "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/flurry/sdk/ab;->c:Lcom/flurry/sdk/ao;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v0, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12442
    :cond_a
    sget-object v0, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    const-string v3, "AdCacheNative: temp folder created."

    invoke-static {v8, v0, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 12443
    const/4 v0, 0x1

    .line 12449
    :cond_b
    :goto_4
    const-string v3, "previewImageFromVideo"

    invoke-static {p3, v5, v3}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/r;Ljava/lang/String;Ljava/lang/String;)V

    .line 12452
    if-eqz v0, :cond_5

    move-object v0, v2

    .line 12453
    goto/16 :goto_3

    .line 12446
    :cond_c
    sget-object v3, Lcom/flurry/sdk/ab;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AdCacheNative: Could not create temp folder for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v0, v1

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/widget/ImageView;I)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 5174
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 5251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 5174
    iget-object v0, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/flurry/sdk/ab;->a(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 5175
    if-nez v0, :cond_0

    .line 5177
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cached asset not available for image:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5179
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 5180
    iget-object v1, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    .line 6136
    iput-object v1, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 7027
    const v1, 0x9c40

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 5182
    sget-object v1, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    .line 7144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 5183
    new-instance v1, Lcom/flurry/sdk/eb;

    invoke-direct {v1}, Lcom/flurry/sdk/eb;-><init>()V

    .line 8045
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 5184
    new-instance v1, Lcom/flurry/sdk/m$2;

    invoke-direct {v1, p0, p2}, Lcom/flurry/sdk/m$2;-><init>(Lcom/flurry/sdk/m;Landroid/widget/ImageView;)V

    .line 8049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 5194
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 5195
    :goto_0
    return-void

    .line 5197
    :cond_0
    sget-object v1, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cached asset present for image:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5199
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 5200
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5201
    invoke-direct {p0, p2, v0}, Lcom/flurry/sdk/m;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/de;Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3236
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    sget-object v0, Lcom/flurry/sdk/m$6;->a:[I

    iget-object v1, p1, Lcom/flurry/sdk/de;->b:Lcom/flurry/sdk/df;

    invoke-virtual {v1}, Lcom/flurry/sdk/df;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2111
    :pswitch_0
    if-eqz p1, :cond_0

    sget-object v0, Lcom/flurry/sdk/df;->a:Lcom/flurry/sdk/df;

    iget-object v1, p1, Lcom/flurry/sdk/de;->b:Lcom/flurry/sdk/df;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2116
    const-string v0, "callToAction"

    iget-object v1, p1, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "clickToCall"

    iget-object v1, p1, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 2117
    :cond_2
    check-cast p2, Landroid/widget/Button;

    .line 2130
    iget-object v0, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    const-string v0, "callToAction"

    iget-object v1, p1, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "clickToCall"

    iget-object v1, p1, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    :cond_3
    const-string v0, "clickToCall"

    iget-object v1, p1, Lcom/flurry/sdk/de;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2136
    sget-object v0, Lcom/flurry/sdk/n$a;->b:Lcom/flurry/sdk/n$a;

    .line 2142
    :goto_1
    new-instance v1, Lcom/flurry/sdk/n;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/n;-><init>(Lcom/flurry/sdk/n$a;)V

    .line 2143
    iput-object p2, v1, Lcom/flurry/sdk/n;->a:Landroid/widget/Button;

    .line 2144
    iput p3, v1, Lcom/flurry/sdk/n;->b:I

    .line 3025
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    goto :goto_0

    .line 2139
    :cond_4
    sget-object v0, Lcom/flurry/sdk/n$a;->a:Lcom/flurry/sdk/n$a;

    goto :goto_1

    .line 2121
    :cond_5
    instance-of v0, p2, Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 2122
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The view must be an instance of TextView in order to load the asset"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2126
    :cond_6
    check-cast p2, Landroid/widget/TextView;

    .line 3150
    iget-object v0, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3154
    :pswitch_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/df;->b:Lcom/flurry/sdk/df;

    iget-object v1, p1, Lcom/flurry/sdk/de;->b:Lcom/flurry/sdk/df;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3158
    if-eqz p2, :cond_7

    instance-of v0, p2, Landroid/widget/ImageView;

    if-nez v0, :cond_8

    .line 3159
    :cond_7
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The view must be an instance of ImageView in order to load the asset"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3163
    :cond_8
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/m$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/flurry/sdk/m$1;-><init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 101
    :pswitch_2
    check-cast p2, Landroid/view/ViewGroup;

    .line 3217
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/de;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/df;->c:Lcom/flurry/sdk/df;

    iget-object v1, p1, Lcom/flurry/sdk/de;->b:Lcom/flurry/sdk/df;

    .line 3218
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/flurry/sdk/df;->d:Lcom/flurry/sdk/df;

    iget-object v1, p1, Lcom/flurry/sdk/de;->b:Lcom/flurry/sdk/df;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/df;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3223
    :cond_9
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 3224
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The view must be an instance of ViewGroup in order to load the asset"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3228
    :cond_a
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 4224
    iget-object v0, v0, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 3228
    invoke-virtual {v0, p3}, Lcom/flurry/sdk/p;->a(I)Lcom/flurry/sdk/r;

    move-result-object v0

    .line 3229
    if-nez v0, :cond_b

    .line 3230
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "Video error. Could not find ad object"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3234
    :cond_b
    instance-of v1, v0, Lcom/flurry/sdk/x;

    if-nez v1, :cond_c

    .line 3235
    sget-object v0, Lcom/flurry/sdk/m;->a:Ljava/lang/String;

    const-string v1, "The ad must be an instance of FlurryAdNative to fetch video"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3239
    :cond_c
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/m$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/flurry/sdk/m$4;-><init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/view/ViewGroup;Lcom/flurry/sdk/r;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
