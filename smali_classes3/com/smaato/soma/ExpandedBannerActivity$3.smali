.class Lcom/smaato/soma/ExpandedBannerActivity$3;
.super Ljava/lang/Object;
.source "ExpandedBannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/ExpandedBannerActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/ExpandedBannerActivity;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$3;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 736
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smaato/soma/bannerutilities/a;->a(Z)V

    .line 737
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$3;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    .line 738
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity$3;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/j;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 740
    return-void
.end method
