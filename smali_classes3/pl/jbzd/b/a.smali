.class public Lpl/jbzd/b/a;
.super Landroid/widget/FrameLayout;
.source "CustomVideoSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/audio/c$b;
.implements Lcom/google/android/exoplayer2/m$b;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/net/CookieManager;

.field private static final c:Lcom/google/android/exoplayer2/extractor/c;

.field private static final d:Lcom/google/android/exoplayer2/upstream/i;


# instance fields
.field private e:Lcom/google/android/exoplayer2/audio/c;

.field private f:Lcom/google/android/exoplayer2/m;

.field private g:Landroid/os/Handler;

.field private h:Lcom/google/android/exoplayer2/upstream/cache/c;

.field private i:Landroid/view/SurfaceView;

.field private j:Lpl/jbzd/b/b$a;

.field private k:Landroid/net/Uri;

.field private l:Z

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-class v0, Lpl/jbzd/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/jbzd/b/a;->a:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/extractor/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/c;-><init>()V

    sput-object v0, Lpl/jbzd/b/a;->c:Lcom/google/android/exoplayer2/extractor/c;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/upstream/i;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/i;-><init>()V

    sput-object v0, Lpl/jbzd/b/a;->d:Lcom/google/android/exoplayer2/upstream/i;

    .line 81
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lpl/jbzd/b/a;->b:Ljava/net/CookieManager;

    .line 82
    sget-object v0, Lpl/jbzd/b/a;->b:Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/b/a;->j:Lpl/jbzd/b/b$a;

    .line 76
    iput-boolean v1, p0, Lpl/jbzd/b/a;->l:Z

    .line 77
    iput v1, p0, Lpl/jbzd/b/a;->m:I

    .line 78
    iput-boolean v1, p0, Lpl/jbzd/b/a;->n:Z

    .line 87
    invoke-virtual {p0, p1}, Lpl/jbzd/b/a;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/g;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/v;->b(Landroid/net/Uri;)I

    move-result v0

    .line 228
    :goto_0
    invoke-direct {p0}, Lpl/jbzd/b/a;->getDataSource()Lcom/google/android/exoplayer2/upstream/cache/c;

    move-result-object v2

    .line 230
    packed-switch v0, :pswitch_data_0

    .line 245
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->i(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 233
    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/d;

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;-><init>(Lcom/google/android/exoplayer2/upstream/e$a;)V

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/d;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    .line 242
    :goto_1
    return-object v0

    .line 236
    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c;

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/f$a;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/dash/f$a;-><init>(Lcom/google/android/exoplayer2/upstream/e$a;)V

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/c;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/source/dash/a$a;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    goto :goto_1

    .line 239
    :pswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/source/b/h;

    invoke-direct {v0, p1, v2, v4, v4}, Lcom/google/android/exoplayer2/source/b/h;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/a;)V

    goto :goto_1

    .line 242
    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/source/e;

    sget-object v3, Lpl/jbzd/b/a;->c:Lcom/google/android/exoplayer2/extractor/c;

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/e;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/e$a;Lcom/google/android/exoplayer2/extractor/i;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/e$a;)V

    goto :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lpl/jbzd/b/a;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lpl/jbzd/b/a;->n:Z

    return v0
.end method

.method static synthetic a(Lpl/jbzd/b/a;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lpl/jbzd/b/a;->n:Z

    return p1
.end method

.method static synthetic b(Lpl/jbzd/b/a;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lpl/jbzd/b/a;->i:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpl/jbzd/b/a;->g:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lpl/jbzd/b/a;->getDataSource()Lcom/google/android/exoplayer2/upstream/cache/c;

    .line 108
    iget-object v0, p0, Lpl/jbzd/b/a;->i:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 110
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 111
    sget-object v1, Lpl/jbzd/b/a;->b:Ljava/net/CookieManager;

    if-eq v0, v1, :cond_0

    .line 112
    sget-object v0, Lpl/jbzd/b/a;->b:Ljava/net/CookieManager;

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 115
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/c;

    invoke-direct {v0, p1, p0}, Lcom/google/android/exoplayer2/audio/c;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/c$b;)V

    iput-object v0, p0, Lpl/jbzd/b/a;->e:Lcom/google/android/exoplayer2/audio/c;

    .line 116
    iget-object v0, p0, Lpl/jbzd/b/a;->e:Lcom/google/android/exoplayer2/audio/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/c;->a()Lcom/google/android/exoplayer2/audio/b;

    .line 118
    invoke-direct {p0}, Lpl/jbzd/b/a;->d()V

    .line 119
    return-void
.end method

.method static synthetic c(Lpl/jbzd/b/a;)Lcom/google/android/exoplayer2/m;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lpl/jbzd/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lpl/jbzd/b/a;)Lpl/jbzd/b/b$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lpl/jbzd/b/a;->j:Lpl/jbzd/b/b$a;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/b/a$a;

    sget-object v1, Lpl/jbzd/b/a;->d:Lcom/google/android/exoplayer2/upstream/i;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/b/a$a;-><init>(Lcom/google/android/exoplayer2/upstream/c;)V

    .line 147
    new-instance v1, Lcom/google/android/exoplayer2/b/c;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/b/c;-><init>(Lcom/google/android/exoplayer2/b/f$a;)V

    .line 148
    new-instance v0, Lcom/google/android/exoplayer2/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c;-><init>()V

    .line 150
    invoke-virtual {p0}, Lpl/jbzd/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/e;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/m;

    move-result-object v0

    iput-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    .line 152
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    new-instance v1, Lpl/jbzd/b/a$1;

    invoke-direct {v1, p0}, Lpl/jbzd/b/a$1;-><init>(Lpl/jbzd/b/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/d$a;)V

    goto :goto_0
