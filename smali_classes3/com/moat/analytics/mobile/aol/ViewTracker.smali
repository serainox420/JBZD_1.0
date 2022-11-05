.class interface abstract Lcom/moat/analytics/mobile/aol/ViewTracker;
.super Ljava/lang/Object;
.source "ViewTracker.java"


# virtual methods
.method public abstract changeTargetView(Landroid/view/View;)V
.end method

.method public abstract getAdViewRect()Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method

.method public abstract stopTracking()V
.end method

.method public abstract track()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method
