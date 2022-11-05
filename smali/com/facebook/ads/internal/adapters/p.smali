.class public Lcom/facebook/ads/internal/adapters/p;
.super Lcom/facebook/ads/internal/adapters/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/facebook/ads/internal/view/b;

.field private final e:Landroid/content/Context;

.field private f:Lcom/facebook/ads/internal/adapters/o;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/adapters/p;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b;Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/adapters/b;)V
    .locals 1

    invoke-direct {p0, p1, p4, p3}, Lcom/facebook/ads/internal/adapters/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/j/a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/view/b;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/p;)Lcom/facebook/ads/internal/view/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/view/b;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/p;)Lcom/facebook/ads/internal/adapters/o;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    return-object v0
.end method

.method private b(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/o;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const-string v0, "evt"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/o;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/ads/internal/g/g;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/util/z;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/util/z;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/p;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/o;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/view/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/adapters/p;->c:Ljava/lang/String;

    const-string v1, "Webview already destroyed, cannot send impression"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string v0, "evt"

    const-string v1, "native_imp"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/p;->b(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/view/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/o;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->g:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/view/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Lcom/facebook/ads/internal/view/b;

    new-instance v1, Lcom/facebook/ads/internal/adapters/p$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/adapters/p$1;-><init>(Lcom/facebook/ads/internal/adapters/p;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "evt"

    const-string v2, "interstitial_displayed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->b:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/p;->b(Ljava/util/Map;)V

    return-void
.end method
