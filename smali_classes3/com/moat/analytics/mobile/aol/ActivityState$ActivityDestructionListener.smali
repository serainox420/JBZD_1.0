.class public interface abstract Lcom/moat/analytics/mobile/aol/ActivityState$ActivityDestructionListener;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityDestructionListener"
.end annotation


# virtual methods
.method public abstract onDestroyed(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method
