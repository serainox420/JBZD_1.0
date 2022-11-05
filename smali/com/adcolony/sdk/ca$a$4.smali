.class Lcom/adcolony/sdk/ca$a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ca$a;->d()V
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
    .line 599
    iput-object p1, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 602
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 605
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v1}, Lcom/adcolony/sdk/ca$b;->removeAllViews()V

    .line 606
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 607
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 611
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$b;->stopLoading()V

    .line 613
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$b;->invalidate()V

    .line 614
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$b;->removeAllViews()V

    .line 615
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 617
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ca$b;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 624
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->e(Lcom/adcolony/sdk/ca;)Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesInAppMsgActivity;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 635
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iput-object v4, v0, Lcom/adcolony/sdk/ca$a;->b:Landroid/widget/RelativeLayout;

    .line 636
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iput-object v4, v0, Lcom/adcolony/sdk/ca$a;->a:Lcom/adcolony/sdk/ca$b;

    .line 638
    :cond_4
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    :try_start_2
    iget-object v0, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v0, v0, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v0}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toastLayout not attached to window mgr"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 631
    :catch_1
    move-exception v0

    .line 632
    iget-object v1, p0, Lcom/adcolony/sdk/ca$a$4;->a:Lcom/adcolony/sdk/ca$a;

    iget-object v1, v1, Lcom/adcolony/sdk/ca$a;->c:Lcom/adcolony/sdk/ca;

    invoke-static {v1}, Lcom/adcolony/sdk/ca;->g(Lcom/adcolony/sdk/ca;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exception->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 633
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
