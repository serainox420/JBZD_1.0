.class Lcom/adcolony/sdk/bi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iput-object p2, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 414
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "processBundle was executed"

    invoke-static {v1, v2, v5}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v3, "catalogPage"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adcolony/sdk/bi;->r:Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "close"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 417
    iget-object v2, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v3, "redemptionResult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 418
    iget-object v3, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v4, "redemptionError"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    if-eqz v1, :cond_0

    .line 421
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cp;->d()V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v4, "redemptionResult"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    invoke-virtual {v1, v2, v3}, Lcom/adcolony/sdk/bi;->b(ZLjava/lang/String;)V

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "packageComplete"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    const-string v2, "javascript:finishDigitalRedemptionTransaction()"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/co;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "openedFromToast"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v3, "openedFromToast"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/adcolony/sdk/bi;->A:Z

    .line 438
    :cond_3
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "displayType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 439
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v3, "displayType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/adcolony/sdk/bi;->y:I

    .line 441
    :cond_4
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "source_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 442
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v3, "source_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adcolony/sdk/bi;->z:Ljava/lang/String;

    .line 444
    :cond_5
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "coordinates"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 449
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 450
    iget-object v2, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v3, "y"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 451
    if-eqz v1, :cond_6

    .line 452
    iget-object v3, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v4, "x"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 453
    int-to-float v3, v3

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 454
    iget-object v4, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v4, v4, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 456
    :cond_6
    if-eqz v2, :cond_7

    .line 457
    iget-object v3, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v4, "y"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 458
    int-to-float v3, v3

    invoke-static {}, Lcom/adcolony/sdk/co;->a()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 459
    iget-object v4, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v4, v4, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 462
    :cond_7
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 463
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 464
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->C:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    :cond_8
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 468
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "enabled"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 469
    if-eqz v1, :cond_b

    .line 470
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v2, "callbackId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    const-string v3, "callbackId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 484
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callbackIdParam"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    iget-object v4, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 490
    iget-object v0, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    invoke-static {v2}, Lcom/adcolony/sdk/co;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/adcolony/sdk/bi;->injectCallbackResult(ILjava/lang/String;)V

    .line 492
    :cond_a
    iget-object v0, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->c()V

    .line 493
    return-void

    .line 472
    :cond_b
    iget-object v1, p0, Lcom/adcolony/sdk/bi$4;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->B:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 488
    :cond_c
    iget-object v4, p0, Lcom/adcolony/sdk/bi$4;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 489
    goto :goto_1
.end method
