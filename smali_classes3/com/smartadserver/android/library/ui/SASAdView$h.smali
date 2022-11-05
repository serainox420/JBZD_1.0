.class Lcom/smartadserver/android/library/ui/SASAdView$h;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/SASAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 0

    .prologue
    .line 3982
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Lcom/smartadserver/android/library/ui/SASAdView$1;)V
    .locals 0

    .prologue
    .line 3982
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/ui/SASAdView$h;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;)V

    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/ui/SASAdView$h;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 3989
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 3991
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getNeededPadding()[I

    move-result-object v0

    .line 3992
    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    add-int/2addr v2, v3

    .line 3994
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x2

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v2, v4, v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3995
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3996
    const/4 v4, 0x0

    const/4 v5, 0x1

    aget v0, v0, v5

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3999
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getVisibility()I

    move-result v4

    .line 4000
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getLoaderView()Landroid/view/View;

    move-result-object v5

    .line 4001
    const/4 v0, 0x0

    .line 4003
    iget-object v6, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/smartadserver/android/library/ui/SASAdView;->setVisibility(I)V

    .line 4004
    if-eqz v5, :cond_0

    .line 4005
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 4006
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4009
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4010
    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v4}, Lcom/smartadserver/android/library/ui/SASAdView;->setVisibility(I)V

    .line 4011
    if-eqz v5, :cond_1

    .line 4012
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4014
    :cond_1
    iput-object v2, p0, Lcom/smartadserver/android/library/ui/SASAdView$h;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4018
    :goto_0
    return-void

    .line 4015
    :catch_0
    move-exception v0

    .line 4016
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
