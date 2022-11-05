.class Lcom/smaato/soma/video/Video$1;
.super Lcom/smaato/soma/l;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/Video;->onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/p;

.field final synthetic b:Lcom/smaato/soma/video/Video;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/Video;Lcom/smaato/soma/p;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    iput-object p2, p0, Lcom/smaato/soma/video/Video$1;->a:Lcom/smaato/soma/p;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 341
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->k()Lcom/smaato/soma/ErrorCode;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdType;->REWARDED:Lcom/smaato/soma/AdType;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->a:Lcom/smaato/soma/p;

    invoke-interface {v0}, Lcom/smaato/soma/p;->m()Lcom/smaato/soma/internal/d/c;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    iget-object v1, p0, Lcom/smaato/soma/video/Video$1;->a:Lcom/smaato/soma/p;

    invoke-interface {v1}, Lcom/smaato/soma/p;->m()Lcom/smaato/soma/internal/d/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;Lcom/smaato/soma/internal/d/c;)Lcom/smaato/soma/internal/d/c;

    .line 346
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->b(Lcom/smaato/soma/video/Video;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smaato/soma/video/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/b;->onFailedToLoadAd()V

    .line 383
    :cond_1
    :goto_0
    return-object v8

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    iget-object v1, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v1}, Lcom/smaato/soma/video/Video;->c(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/internal/d/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/video/Video;->b(Lcom/smaato/soma/video/Video;Lcom/smaato/soma/internal/d/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    new-instance v0, Lcom/smaato/soma/video/c;

    iget-object v1, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v1}, Lcom/smaato/soma/video/Video;->b(Lcom/smaato/soma/video/Video;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v2}, Lcom/smaato/soma/video/Video;->c(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v3}, Lcom/smaato/soma/video/Video;->d(Lcom/smaato/soma/video/Video;)Z

    move-result v3

    iget-object v4, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v4}, Lcom/smaato/soma/video/Video;->e()Lcom/smaato/soma/video/b;

    move-result-object v4

    iget-object v5, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v5}, Lcom/smaato/soma/video/Video;->b()I

    move-result v5

    iget-object v6, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v6}, Lcom/smaato/soma/video/Video;->a()Z

    move-result v6

    iget-object v7, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v7}, Lcom/smaato/soma/video/Video;->c()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/smaato/soma/video/c;-><init>(Landroid/content/Context;Lcom/smaato/soma/internal/d/c;ZLcom/smaato/soma/video/b;IZI)V

    sput-object v0, Lcom/smaato/soma/video/Video;->a:Lcom/smaato/soma/video/c;

    .line 354
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/b;->onReadyToShow()V

    goto :goto_0

    .line 360
    :cond_3
    new-instance v0, Lcom/smaato/soma/video/Video$1$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/Video$1$1;-><init>(Lcom/smaato/soma/video/Video$1;)V

    .line 376
    iget-object v1, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v1}, Lcom/smaato/soma/video/Video;->c(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/internal/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/internal/d/c;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smaato/soma/video/a/h;->a(Ljava/lang/String;Lcom/smaato/soma/video/a/h$a;)V

    goto :goto_0

    .line 378
    :cond_4
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "VIDEO"

    const-string v2, "No Ad Available"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 379
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/b;->onFailedToLoadAd()V

    goto/16 :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/smaato/soma/video/Video$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
