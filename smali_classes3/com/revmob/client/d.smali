.class final Lcom/revmob/client/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/revmob/RevMobAdsListener;

.field private synthetic c:Lcom/revmob/client/RevMobClient;


# direct methods
.method constructor <init>(Lcom/revmob/client/RevMobClient;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/client/d;->c:Lcom/revmob/client/RevMobClient;

    iput-object p2, p0, Lcom/revmob/client/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/revmob/client/d;->b:Lcom/revmob/RevMobAdsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v4, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/revmob/ads/link/a/b;

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "link"

    const-string v6, "anchors"

    iget-object v7, p0, Lcom/revmob/client/d;->c:Lcom/revmob/client/RevMobClient;

    invoke-static {v7}, Lcom/revmob/client/RevMobClient;->a(Lcom/revmob/client/RevMobClient;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/revmob/client/d;->a:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "?redirect=1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app"

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/revmob/ads/link/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    sput-boolean v4, Lcom/revmob/a/e;->c:Z

    new-instance v1, Lcom/revmob/internal/d;

    invoke-static {}, Lcom/revmob/client/RevMobClient;->d()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/client/d;->b:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/revmob/internal/d;-><init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/revmob/internal/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/revmob/internal/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
