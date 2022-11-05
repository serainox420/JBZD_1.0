.class public interface abstract Lcom/inmobi/monetization/internal/IMAdListener;
.super Ljava/lang/Object;
.source "IMAdListener.java"


# virtual methods
.method public abstract onAdInteraction(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
.end method

.method public abstract onAdRequestSucceeded()V
.end method

.method public abstract onDismissAdScreen()V
.end method

.method public abstract onIncentCompleted(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLeaveApplication()V
.end method

.method public abstract onShowAdScreen()V
.end method
