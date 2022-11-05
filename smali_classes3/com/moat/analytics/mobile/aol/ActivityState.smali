.class interface abstract Lcom/moat/analytics/mobile/aol/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/ActivityState$ActivityDestructionListener;
    }
.end annotation


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract isOutOfFocus()Z
.end method

.method public abstract listen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method
