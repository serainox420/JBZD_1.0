.class Lcom/smaato/soma/bannerutilities/a$2;
.super Ljava/lang/Object;
.source "AbstractBannerPackage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/a;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$2;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$2;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/bannerutilities/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/ExpandedBannerActivity;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$2;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/a;->a(Lcom/smaato/soma/bannerutilities/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->finish()V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$2;->a:Lcom/smaato/soma/bannerutilities/a;

    iget-object v0, v0, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    .line 732
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/a$2;->a:Lcom/smaato/soma/bannerutilities/a;

    iget-object v1, v1, Lcom/smaato/soma/bannerutilities/a;->b:Lcom/smaato/soma/j;

    invoke-virtual {v1}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    return-void
.end method
