.class Lcom/inmobi/monetization/internal/BannerAd$3;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/internal/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/BannerAd;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/BannerAd;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/inmobi/monetization/internal/BannerAd$3;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/inmobi/monetization/internal/BannerAd$3;->a:Lcom/inmobi/monetization/internal/BannerAd;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/BannerAd;->g(Lcom/inmobi/monetization/internal/BannerAd;)V

    .line 699
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 707
    return-void
.end method
