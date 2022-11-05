.class Lcom/smaato/soma/ExpandedBannerActivity$8$1;
.super Lcom/smaato/soma/l;
.source "ExpandedBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity$8;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/KeyEvent;

.field final synthetic d:Lcom/smaato/soma/ExpandedBannerActivity$8;


# direct methods
.method constructor <init>(Lcom/smaato/soma/ExpandedBannerActivity$8;Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->d:Lcom/smaato/soma/ExpandedBannerActivity$8;

    iput-object p2, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->b:I

    iput-object p4, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->c:Landroid/view/KeyEvent;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 462
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 475
    :goto_0
    return-object v0

    .line 464
    :cond_0
    iget v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->c:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 465
    invoke-static {}, Lcom/smaato/soma/ExpandedBannerActivity;->a()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "ExpandedBannerActivity"

    const-string v2, "ExpandedBannerActivity being finish invoked from WebViewKeyListener"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 472
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->d:Lcom/smaato/soma/ExpandedBannerActivity$8;

    iget-object v0, v0, Lcom/smaato/soma/ExpandedBannerActivity$8;->a:Lcom/smaato/soma/ExpandedBannerActivity;

    invoke-virtual {v0}, Lcom/smaato/soma/ExpandedBannerActivity;->c()V

    .line 475
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity$8$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
