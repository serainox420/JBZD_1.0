.class Lcom/smartadserver/android/library/controller/a$3;
.super Ljava/lang/Object;
.source "SASAdViewController.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/SASAdView$a;ILorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/d/a;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/smartadserver/android/library/ui/SASAdView$a;

.field final synthetic g:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/d/a;ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$3;->g:Lcom/smartadserver/android/library/controller/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$3;->a:Lcom/smartadserver/android/library/d/a;

    iput p3, p0, Lcom/smartadserver/android/library/controller/a$3;->b:I

    iput-object p4, p0, Lcom/smartadserver/android/library/controller/a$3;->c:Ljava/lang/String;

    iput p5, p0, Lcom/smartadserver/android/library/controller/a$3;->d:I

    iput-object p6, p0, Lcom/smartadserver/android/library/controller/a$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/ui/SASAdView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 6

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->isPrefetchable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getInsertionId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->a:Lcom/smartadserver/android/library/d/a;

    iget v1, p0, Lcom/smartadserver/android/library/controller/a$3;->b:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$3;->c:Ljava/lang/String;

    iget v3, p0, Lcom/smartadserver/android/library/controller/a$3;->d:I

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a$3;->e:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/d/a;->a(ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/model/SASAdElement;)V

    .line 378
    const-string v0, "adLoadingCompleted for prefetch ad, load Ad can be processed on this AdView"

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully cached ad for url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getScriptUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 381
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$3;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/a;->a(Landroid/content/Context;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/ui/SASAdView$a;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/ui/SASAdView$a;

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$g;->a(Lcom/smartadserver/android/library/model/SASAdElement;)V
    :try_end_0
    .catch Lcom/smartadserver/android/library/exception/SASAdCachingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/a$3;->adLoadingFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->isPrefetchable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdCachingException;

    const-string v1, "Ad does not support prefetching"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdCachingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/a$3;->adLoadingFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 397
    :cond_3
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getInsertionId()I

    move-result v0

    if-nez v0, :cond_1

    .line 398
    new-instance v0, Lcom/smartadserver/android/library/exception/SASAdCachingException;

    const-string v1, "Prefechable Ad does not have a valid insertionID"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/exception/SASAdCachingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/a$3;->adLoadingFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 352
    instance-of v0, p1, Lcom/smartadserver/android/library/exception/SASNoAdToDeliverException;

    if-eqz v0, :cond_0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->a:Lcom/smartadserver/android/library/d/a;

    iget v1, p0, Lcom/smartadserver/android/library/controller/a$3;->b:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$3;->c:Ljava/lang/String;

    iget v3, p0, Lcom/smartadserver/android/library/controller/a$3;->d:I

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a$3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartadserver/android/library/d/a;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/smartadserver/android/library/exception/SASAdCachingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/ui/SASAdView$a;

    instance-of v0, v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/ui/SASAdView$a;

    check-cast v0, Lcom/smartadserver/android/library/ui/SASAdView$g;

    invoke-interface {v0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$g;->a(Ljava/lang/Exception;)V

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prefetch failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 367
    const-string v0, "adLoadingFailed for prefetch ad, load Ad can be processed on this AdView"

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->g:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 371
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    invoke-virtual {v0}, Lcom/smartadserver/android/library/exception/SASAdCachingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
