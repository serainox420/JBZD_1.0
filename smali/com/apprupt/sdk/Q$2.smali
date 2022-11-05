.class Lcom/apprupt/sdk/Q$2;
.super Ljava/lang/Object;
.source "Q.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Q;->a(Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/apprupt/sdk/Q;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Q;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/apprupt/sdk/Q$2;->c:Lcom/apprupt/sdk/Q;

    iput-object p2, p0, Lcom/apprupt/sdk/Q$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/apprupt/sdk/Q$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/apprupt/sdk/Q$2;->c:Lcom/apprupt/sdk/Q;

    invoke-static {v0}, Lcom/apprupt/sdk/Q;->c(Lcom/apprupt/sdk/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InternalError;

    iget-object v1, p0, Lcom/apprupt/sdk/Q$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Q$2;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 173
    return-void
.end method
