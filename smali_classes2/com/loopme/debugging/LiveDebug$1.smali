.class final Lcom/loopme/debugging/LiveDebug$1;
.super Ljava/lang/Object;
.source "LiveDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/debugging/LiveDebug;->setLiveDebug(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->access$000()V

    .line 54
    return-void
.end method
