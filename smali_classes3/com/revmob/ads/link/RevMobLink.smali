.class public Lcom/revmob/ads/link/RevMobLink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/revmob/ads/a/a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/revmob/ads/link/a/b;

.field private c:Z

.field private d:I

.field private e:Lcom/revmob/ads/link/a/a;

.field private f:Lcom/revmob/RevMobAdsListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->c:Z

    iput-object p1, p0, Lcom/revmob/ads/link/RevMobLink;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/revmob/ads/link/RevMobLink;->f:Lcom/revmob/RevMobAdsListener;

    sget v0, Lcom/revmob/ads/a/c;->a:I

    iput v0, p0, Lcom/revmob/ads/link/RevMobLink;->d:I

    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/link/RevMobLink;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/ads/link/a/b;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->b:Lcom/revmob/ads/link/a/b;

    return-object v0
.end method

.method static synthetic access$200(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/RevMobAdsListener;
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->f:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method private isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->b:Lcom/revmob/ads/link/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->c:Z

    return-void
.end method

.method public load()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/revmob/ads/link/RevMobLink;->load(Ljava/lang/String;)V

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/revmob/ads/link/RevMobLink;->d:I

    sget v1, Lcom/revmob/ads/a/c;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/revmob/ads/link/RevMobLink;->d:I

    sget v1, Lcom/revmob/ads/a/c;->f:I

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading Link "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/revmob/ads/link/a/a;

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->f:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v0, p0, v1}, Lcom/revmob/ads/link/a/a;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;)V

    iput-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->e:Lcom/revmob/ads/link/a/a;

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->e:Lcom/revmob/ads/link/a/a;

    invoke-virtual {v0, p1, v1}, Lcom/revmob/client/RevMobClient;->e(Ljava/lang/String;Lcom/revmob/client/f;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Loading Link"

    goto :goto_0
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/revmob/ads/link/RevMobLink;->open(Ljava/lang/String;)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->c:Z

    invoke-direct {p0}, Lcom/revmob/ads/link/RevMobLink;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/revmob/ads/link/RevMobLink;->d:I

    sget v1, Lcom/revmob/ads/a/c;->d:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/revmob/ads/a/c;->d:I

    iput v0, p0, Lcom/revmob/ads/link/RevMobLink;->d:I

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->b:Lcom/revmob/ads/link/a/b;

    invoke-virtual {v0, v1}, Lcom/revmob/client/RevMobClient;->a(Lcom/revmob/client/a;)V

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->a:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/link/a;

    invoke-direct {v1, p0}, Lcom/revmob/ads/link/a;-><init>(Lcom/revmob/ads/link/RevMobLink;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/revmob/ads/link/a/a;

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->f:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v0, p0, v1}, Lcom/revmob/ads/link/a/a;-><init>(Lcom/revmob/ads/a/a;Lcom/revmob/RevMobAdsListener;)V

    iput-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->e:Lcom/revmob/ads/link/a/a;

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/revmob/ads/link/RevMobLink;->f:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/revmob/client/RevMobClient;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    goto :goto_0
.end method

.method public updateWithData(Lcom/revmob/client/a;)V
    .locals 2

    sget v0, Lcom/revmob/ads/a/c;->c:I

    iput v0, p0, Lcom/revmob/ads/link/RevMobLink;->d:I

    check-cast p1, Lcom/revmob/ads/link/a/b;

    iput-object p1, p0, Lcom/revmob/ads/link/RevMobLink;->b:Lcom/revmob/ads/link/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Link loaded - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->b:Lcom/revmob/ads/link/a/b;

    iget-object v1, v1, Lcom/revmob/client/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->f:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->f:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    :cond_0
    iget-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/revmob/ads/link/RevMobLink;->open()V

    :cond_1
    return-void
.end method
