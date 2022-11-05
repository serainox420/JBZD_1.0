.class public final Lcom/flurry/android/FlurryInternalTakeoverActivity;
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
    .line 40
    const-class v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->g:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->h:J

    .line 308
    new-instance v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity$1;-><init>(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->i:Lcom/flurry/sdk/kh;

    .line 385
    new-instance v0, Lcom/flurry/android/FlurryInternalTakeoverActivity$2;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity$2;-><init>(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->j:Lcom/flurry/sdk/gz$a;

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryInternalTakeoverActivity;)Lcom/flurry/sdk/hh;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryInternalTakeoverActivity;Lcom/flurry/sdk/hh;)Lcom/flurry/sdk/hh;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/android/FlurryInternalTakeoverActivity;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/r;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/flurry/sdk/gz;)V
    .locals 3

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e()V

    .line 288
    iput-object p1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    .line 289
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 293
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    iget-object v1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->setContentView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->initLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryInternalTakeoverActivity;)Lcom/flurry/sdk/r;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStopActivity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityStop()V

    .line 5096
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->g:Z

    .line 162
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 195
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroyActivity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityDestroy()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdClose: Reset full screen flag."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v2}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v2

    .line 7078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 8054
    iget v2, v2, Lcom/flurry/sdk/ay;->a:I

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()V

    .line 203
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/au;->a(Z)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 9078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 9352
    iget-boolean v0, v0, Lcom/flurry/sdk/ay;->h:Z

    .line 206
    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "AdClose: Firing ad close."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/flurry/sdk/bc;->v:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->fireEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;I)V

    .line 216
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    .line 217
    return-void

    .line 212
    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "FlurryFullscreenTakeoverActivity cannot destroy internal ad object as the object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted."

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 4

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :goto_0
    monitor-exit p0

    return-void

    .line 273
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load View in Activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v3}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 10030
    iget-object v0, v0, Lcom/flurry/sdk/hh;->a:Lcom/flurry/sdk/r;

    .line 276
    iget-object v1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 11022
    iget-object v1, v1, Lcom/flurry/sdk/hh;->b:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->j:Lcom/flurry/sdk/gz$a;

    .line 11100
    iget-boolean v3, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->g:Z

    .line 276
    invoke-static {p0, v0, v1, v2, v3}, Lcom/flurry/sdk/hb;->a(Landroid/content/Context;Lcom/flurry/sdk/r;Ljava/lang/String;Lcom/flurry/sdk/gz$a;Z)Lcom/flurry/sdk/gz;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e()V

    .line 279
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a(Lcom/flurry/sdk/gz;)V

    .line 12096
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->cleanupLayout()V

    .line 352
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    .line 355
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V
    .locals 1

    .prologue
    .line 39
    .line 13096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->g:Z

    .line 39
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save view state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v3}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/hh;)V

    .line 367
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->d()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/android/FlurryInternalTakeoverActivity;)V
    .locals 6

    .prologue
    .line 39
    .line 13422
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    instance-of v0, v0, Lcom/flurry/sdk/t;

    if-eqz v0, :cond_1

    .line 13423
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    .line 15078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 15360
    iget-object v0, v0, Lcom/flurry/sdk/ay;->j:Ljava/util/HashMap;

    .line 13424
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 13427
    iget-wide v4, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->h:J

    sub-long/2addr v2, v4

    .line 13428
    sget-object v1, Lcom/flurry/sdk/mj$b;->b:Lcom/flurry/sdk/mj$b;

    iget-object v1, v1, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13431
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 16070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 13431
    if-eqz v0, :cond_1

    .line 13432
    invoke-static {}, Lcom/flurry/sdk/mh;->b()Lcom/flurry/sdk/mh;

    move-result-object v0

    .line 17070
    iget-object v0, v0, Lcom/flurry/sdk/mh;->a:Lcom/flurry/sdk/mj;

    .line 13432
    sget v0, Lcom/flurry/sdk/mh;->n:I

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/flurry/android/FlurryInternalTakeoverActivity;)Lcom/flurry/sdk/gz;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    return-object v0
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->d:Z

    if-eqz v0, :cond_0

    .line 224
    monitor-exit p0

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->d:Z

    .line 227
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 227
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
    .line 358
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fireEvent(event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    .line 360
    return-void
.end method

.method public final loadViewState()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->l()Lcom/flurry/sdk/hh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 371
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->finish()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load view state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    invoke-virtual {v3}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onConfigurationChanged"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onConfigurationChanged()V

    .line 182
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 62
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->setTheme(I)V

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "Flurry core not initialized."

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->finish()V

    .line 93
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fq;->a(Landroid/view/Window;)V

    .line 74
    invoke-virtual {p0, v5}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->setVolumeControlStream(I)V

    .line 77
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->b:Landroid/view/ViewGroup;

    .line 1250
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_object_legacy"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1251
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ad_object_id"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1252
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1253
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "close_ad"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1255
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v4

    .line 1256
    if-eqz v0, :cond_1

    .line 2228
    iget-object v0, v4, Lcom/flurry/sdk/i;->c:Lcom/flurry/sdk/w;

    .line 1256
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/w;->a(I)Lcom/flurry/sdk/v;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    .line 1257
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-nez v0, :cond_2

    .line 1258
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "Cannot launch Activity. No ad object."

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->finish()V

    .line 81
    :goto_2
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f()V

    .line 4096
    iput-boolean v7, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->g:Z

    .line 84
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    if-eqz v0, :cond_3

    .line 86
    sget-object v0, Lcom/flurry/sdk/bc;->ad:Lcom/flurry/sdk/bc;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v6}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->fireEvent(Lcom/flurry/sdk/bc;Ljava/util/Map;I)V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->h:J

    goto :goto_0

    .line 3224
    :cond_1
    iget-object v0, v4, Lcom/flurry/sdk/i;->b:Lcom/flurry/sdk/p;

    .line 1256
    invoke-virtual {v0, v1}, Lcom/flurry/sdk/p;->a(I)Lcom/flurry/sdk/r;

    move-result-object v0

    goto :goto_1

    .line 1262
    :cond_2
    new-instance v0, Lcom/flurry/sdk/hh;

    iget-object v1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/hh;-><init>(Lcom/flurry/sdk/r;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->f:Lcom/flurry/sdk/hh;

    .line 1263
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/flurry/sdk/au;->a(Z)V

    goto :goto_2

    .line 91
    :cond_3
    sget-object v0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "FlurryFullscreenTakeoverActivity cannot be launched as the internal ad object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final onDestroy()V
    .locals 4

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c()V

    .line 192
    :cond_0
    return-void
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onKeyUp"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onBackKey()Z

    .line 243
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 141
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPause "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityPause()V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->b()V

    .line 151
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c()V

    .line 154
    :cond_1
    return-void
.end method

.method protected final onRestart()V
    .locals 4

    .prologue
    .line 120
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRestart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 123
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->loadViewState()V

    .line 124
    return-void
.end method

.method protected final onResume()V
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResume "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityResume()V

    .line 134
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 106
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStart "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->registerActivityEvent()V

    .line 109
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lm;->b(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->d()V

    .line 113
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->c:Lcom/flurry/sdk/gz;

    invoke-virtual {v0}, Lcom/flurry/sdk/gz;->onActivityStart()V

    .line 116
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 167
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->b()V

    .line 170
    invoke-virtual {p0}, Lcom/flurry/android/FlurryInternalTakeoverActivity;->unregisterActivityEvent()V

    .line 171
    invoke-static {}, Lcom/flurry/sdk/lm;->a()Lcom/flurry/sdk/lm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/lm;->c(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method public final registerActivityEvent()V
    .locals 3

    .prologue
    .line 301
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.views.ActivityEvent"

    iget-object v2, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->i:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 302
    return-void
.end method

.method public final removeViewState()V
    .locals 5

    .prologue
    .line 379
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->e:Lcom/flurry/sdk/r;

    invoke-interface {v0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->k()Lcom/flurry/sdk/hh;

    move-result-object v0

    .line 381
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/FlurryInternalTakeoverActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remove view state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/hh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    return-void
.end method

.method public final unregisterActivityEvent()V
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryInternalTakeoverActivity;->i:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kh;)V

    .line 306
    return-void
.end method
