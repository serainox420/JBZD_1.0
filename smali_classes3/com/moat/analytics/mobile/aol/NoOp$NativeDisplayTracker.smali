.class Lcom/moat/analytics/mobile/aol/NoOp$NativeDisplayTracker;
.super Ljava/lang/Object;
.source "NoOp.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeDisplayTracker"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stopTracking()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public track(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
