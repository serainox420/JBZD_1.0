.class Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;
.super Ljava/lang/Object;
.source "NoOp.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebAdTracker"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public track()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
