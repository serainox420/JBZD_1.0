.class Lcom/apprupt/sdk/TestSignals$1;
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
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/apprupt/sdk/TestSignals$1;->c:Lcom/apprupt/sdk/TestSignals;

    invoke-static {v0}, Lcom/apprupt/sdk/TestSignals;->a(Lcom/apprupt/sdk/TestSignals;)Ljava/util/HashMap;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/apprupt/sdk/TestSignals$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v2, p0, Lcom/apprupt/sdk/TestSignals$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/apprupt/sdk/TestSignals$1;->b:Lcom/apprupt/sdk/TestSignals$Receiver;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    return-void
.end method