.end method

.method static synthetic e(Lpl/jbzd/b/a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lpl/jbzd/b/a;->k:Landroid/net/Uri;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/b/a;->n:Z

    .line 339
    iget-boolean v0, p0, Lpl/jbzd/b/a;->l:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    iget-object v1, p0, Lpl/jbzd/b/a;->i:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Landroid/view/Surface;)V

    .line 342
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m;->e()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    .line 389
    :cond_0
    return-void
.end method

.method private getDataSource()Lcom/google/android/exoplayer2/upstream/cache/c;
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lpl/jbzd/b/a;->h:Lcom/google/android/exoplayer2/upstream/cache/c;

    if-nez v0, :cond_1

    .line 126
    new-instance v2, Lcom/google/android/exoplayer2/upstream/k;

    invoke-virtual {p0}, Lpl/jbzd/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lpl/jbzd/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lpl/jbzd/b/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lpl/jbzd/b/a;->d:Lcom/google/android/exoplayer2/upstream/i;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/upstream/k;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/r;)V

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lpl/jbzd/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "exoplayer"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 133
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/i;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/h;

    const-wide/32 v4, 0x2000000

    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/h;-><init>(J)V

    invoke-direct {v1, v0, v3}, Lcom/google/android/exoplayer2/upstream/cache/i;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/d;)V

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/c;

    const/4 v3, 0x1

    const-wide/32 v4, 0x80000

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/e$a;IJ)V

    iput-object v0, p0, Lpl/jbzd/b/a;->h:Lcom/google/android/exoplayer2/upstream/cache/c;

    .line 137
    :cond_1
    iget-object v0, p0, Lpl/jbzd/b/a;->h:Lcom/google/android/exoplayer2/upstream/cache/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m;->d()V

    .line 350
    :cond_0
    iget-object v0, p0, Lpl/jbzd/b/a;->j:Lpl/jbzd/b/b$a;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lpl/jbzd/b/a;->j:Lpl/jbzd/b/b$a;

    iget-object v1, p0, Lpl/jbzd/b/a;->k:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lpl/jbzd/b/b$a;->b(Landroid/view/View;Ljava/lang/String;)V

    .line 353
    :cond_1
    return-void
.end method

.method protected a(II)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 265
    iget v1, p0, Lpl/jbzd/b/a;->m:I

    .line 267
    iget v2, p0, Lpl/jbzd/b/a;->m:I

    .line 269
    int-to-float v0, p1

    int-to-float v3, p2

    div-float v3, v0, v3

    .line 271
    invoke-virtual {p0}, Lpl/jbzd/b/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 273
    int-to-float v4, v1

    int-to-float v5, p1

    div-float/2addr v4, v5

    int-to-float v5, v2

    int-to-float v6, p2

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 274
    int-to-float v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 275
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 282
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 283
    invoke-virtual {p0, v0}, Lpl/jbzd/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    return-void

    .line 278
    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 279
    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040049

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lpl/jbzd/b/a;->setVisibility(I)V

    .line 95
    invoke-virtual {p0}, Lpl/jbzd/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 98
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lpl/jbzd/b/a;->m:I

    .line 100
    const v0, 0x7f110158

    invoke-virtual {p0, v0}, Lpl/jbzd/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lpl/jbzd/b/a;->i:Landroid/view/SurfaceView;

    .line 101
    invoke-direct {p0, p1}, Lpl/jbzd/b/a;->b(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 323
    invoke-direct {p0}, Lpl/jbzd/b/a;->d()V

    .line 325
    iput-object p1, p0, Lpl/jbzd/b/a;->k:Landroid/net/Uri;

    .line 326
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/m;->a(J)V

    .line 329
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lpl/jbzd/b/a;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/source/g;)V

    .line 330
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Z)V

    .line 332
    invoke-direct {p0}, Lpl/jbzd/b/a;->e()V

    .line 333
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/audio/b;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-direct {p0}, Lpl/jbzd/b/a;->f()V

    .line 368
    :try_start_0
    iget-object v0, p0, Lpl/jbzd/b/a;->e:Lcom/google/android/exoplayer2/audio/c;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lpl/jbzd/b/a;->e:Lcom/google/android/exoplayer2/audio/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/c;->b()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/jbzd/b/a;->e:Lcom/google/android/exoplayer2/audio/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lpl/jbzd/b/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 377
    iput-object v1, p0, Lpl/jbzd/b/a;->g:Landroid/os/Handler;

    .line 380
    :cond_1
    iput-object v1, p0, Lpl/jbzd/b/a;->h:Lcom/google/android/exoplayer2/upstream/cache/c;

    .line 381
    return-void

    .line 374
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/m;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    iget-object v0, p0, Lpl/jbzd/b/a;->f:Lcom/google/android/exoplayer2/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/m;->a(Z)V

    .line 256
    :cond_0
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Lpl/jbzd/b/a;->a(II)V

    .line 305
    return-void
.end method

.method public setOnSimpleVideoListener(Lpl/jbzd/b/b$a;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lpl/jbzd/b/a;->j:Lpl/jbzd/b/b$a;

    .line 261
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/jbzd/b/a;->l:Z

    .line 289
    invoke-direct {p0}, Lpl/jbzd/b/a;->e()V

    .line 290
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/jbzd/b/a;->l:Z

    .line 300
    return-void
.end method
