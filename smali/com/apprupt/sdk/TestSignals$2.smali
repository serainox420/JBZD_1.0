.class Lcom/apprupt/sdk/TestSignals$2;
.super Ljava/lang/Object;
.source "TestSignals.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/TestSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/TestSignals$Receiver;

.field final synthetic c:Lcom/apprupt/sdk/TestSignals;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/apprupt/sdk/TestSignals$2;->c:Lcom/apprupt/sdk/TestSignals;

    invoke-static {v0}, Lcom/apprupt/sdk/TestSignals;->a(Lcom/apprupt/sdk/TestSignals;)Ljava/util/HashMap;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/apprupt/sdk/TestSignals$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/apprupt/sdk/TestSignals$2;->b:Lcom/apprupt/sdk/TestSignals$Receiver;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method
