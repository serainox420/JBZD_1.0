.class Lcom/smaato/soma/BannerView$a$1;
.super Lcom/smaato/soma/l;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/BannerView$a;->handleMessage(Landroid/os/Message;)V
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
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/smaato/soma/BannerView$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/BannerView$a;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iput-object p2, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 563
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/j;

    .line 564
    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-object v7

    .line 568
    :cond_1
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "BannerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() with"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 573
    iget-object v1, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 574
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Lcom/smaato/soma/internal/statemachine/BannerState;->b()Z

    .line 576
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v2, v2, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    .line 577
    invoke-virtual {v2}, Lcom/smaato/soma/BannerView;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v2

    .line 576
    invoke-virtual {v1, v2, v0}, Lcom/smaato/soma/bannerutilities/b;->a(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V

    .line 579
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->c()V

    .line 580
    invoke-static {}, Lcom/smaato/soma/measurements/a;->a()Lcom/smaato/soma/measurements/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/measurements/a;->e()V

    .line 584
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    iget-object v0, v0, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0, v6}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    .line 585
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->h()V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_5

    .line 588
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v1, v1, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    iget-object v1, v1, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v1}, Lcom/smaato/soma/bannerutilities/a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 591
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->d()Z

    .line 593
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->i()V

    .line 594
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    iget-object v0, v0, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0, v5}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    .line 600
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-static {v0}, Lcom/smaato/soma/BannerView;->c(Lcom/smaato/soma/BannerView;)V

    goto/16 :goto_0

    .line 596
    :cond_4
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z

    .line 597
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->e()V

    goto :goto_1

    .line 603
    :cond_5
    iget-object v1, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_6

    .line 604
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 606
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestLayout()V

    goto/16 :goto_0

    .line 609
    :cond_6
    iget-object v1, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_7

    .line 612
    :try_start_0
    invoke-static {}, Lcom/smaato/soma/bannerutilities/b;->a()Lcom/smaato/soma/bannerutilities/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smaato/soma/bannerutilities/b;->a(Z)V

    .line 613
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->d()Z

    .line 614
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->i()V

    .line 615
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    iget-object v0, v0, Lcom/smaato/soma/BannerView;->g:Lcom/smaato/soma/bannerutilities/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 616
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 618
    :cond_7
    iget-object v1, p0, Lcom/smaato/soma/BannerView$a$1;->a:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerState()Lcom/smaato/soma/internal/statemachine/BannerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/statemachine/BannerState;->c()Z

    .line 624
    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v0, v0, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 629
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/smaato/soma/BannerView$a$1;->b:Lcom/smaato/soma/BannerView$a;

    iget-object v1, v1, Lcom/smaato/soma/BannerView$a;->a:Lcom/smaato/soma/BannerView;

    invoke-virtual {v1}, Lcom/smaato/soma/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 631
    :catch_1
    move-exception v0

    .line 632
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BannerView"

    const-string v2, "Please declare com.smaato.soma.ExpandedBannerActivity in your AndroidManifest.xml"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto/16 :goto_0

    .line 636
    :catch_2
    move-exception v0

    .line 637
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BannerView"

    const-string v2, "Exception inside Internal Browser"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

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
    .line 560
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView$a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
