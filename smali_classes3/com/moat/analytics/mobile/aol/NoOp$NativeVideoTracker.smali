.class Lcom/moat/analytics/mobile/aol/NoOp$NativeVideoTracker;
.super Ljava/lang/Object;
.source "NoOp.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/NativeVideoTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeVideoTracker"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/aol/MoatAdEvent;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public dispatchEvent(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/MediaPlayer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
