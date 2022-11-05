.class public Lcom/video/adsdk/utils/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/video/adsdk/utils/ViewGroupUtils;->getParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_0
    return-void
.end method

.method public static replaceView(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {p0}, Lcom/video/adsdk/utils/ViewGroupUtils;->getParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 24
    invoke-static {p0}, Lcom/video/adsdk/utils/ViewGroupUtils;->removeView(Landroid/view/View;)V

    .line 25
    invoke-static {p1}, Lcom/video/adsdk/utils/ViewGroupUtils;->removeView(Landroid/view/View;)V

    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
