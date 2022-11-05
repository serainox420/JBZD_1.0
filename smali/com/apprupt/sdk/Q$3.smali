.class Lcom/apprupt/sdk/Q$3;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Q;-><init>()V
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
    .line 188
    iput-object p1, p0, Lcom/apprupt/sdk/Q$3;->a:Lcom/apprupt/sdk/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/apprupt/sdk/Q$3;->a:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Initial task start!"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/apprupt/sdk/Q$3;->a:Lcom/apprupt/sdk/Q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Q;->a(Lcom/apprupt/sdk/Q;Lcom/apprupt/sdk/Q$Promise;)V

    .line 193
    return-void
.end method
