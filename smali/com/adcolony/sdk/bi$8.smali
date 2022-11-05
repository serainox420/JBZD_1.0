.class Lcom/adcolony/sdk/bi$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 582
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "closeCatalog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 583
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->f()V

    .line 585
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/cp;->a(Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;)V

    .line 587
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->D:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 589
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iput-boolean v4, v0, Lcom/adcolony/sdk/bi;->o:Z

    .line 590
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->H:Lcom/adcolony/sdk/by;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->G:Lcom/adcolony/sdk/bi$e;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 591
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 592
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 593
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 594
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 595
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 596
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iput-object v3, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    .line 597
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    iput-object v3, v0, Lcom/adcolony/sdk/bi;->w:Landroid/widget/FrameLayout;

    .line 598
    iget-object v0, p0, Lcom/adcolony/sdk/bi$8;->a:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->finish()V

    .line 599
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 600
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/cp;->a(Lcom/adcolony/sdk/AdColonyPubServicesOverlayActivity;)V

    .line 601
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bl;->b()V

    .line 602
    return-void
.end method
