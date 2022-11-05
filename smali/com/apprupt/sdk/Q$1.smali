.class Lcom/apprupt/sdk/Q$1;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Completion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Q;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/apprupt/sdk/Q$1;->a:Lcom/apprupt/sdk/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/Q$Promise;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/apprupt/sdk/Q$1;->a:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->b(Lcom/apprupt/sdk/Q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apprupt/sdk/Q$1$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/Q$1$1;-><init>(Lcom/apprupt/sdk/Q$1;Lcom/apprupt/sdk/Q$Promise;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method
