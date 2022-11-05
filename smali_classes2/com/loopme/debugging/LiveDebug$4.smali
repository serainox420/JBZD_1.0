.class final Lcom/loopme/debugging/LiveDebug$4;
.super Ljava/lang/Object;
.source "LiveDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/debugging/LiveDebug;->saveLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/loopme/debugging/LiveDebug$4;->val$logString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/loopme/debugging/LiveDebug;->access$400()Lcom/loopme/debugging/LogDbHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/debugging/LiveDebug$4;->val$logString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loopme/debugging/LogDbHelper;->putLog(Ljava/lang/String;)V

    .line 137
    return-void
.end method
