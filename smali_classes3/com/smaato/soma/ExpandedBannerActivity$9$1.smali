.class Lcom/smaato/soma/ExpandedBannerActivity$9$1;
.super Lcom/smaato/soma/l;
.source "ExpandedBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/ExpandedBannerActivity$9;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/smaato/soma/ExpandedBannerActivity$9;


# direct methods
.method constructor <init>(Lcom/smaato/soma/ExpandedBannerActivity$9;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->c:Lcom/smaato/soma/ExpandedBannerActivity$9;

    iput-object p2, p0, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->a:Landroid/view/MotionEvent;

    iput-object p3, p0, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 498
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 491
    :pswitch_0
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/smaato/soma/ExpandedBannerActivity$9$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
