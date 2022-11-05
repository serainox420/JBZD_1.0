.class Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$4;
.super Ljava/lang/Object;
.source "MRAIDInterstitialController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->changeContentAreaForInterstitials(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$4;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 363
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 367
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
