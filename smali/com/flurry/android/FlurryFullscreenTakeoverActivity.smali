.class public final Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final EXTRA_KEY_AD_OBJECT_ID:Ljava/lang/String; = "ad_object_id"

.field public static final EXTRA_KEY_AD_OBJECT_LEGACY:Ljava/lang/String; = "ad_object_legacy"

.field public static final EXTRA_KEY_CLOSE_AD:Ljava/lang/String; = "close_ad"

.field public static final EXTRA_KEY_URL:Ljava/lang/String; = "url"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/flurry/sdk/gz;

.field private d:Z

.field private e:Lcom/flurry/sdk/r;

.field private f:Lcom/flurry/sdk/hh;

.field private g:Z

.field private h:J

.field private i:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/gx;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/gz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->h:J

    .line 288
    new-instance v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$1;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Lcom/flurry/sdk/kh;

    .line 365
    new-instance v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity$2;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->j:Lcom/flurry/sdk/gz$a;

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/hh;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/hh;)Lcom/flurry/sdk/hh;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/r;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/gz;)V
    .locals 3

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c()V

    .line 268
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    .line 269
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 274
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->initLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load View in Activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v3}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 7030
    iget-object v0, v0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    .line 256
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 8022
    iget-object v1, v1, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->j:Lcom/flurry/sdk/gz$a;

    .line 8102
    iget-boolean v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Z

    .line 256
    invoke-static {p0, v0, v1, v2, v3}, Lcom/flurry/sdk/hb;->a(Landroid/content/Context;Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/sdk/gz$a;Z)Lcom/flurry/sdk/gz;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c()V

    .line 259
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/sdk/gz;)V

    .line 9098
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->cleanupLayout()V

    .line 332
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    .line 335
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save view state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v2}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/hh;)V

    .line 347
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 1

    .prologue
    .line 41
    .line 10098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Z

    .line 41
    return-void
.end method

.method static synthetic f(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 6

    .prologue
    .line 41
    .line 10402
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    instance-of v0, v0, Lcom/flurry/sdk/t;

    if-eqz v0, :cond_1

    .line 10403
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 12078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 12360
    iget-object v0, v0, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 10404
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 10407
    iget-wide v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->h:J

    sub-long/2addr v2, v4

    .line 10408
    sget-object v1, Lcom/flurry/sdk/mj$b;->b:Lcom/flurry/sdk/mj$b;

    iget-object v1, v1, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10411
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 13070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 10411
    if-eqz v0, :cond_1

    .line 10412
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 14070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 10412
    sget v0, Lcom/flurry/sdk/mh;->n:I

    .line 41
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Lcom/flurry/sdk/gz;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    return-object v0
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Z

    if-eqz v0, :cond_0

    .line 204
    monitor-exit p0

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Z

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final fireEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bc;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fireEvent(event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 340
    return-void
.end method

.method public final loadViewState()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->l()Lcom/flurry/sdk/hh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 351
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load view state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v2}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onConfigurationChanged"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onConfigurationChanged()V

    .line 171
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setTheme(I)V

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "Flurry core not initialized."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 95
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fq;->a(Landroid/view/Window;)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setVolumeControlStream(I)V

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Landroid/view/ViewGroup;

    .line 1230
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_object_legacy"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1231
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ad_object_id"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1232
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1233
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "close_ad"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1235
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    .line 1236
    if-eqz v0, :cond_1

    .line 2228
    iget-object v0, v4, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 1236
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w;->a(I)Lcom/flurry/sdk/v;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    .line 1237
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-nez v0, :cond_2

    .line 1238
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "Cannot launch Activity. No ad object."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 83
    :goto_2
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d()V

    .line 4098
    iput-boolean v6, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Z

    .line 86
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_3

    .line 88
    sget-object v0, Lcom/flurry/sdk/bc;->ad:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v5}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fireEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;I)V

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->h:J

    goto :goto_0

    .line 3224
    :cond_1
    iget-object v0, v4, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 1236
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/p;->a(I)Lcom/flurry/sdk/r;

    move-result-object v0

    goto :goto_1

    .line 1242
    :cond_2
    new-instance v0, Lcom/flurry/sdk/hh;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/hh;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 1243
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/au;->a(Z)V

    goto :goto_2

    .line 93
    :cond_3
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "FlurryFullscreenTakeoverActivity cannot be launched as the internal ad object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 176
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityDestroy()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()V

    .line 184
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/au;->a(Z)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 6078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 6352
    iget-boolean v0, v0, Lcom/flurry/sdk/ay;->h:Z

    .line 187
    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "AdClose: Firing ad close."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->fireEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;I)V

    .line 196
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    .line 197
    return-void

    .line 193
    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "FlurryFullscreenTakeoverActivity cannot destroy internal ad object as the object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 217
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onKeyUp"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onBackKey()Z

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityPause()V

    .line 147
    :cond_0
    return-void
.end method

.method protected final onRestart()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onRestart"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 125
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->loadViewState()V

    .line 126
    return-void
.end method

.method protected final onResume()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onActivityResume"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityResume()V

    .line 136
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onStart"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lm;->b(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->registerActivityEvent()V

    .line 113
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b()V

    .line 115
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityStart()V

    .line 118
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 152
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onStop"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityStop()V

    .line 5098
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Z

    .line 159
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->unregisterActivityEvent()V

    .line 160
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lm;->c(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public final registerActivityEvent()V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.views.ActivityEvent"

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 282
    return-void
.end method

.method public final removeViewState()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->k()Lcom/flurry/sdk/hh;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remove view state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    return-void
.end method

.method public final unregisterActivityEvent()V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 286
    return-void
.end method
