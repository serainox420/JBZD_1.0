.class public Lcom/smaato/soma/b/c;
.super Lcom/smaato/soma/j;
.source "ToasterLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/b/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/smaato/soma/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smaato/soma/s;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/smaato/soma/j;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/smaato/soma/b/c;->a:Lcom/smaato/soma/s;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/smaato/soma/b/c;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smaato/soma/b/c;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/OpeningLandingPageFailed;,
            Lcom/smaato/soma/exception/RetrievingDeviceOrientationFailed;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/smaato/soma/b/c;->h()V

    return-void
.end method

.method static synthetic d(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smaato/soma/b/c;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic e(Lcom/smaato/soma/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingPackageFailedException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/smaato/soma/b/c;->i()V

    return-void
.end method

.method static synthetic f(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smaato/soma/b/c;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic g(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smaato/soma/b/c;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic h(Lcom/smaato/soma/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingPackageFailedException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/smaato/soma/b/c;->i()V

    return-void
.end method

.method static synthetic i(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/smaato/soma/b/c;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/smaato/soma/b/c;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/smaato/soma/b/c;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public f()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerViewSwitchingViewsException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Lcom/smaato/soma/j;->f()Z

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/smaato/soma/b/c;->a:Lcom/smaato/soma/s;

    invoke-virtual {v1}, Lcom/smaato/soma/s;->a()V

    .line 64
    return v0
.end method

.method public getBannerAnimatorHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smaato/soma/b/c;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/smaato/soma/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/smaato/soma/b/c$a;-><init>(Lcom/smaato/soma/b/c;Lcom/smaato/soma/j;Lcom/smaato/soma/b/c$1;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/b/c;->setBannerAnimatorHandler(Landroid/os/Handler;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/b/c;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/smaato/soma/j;->onWindowFocusChanged(Z)V

    .line 70
    new-instance v0, Lcom/smaato/soma/b/c$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/b/c$1;-><init>(Lcom/smaato/soma/b/c;Z)V

    .line 80
    invoke-virtual {v0}, Lcom/smaato/soma/b/c$1;->c()Ljava/lang/Object;

    .line 81
    return-void
.end method
