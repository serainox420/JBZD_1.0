.class final Lcom/revmob/ads/banner/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/ads/banner/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$000(Lcom/revmob/ads/banner/RevMobBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$100(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0, v5}, Lcom/revmob/ads/banner/RevMobBanner;->access$002(Lcom/revmob/ads/banner/RevMobBanner;Z)Z

    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    sget v1, Lcom/revmob/ads/a/c;->g:I

    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$202$62a0c7c7(Lcom/revmob/ads/banner/RevMobBanner;I)I

    new-instance v0, Lcom/revmob/internal/d;

    iget-object v1, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v1, v1, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$300(Lcom/revmob/ads/banner/RevMobBanner;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v2, v2, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v2}, Lcom/revmob/ads/banner/RevMobBanner;->access$400(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/a/b;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v3, v3, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v3}, Lcom/revmob/ads/banner/RevMobBanner;->access$500(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/RevMobAdsListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/revmob/internal/d;-><init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/internal/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->release()V

    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$600(Lcom/revmob/ads/banner/RevMobBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0, v5}, Lcom/revmob/ads/banner/RevMobBanner;->access$702(Lcom/revmob/ads/banner/RevMobBanner;Z)Z

    iget-object v0, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v0, v0, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    iget-object v1, p0, Lcom/revmob/ads/banner/b;->a:Lcom/revmob/ads/banner/a;

    iget-object v1, v1, Lcom/revmob/ads/banner/a;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$800(Lcom/revmob/ads/banner/RevMobBanner;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/revmob/ads/banner/RevMobBanner;->access$900(Lcom/revmob/ads/banner/RevMobBanner;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
