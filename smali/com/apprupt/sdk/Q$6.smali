.class Lcom/apprupt/sdk/Q$6;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q$SuccessHandler;)Lcom/apprupt/sdk/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q$SuccessHandler;

.field final synthetic b:Lcom/apprupt/sdk/Q;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$SuccessHandler;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/apprupt/sdk/Q$6;->b:Lcom/apprupt/sdk/Q;

    iput-object p2, p0, Lcom/apprupt/sdk/Q$6;->a:Lcom/apprupt/sdk/Q$SuccessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/apprupt/sdk/Q$6;->b:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->c(Lcom/apprupt/sdk/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/apprupt/sdk/Q$6;->a:Lcom/apprupt/sdk/Q$SuccessHandler;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$6;->b:Lcom/apprupt/sdk/Q;

    invoke-static {v1}, Lcom/apprupt/sdk/Q;->e(Lcom/apprupt/sdk/Q;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Q$SuccessHandler;->a(Ljava/lang/Object;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Q$6;->b:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->g(Lcom/apprupt/sdk/Q;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/apprupt/sdk/Q$6;->a:Lcom/apprupt/sdk/Q$SuccessHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
