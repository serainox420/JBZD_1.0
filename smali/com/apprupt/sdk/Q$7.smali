.class Lcom/apprupt/sdk/Q$7;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$CompletionHandler;)Lcom/apprupt/sdk/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q$CompletionHandler;

.field final synthetic b:Lcom/apprupt/sdk/Q;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$CompletionHandler;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/apprupt/sdk/Q$7;->b:Lcom/apprupt/sdk/Q;

    iput-object p2, p0, Lcom/apprupt/sdk/Q$7;->a:Lcom/apprupt/sdk/Q$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/apprupt/sdk/Q$7;->b:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->c(Lcom/apprupt/sdk/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/apprupt/sdk/Q$7;->a:Lcom/apprupt/sdk/Q$CompletionHandler;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$7;->b:Lcom/apprupt/sdk/Q;

    invoke-static {v1}, Lcom/apprupt/sdk/Q;->d(Lcom/apprupt/sdk/Q;)Ljava/lang/Throwable;

    move-result-object v1

    iget-object v2, p0, Lcom/apprupt/sdk/Q$7;->b:Lcom/apprupt/sdk/Q;

    invoke-static {v2}, Lcom/apprupt/sdk/Q;->e(Lcom/apprupt/sdk/Q;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/apprupt/sdk/Q$CompletionHandler;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Q$7;->b:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->h(Lcom/apprupt/sdk/Q;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/Q$7;->a:Lcom/apprupt/sdk/Q$CompletionHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
