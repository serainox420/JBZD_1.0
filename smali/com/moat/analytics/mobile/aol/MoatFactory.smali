.class public abstract Lcom/moat/analytics/mobile/aol/MoatFactory;
.super Ljava/lang/Object;
.source "MoatFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/moat/analytics/mobile/aol/MoatFactory;
    .locals 1

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/aol/MoatFactoryImpl;-><init>(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    .line 23
    new-instance v0, Lcom/moat/analytics/mobile/aol/NoOp$MoatFactory;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/aol/NoOp$MoatFactory;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract createCustomTracker(Lcom/moat/analytics/mobile/aol/MoatPlugin;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/aol/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract createNativeDisplayTracker(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;
.end method

.method public abstract createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/NativeVideoTracker;
.end method

.method public abstract createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
.end method

.method public abstract createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
.end method

.method public abstract createWebDisplayTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createWebDisplayTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/aol/WebAdTracker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
