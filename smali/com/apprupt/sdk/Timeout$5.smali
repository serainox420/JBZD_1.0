.class Lcom/apprupt/sdk/Timeout$5;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/Timeout;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/apprupt/sdk/Timeout;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/Timeout;I)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    iput p2, p0, Lcom/apprupt/sdk/Timeout$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/apprupt/sdk/Timeout$5;->a:I

    iget-object v1, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v1}, Lcom/apprupt/sdk/Timeout;->c(Lcom/apprupt/sdk/Timeout;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->d(Lcom/apprupt/sdk/Timeout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->e(Lcom/apprupt/sdk/Timeout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->f(Lcom/apprupt/sdk/Timeout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->d(Lcom/apprupt/sdk/Timeout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->g(Lcom/apprupt/sdk/Timeout;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->g(Lcom/apprupt/sdk/Timeout;)I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$5;->b:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;)V

    goto :goto_0
.end method
