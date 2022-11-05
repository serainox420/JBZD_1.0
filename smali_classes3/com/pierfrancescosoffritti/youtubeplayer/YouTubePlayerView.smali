.class public Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;
.super Landroid/widget/FrameLayout;
.source "YouTubePlayerView.java"

# interfaces
.implements Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;


# instance fields
.field public a:Lpl/jbzd/b/b$a;

.field private final b:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;

.field private final c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

.field private final d:Lcom/pierfrancescosoffritti/youtubeplayer/c;

.field private final e:Lcom/pierfrancescosoffritti/youtubeplayer/b;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/pierfrancescosoffritti/youtubeplayer/a;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-boolean v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->m:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->n:F

    .line 59
    iput-boolean v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->i:Z

    .line 60
    iput-boolean v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->j:Z

    .line 61
    iput-boolean v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->k:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->l:Z

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->m:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-direct {v0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    .line 66
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const v0, 0x7f0400a0

    invoke-static {p1, v0, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/pierfrancescosoffritti/youtubeplayer/c;

    invoke-direct {v1, p0, v0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->d:Lcom/pierfrancescosoffritti/youtubeplayer/c;

    .line 71
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/b;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/b;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->e:Lcom/pierfrancescosoffritti/youtubeplayer/b;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->f:Ljava/util/Set;

    .line 74
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->f:Ljava/util/Set;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->d:Lcom/pierfrancescosoffritti/youtubeplayer/c;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->d:Lcom/pierfrancescosoffritti/youtubeplayer/c;

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)Z

    .line 77
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->e:Lcom/pierfrancescosoffritti/youtubeplayer/b;

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)Z

    .line 79
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->b:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;F)F
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->n:F

    return p1
.end method

.method static synthetic a(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Lcom/pierfrancescosoffritti/youtubeplayer/a;)Lcom/pierfrancescosoffritti/youtubeplayer/a;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->h:Lcom/pierfrancescosoffritti/youtubeplayer/a;

    return-object p1
.end method

.method static synthetic a(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;)Lcom/pierfrancescosoffritti/youtubeplayer/e;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    return-object v0
.end method

.method static synthetic b(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 360
    const-string v0, "YouTubePlayerView"

    const-string v1, "Network available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->h:Lcom/pierfrancescosoffritti/youtubeplayer/a;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->h:Lcom/pierfrancescosoffritti/youtubeplayer/a;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/a;->a()V

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->e:Lcom/pierfrancescosoffritti/youtubeplayer/b;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/b;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    if-nez v0, :cond_0

    .line 313
    const-string v0, "YouTubePlayerView"

    const-string v1, "the player has not been initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;Z)V
    .locals 4

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->j:Z

    .line 226
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->b:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const-string v0, "YouTubePlayerView"

    const-string v1, "Can\'t initialize because device is not connected to the internet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;

    invoke-direct {v0, p0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$2;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->h:Lcom/pierfrancescosoffritti/youtubeplayer/a;

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0, p1}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    if-nez v0, :cond_1

    .line 254
    const-string v0, "YouTubePlayerView"

    const-string v1, "the player has not been initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->k:Z

    .line 259
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->m:Ljava/lang/String;

    .line 261
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->j:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0, p1, p2}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a(Ljava/lang/String;F)V

    .line 266
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->d:Lcom/pierfrancescosoffritti/youtubeplayer/c;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public b(Ljava/lang/String;F)V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    if-nez v0, :cond_1

    .line 274
    const-string v0, "YouTubePlayerView"

    const-string v1, "the player has not been initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->k:Z

    .line 279
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->m:Ljava/lang/String;

    .line 281
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->j:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0, p1, p2}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b(Ljava/lang/String;F)V

    .line 286
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->d:Lcom/pierfrancescosoffritti/youtubeplayer/c;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$1;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView$1;-><init>(Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a(Lcom/pierfrancescosoffritti/youtubeplayer/e$a;Z)V

    .line 215
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    if-nez v0, :cond_0

    .line 295
    const-string v0, "YouTubePlayerView"

    const-string v1, "the player has not been initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g()V

    .line 300
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->destroy()V

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->b:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    if-nez v0, :cond_0

    .line 325
    const-string v0, "YouTubePlayerView"

    const-string v1, "the player has not been initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->a()V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->l:Z

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->g:Z

    if-nez v0, :cond_0

    .line 338
    const-string v0, "YouTubePlayerView"

    const-string v1, "the player has not been initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->c:Lcom/pierfrancescosoffritti/youtubeplayer/e;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/e;->b()V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->l:Z

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->f()V

    .line 348
    const-string v0, ""

    iput-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->m:Ljava/lang/String;

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->k:Z

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->l:Z

    .line 351
    return-void
.end method

.method public getCurrentSecond()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->n:F

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 87
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setOnSimpleListener(Lpl/jbzd/b/b$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/YouTubePlayerView;->a:Lpl/jbzd/b/b$a;

    .line 46
    return-void
.end method
