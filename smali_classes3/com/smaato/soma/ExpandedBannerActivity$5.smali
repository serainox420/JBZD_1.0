.class Lcom/smaato/soma/ExpandedBannerActivity$5;
.super Lcom/smaato/soma/l;
.source "ExpandedBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity;->d()V
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
.field final synthetic a:Lcom/smaato/soma/ExpandedBannerActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/ExpandedBannerActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$5;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 321
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/e/a;

    .line 323
    invoke-virtual {v0}, Lcom/smaato/soma/internal/e/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 324
    iget-object v1, p0, Lcom/smaato/soma/ExpandedBannerActivity$5;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v1}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smaato/soma/j;->addView(Landroid/view/View;)V

    .line 325
    invoke-virtual {v0, v2}, Lcom/smaato/soma/internal/e/a;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 328
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$5;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-static {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->a(Lcom/smaato/soma/ExpandedBannerActivity;)Lcom/smaato/soma/j;

    move-result-object v0

    instance-of v0, v0, Lcom/smaato/soma/interstitial/b;

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->k()Lcom/smaato/soma/internal/connector/a;

    move-result-object v0

    const-string v1, "default"

    .line 330
    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/connector/a;->a(Ljava/lang/String;)V

    .line 334
    :cond_0
    return-object v2
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity$5;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
