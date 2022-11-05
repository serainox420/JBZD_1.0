.class Lcom/apprupt/sdk/TestSignals$3;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/apprupt/sdk/TestSignals;


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/apprupt/sdk/TestSignals$3;->d:Lcom/apprupt/sdk/TestSignals;

    invoke-static {v0}, Lcom/apprupt/sdk/TestSignals;->a(Lcom/apprupt/sdk/TestSignals;)Ljava/util/HashMap;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/apprupt/sdk/TestSignals$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/TestSignals$Receiver;

    .line 128
    iget-object v2, p0, Lcom/apprupt/sdk/TestSignals$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/apprupt/sdk/TestSignals$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/apprupt/sdk/TestSignals$3;->c:Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lcom/apprupt/sdk/TestSignals$Receiver;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method
