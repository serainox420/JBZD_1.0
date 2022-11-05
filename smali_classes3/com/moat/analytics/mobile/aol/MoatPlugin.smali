.class interface abstract Lcom/moat/analytics/mobile/aol/MoatPlugin;
.super Ljava/lang/Object;
.source "MoatPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/moat/analytics/mobile/aol/ActivityState;Lcom/moat/analytics/mobile/aol/OnOffSwitch;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/aol/ActivityState;",
            "Lcom/moat/analytics/mobile/aol/OnOffSwitch;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method

.method public abstract createNoOp()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
