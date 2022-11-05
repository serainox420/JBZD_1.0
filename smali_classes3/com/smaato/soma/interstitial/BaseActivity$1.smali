.class Lcom/smaato/soma/interstitial/BaseActivity$1;
.super Lcom/smaato/soma/l;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/interstitial/BaseActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/smaato/soma/interstitial/BaseActivity;


# direct methods
.method constructor <init>(Lcom/smaato/soma/interstitial/BaseActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/smaato/soma/interstitial/BaseActivity$1;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 42
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity$1;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    invoke-static {v0}, Lcom/smaato/soma/interstitial/BaseActivity;->a(Lcom/smaato/soma/interstitial/BaseActivity;)V

    .line 43
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity$1;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/smaato/soma/interstitial/BaseActivity$1;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/smaato/soma/interstitial/BaseActivity;->a(Lcom/smaato/soma/interstitial/BaseActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity$1;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    iget-object v1, p0, Lcom/smaato/soma/interstitial/BaseActivity$1;->a:Lcom/smaato/soma/interstitial/BaseActivity;

    invoke-static {v1}, Lcom/smaato/soma/interstitial/BaseActivity;->b(Lcom/smaato/soma/interstitial/BaseActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/interstitial/BaseActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/BaseActivity$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
