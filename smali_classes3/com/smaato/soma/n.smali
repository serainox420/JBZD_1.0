.class public Lcom/smaato/soma/n;
.super Lcom/smaato/soma/a;
.source "FullScreenBanner.java"

# interfaces
.implements Lcom/smaato/soma/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/a",
        "<",
        "Lcom/smaato/soma/k;",
        ">;",
        "Lcom/smaato/soma/g;"
    }
.end annotation


# instance fields
.field private d:Landroid/app/AlertDialog$Builder;

.field private e:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

.field private f:Lcom/smaato/soma/p;


# direct methods
.method static synthetic a(Lcom/smaato/soma/n;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/smaato/soma/n;->d:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/n;)Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/n;->e:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/n;Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/smaato/soma/n;->e:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    return-object p1
.end method

.method static synthetic b(Lcom/smaato/soma/n;)Lcom/smaato/soma/p;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/n;->f:Lcom/smaato/soma/p;

    return-object v0
.end method

.method static synthetic c(Lcom/smaato/soma/n;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/n;->d:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/smaato/soma/a;->c()V

    .line 104
    new-instance v0, Lcom/smaato/soma/n$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/n$2;-><init>(Lcom/smaato/soma/n;)V

    .line 112
    invoke-virtual {v0}, Lcom/smaato/soma/n$2;->c()Ljava/lang/Object;

    .line 113
    return-void
.end method

.method public onWillCloseLandingPage(Lcom/smaato/soma/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/FullScreenBannerClosingLandingPageFailed;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/n;->c()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    throw v0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    new-instance v1, Lcom/smaato/soma/exception/FullScreenBannerClosingLandingPageFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/FullScreenBannerClosingLandingPageFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onWillOpenLandingPage(Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
