.class public Lcom/smaato/soma/video/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lcom/smaato/soma/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/video/Video$InterstitialOrientation;,
        Lcom/smaato/soma/video/Video$InterstitialStates;
    }
.end annotation


# static fields
.field protected static a:Lcom/smaato/soma/video/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/smaato/soma/video/b;

.field private d:Lcom/smaato/soma/internal/d/c;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method static synthetic a(Lcom/smaato/soma/video/Video;Lcom/smaato/soma/internal/d/c;)Lcom/smaato/soma/internal/d/c;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/smaato/soma/video/Video;->d:Lcom/smaato/soma/internal/d/c;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/video/Video;->c:Lcom/smaato/soma/video/b;

    return-object v0
.end method

.method private a(Lcom/smaato/soma/internal/d/c;)Z
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/smaato/soma/internal/d/c;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/smaato/soma/video/a/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-static {v0}, Lcom/smaato/soma/video/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p1, v0}, Lcom/smaato/soma/internal/d/c;->a(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x1

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/smaato/soma/video/Video;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/video/Video;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/smaato/soma/video/Video;Lcom/smaato/soma/internal/d/c;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/internal/d/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/internal/d/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smaato/soma/video/Video;->d:Lcom/smaato/soma/internal/d/c;

    return-object v0
.end method

.method protected static d()Lcom/smaato/soma/video/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToFindInterstitialBannerView;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    sget-object v0, Lcom/smaato/soma/video/Video;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/smaato/soma/video/Video;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0}, Lcom/smaato/soma/video/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/smaato/soma/video/Video;->a:Lcom/smaato/soma/video/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_0
    sget-object v0, Lcom/smaato/soma/video/Video;->a:Lcom/smaato/soma/video/c;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    throw v0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    new-instance v1, Lcom/smaato/soma/exception/UnableToFindInterstitialBannerView;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToFindInterstitialBannerView;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic d(Lcom/smaato/soma/video/Video;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/smaato/soma/video/Video;->e:Z

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/smaato/soma/video/Video;->f:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/smaato/soma/video/Video;->g:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/smaato/soma/video/Video;->h:I

    return v0
.end method

.method protected e()Lcom/smaato/soma/video/b;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/smaato/soma/video/Video;->c:Lcom/smaato/soma/video/b;

    return-object v0
.end method

.method public onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AdReceiveFailed;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/smaato/soma/video/Video$1;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/video/Video$1;-><init>(Lcom/smaato/soma/video/Video;Lcom/smaato/soma/p;)V

    .line 385
    invoke-virtual {v0}, Lcom/smaato/soma/video/Video$1;->c()Ljava/lang/Object;

    .line 386
    return-void
.end method
