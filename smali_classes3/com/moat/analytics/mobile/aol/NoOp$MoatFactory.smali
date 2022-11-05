.class public Lcom/moat/analytics/mobile/aol/NoOp$MoatFactory;
.super Lcom/moat/analytics/mobile/aol/MoatFactory;
.source "NoOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoatFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/moat/analytics/mobile/aol/MoatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/aol/MoatPlugin;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/aol/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$NativeDisplayTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$NativeDisplayTracker;-><init>()V

    return-object v0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeVideoTracker;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$NativeVideoTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$NativeVideoTracker;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;-><init>()V

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;-><init>()V

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$WebAdTracker;-><init>()V

    return-object v0
.end method
