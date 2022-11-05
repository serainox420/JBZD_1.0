.class public Lcom/flurry/sdk/fn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/flurry/sdk/fn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 137
    .line 138
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 140
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 141
    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 148
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 154
    :goto_0
    if-nez v1, :cond_0

    .line 156
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    .line 148
    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    .line 151
    goto :goto_0

    .line 152
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v1

    .line 148
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v0

    .line 151
    goto :goto_0

    .line 152
    :catch_3
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 151
    :goto_2
    throw v0

    .line 155
    :cond_0
    const/16 v0, 0x4b0

    const/16 v2, 0x2bc

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 152
    :catch_4
    move-exception v2

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;ILjava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 86
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 4251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 86
    invoke-static {p2, p3}, Lcom/flurry/sdk/ab;->a(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cached asset not available for image:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 5136
    iput-object p3, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 6027
    const v1, 0x9c40

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 94
    sget-object v1, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    .line 6144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 95
    new-instance v1, Lcom/flurry/sdk/eb;

    invoke-direct {v1}, Lcom/flurry/sdk/eb;-><init>()V

    .line 7045
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 96
    new-instance v1, Lcom/flurry/sdk/fn$3;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/fn$3;-><init>(Lcom/flurry/sdk/fn;Landroid/view/View;)V

    .line 7049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 116
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v1, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cached asset present for image:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/fn$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/flurry/sdk/fn$4;-><init>(Lcom/flurry/sdk/fn;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 42
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    .line 1251
    iget-object v0, v0, Lcom/flurry/sdk/i;->i:Lcom/flurry/sdk/ab;

    .line 42
    invoke-static {p2, p3}, Lcom/flurry/sdk/ab;->a(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cached asset not available for image:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/flurry/sdk/ks;

    invoke-direct {v0}, Lcom/flurry/sdk/ks;-><init>()V

    .line 2136
    iput-object p3, v0, Lcom/flurry/sdk/ku;->f:Ljava/lang/String;

    .line 3027
    const v1, 0x9c40

    iput v1, v0, Lcom/flurry/sdk/mb;->w:I

    .line 50
    sget-object v1, Lcom/flurry/sdk/ku$a;->b:Lcom/flurry/sdk/ku$a;

    .line 3144
    iput-object v1, v0, Lcom/flurry/sdk/ku;->g:Lcom/flurry/sdk/ku$a;

    .line 51
    new-instance v1, Lcom/flurry/sdk/eb;

    invoke-direct {v1}, Lcom/flurry/sdk/eb;-><init>()V

    .line 4045
    iput-object v1, v0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    .line 52
    new-instance v1, Lcom/flurry/sdk/fn$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/fn$1;-><init>(Lcom/flurry/sdk/fn;Landroid/widget/ImageView;)V

    .line 4049
    iput-object v1, v0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    .line 67
    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Object;Lcom/flurry/sdk/mb;)V

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v1, Lcom/flurry/sdk/fn;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cached asset present for image:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/fn$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/flurry/sdk/fn$2;-><init>(Lcom/flurry/sdk/fn;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
