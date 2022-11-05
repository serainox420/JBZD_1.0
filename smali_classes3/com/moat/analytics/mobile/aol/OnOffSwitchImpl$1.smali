.class Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$1;
.super Ljava/lang/Object;
.source "OnOffSwitchImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;-><init>(Lcom/moat/analytics/mobile/aol/MoatNet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$1;->this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lcom/moat/analytics/mobile/aol/base/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MoatStatus"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 53
    return-object v0
.end method
