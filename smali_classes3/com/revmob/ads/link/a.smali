.class final Lcom/revmob/ads/link/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/ads/link/RevMobLink;


# direct methods
.method constructor <init>(Lcom/revmob/ads/link/RevMobLink;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/link/a;->a:Lcom/revmob/ads/link/RevMobLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/revmob/internal/d;

    iget-object v1, p0, Lcom/revmob/ads/link/a;->a:Lcom/revmob/ads/link/RevMobLink;

    invoke-static {v1}, Lcom/revmob/ads/link/RevMobLink;->access$000(Lcom/revmob/ads/link/RevMobLink;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/link/a;->a:Lcom/revmob/ads/link/RevMobLink;

    invoke-static {v2}, Lcom/revmob/ads/link/RevMobLink;->access$100(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/ads/link/a/b;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/link/a;->a:Lcom/revmob/ads/link/RevMobLink;

    invoke-static {v3}, Lcom/revmob/ads/link/RevMobLink;->access$200(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/RevMobAdsListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/revmob/internal/d;-><init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
