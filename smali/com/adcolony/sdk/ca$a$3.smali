.class Lcom/adcolony/sdk/ca$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ca$a;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ca$a;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .prologue
    const/4 v10, -0x2

    const/16 v9, 0xe

    const/16 v8, 0xb

    const/4 v7, 0x4

    const/16 v6, 0x9

    .line 550
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    const-string v1, "http://www.yvolver.com"

    iget-object v2, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/cm;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/adcolony/sdk/ca$b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cm;->a()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v2, v2, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v2}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    .line 556
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 558
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/cm;->d()I

    move-result v1

    .line 559
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 560
    :cond_1
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 561
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 562
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 587
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 591
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->d(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/cm;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/cm$c;->c:Lcom/adcolony/sdk/cm$c;

    iput-object v1, v0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 593
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$3;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 594
    return-void

    .line 563
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 564
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 566
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 568
    :cond_5
    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    if-eq v1, v6, :cond_6

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 569
    :cond_6
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 570
    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 571
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 572
    :cond_7
    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 573
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 575
    :cond_8
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 577
    :cond_9
    if-eq v1, v7, :cond_a

    const/4 v2, 0x6

    if-eq v1, v2, :cond_a

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 578
    :cond_a
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 579
    if-ne v1, v7, :cond_b

    .line 580
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 581
    :cond_b
    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    .line 582
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 584
    :cond_c
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0
.end method
