.class final Lcom/flurry/sdk/gy$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gy;B)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gy$a;-><init>(Lcom/flurry/sdk/gy;)V

    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 682
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHideCustomView()"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 690
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->t(Lcom/flurry/sdk/gy;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->x(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->x(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 698
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 699
    iget-object v2, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v2}, Lcom/flurry/sdk/gy;->v(Lcom/flurry/sdk/gy;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 700
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->v(Lcom/flurry/sdk/gy;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v2}, Lcom/flurry/sdk/gy;->t(Lcom/flurry/sdk/gy;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 702
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 703
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 704
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 705
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 707
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 713
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 715
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->f(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/hk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hk;->stopLoading()V

    .line 719
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->y(Lcom/flurry/sdk/gy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fe;->a(Landroid/app/Activity;I)V

    .line 720
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->z(Lcom/flurry/sdk/gy;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 722
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 723
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 724
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, -0x1

    .line 604
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(14)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 612
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->t(Lcom/flurry/sdk/gy;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->u(Lcom/flurry/sdk/gy;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 613
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->u(Lcom/flurry/sdk/gy;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1, p1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/view/View;)Landroid/view/View;

    .line 618
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;I)I

    .line 619
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1, p3}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 621
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 622
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->v(Lcom/flurry/sdk/gy;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 623
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->v(Lcom/flurry/sdk/gy;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v2}, Lcom/flurry/sdk/gy;->t(Lcom/flurry/sdk/gy;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 634
    iget-object v2, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v2}, Lcom/flurry/sdk/gy;->v(Lcom/flurry/sdk/gy;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 641
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 642
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    new-instance v2, Lcom/flurry/sdk/gy$a$1;

    invoke-direct {v2, p0, v0, v0}, Lcom/flurry/sdk/gy$a$1;-><init>(Lcom/flurry/sdk/gy$a;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 654
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 656
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/gy$a$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gy$a$2;-><init>(Lcom/flurry/sdk/gy$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 664
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/gy$a$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gy$a$3;-><init>(Lcom/flurry/sdk/gy$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 673
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 674
    iget-object v1, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->w(Lcom/flurry/sdk/gy;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 677
    :cond_2
    invoke-static {v0, p2}, Lcom/flurry/sdk/fe;->b(Landroid/app/Activity;I)Z

    goto/16 :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 589
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(7)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy$a;->a:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 597
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/sdk/gy$a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
