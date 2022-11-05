.class Lcom/smaato/soma/ExpandedBannerActivity$10;
.super Ljava/lang/Object;
.source "ExpandedBannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity;->f()V
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
    .line 608
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$10;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$10;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->c(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/internal/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$10;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->c(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/internal/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->goForward()V

    .line 614
    :cond_0
    return-void
.end method
