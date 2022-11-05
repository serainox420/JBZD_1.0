.class public Lcom/smaato/soma/n$a;
.super Lcom/smaato/soma/j;
.source "FullScreenBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/n$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/n;


# virtual methods
.method public getBannerAnimatorHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/smaato/soma/n$a;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/smaato/soma/n$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/smaato/soma/n$a$a;-><init>(Lcom/smaato/soma/n$a;Lcom/smaato/soma/j;Lcom/smaato/soma/n$1;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/n$a;->setBannerAnimatorHandler(Landroid/os/Handler;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/n$a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method protected j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToViewFullScreenBanner;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->a(Lcom/smaato/soma/n;)Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->b(Lcom/smaato/soma/n;)Lcom/smaato/soma/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    .line 202
    invoke-virtual {v0}, Lcom/smaato/soma/n;->b()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-super {p0}, Lcom/smaato/soma/j;->j()V

    .line 206
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/smaato/soma/n$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smaato/soma/n;->a(Lcom/smaato/soma/n;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 207
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->c(Lcom/smaato/soma/n;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 208
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->c(Lcom/smaato/soma/n;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v0, v0, Lcom/smaato/soma/n;->c:Lcom/smaato/soma/r;

    check-cast v0, Lcom/smaato/soma/n$a;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 209
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->c(Lcom/smaato/soma/n;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Skip"

    new-instance v2, Lcom/smaato/soma/n$a$1;

    invoke-direct {v2, p0}, Lcom/smaato/soma/n$a$1;-><init>(Lcom/smaato/soma/n$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->b(Lcom/smaato/soma/n;)Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->b(Lcom/smaato/soma/n;)Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdType;->TEXT:Lcom/smaato/soma/AdType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->b(Lcom/smaato/soma/n;)Lcom/smaato/soma/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/p;->d()Lcom/smaato/soma/AdType;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdType;->IMAGE:Lcom/smaato/soma/AdType;

    if-ne v0, v1, :cond_3

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v0}, Lcom/smaato/soma/n;->c(Lcom/smaato/soma/n;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "More Info"

    new-instance v2, Lcom/smaato/soma/n$a$2;

    invoke-direct {v2, p0}, Lcom/smaato/soma/n$a$2;-><init>(Lcom/smaato/soma/n$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v0, v0, Lcom/smaato/soma/n;->a:Lcom/smaato/soma/e;

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v0, v0, Lcom/smaato/soma/n;->a:Lcom/smaato/soma/e;

    invoke-interface {v0}, Lcom/smaato/soma/e;->c()V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    iget-object v1, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    invoke-static {v1}, Lcom/smaato/soma/n;->c(Lcom/smaato/soma/n;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/n;->a(Landroid/app/AlertDialog;)V

    .line 252
    invoke-virtual {p0}, Lcom/smaato/soma/n$a;->g()Z

    .line 253
    iget-object v0, p0, Lcom/smaato/soma/n$a;->a:Lcom/smaato/soma/n;

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-static {v0, v1}, Lcom/smaato/soma/n;->a(Lcom/smaato/soma/n;Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    throw v0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    new-instance v1, Lcom/smaato/soma/exception/UnableToViewFullScreenBanner;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToViewFullScreenBanner;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
