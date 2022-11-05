.class Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$1;
.super Ljava/lang/Object;
.source "MRAIDInterstitialController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->animateAndDismissWebview()V
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
    .line 124
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$1;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$1;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->dismissWebview()V

    .line 137
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
