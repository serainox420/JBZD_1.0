.class Lcom/apprupt/sdk/Timeout$2;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/apprupt/sdk/Timeout;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$2;->c:Lcom/apprupt/sdk/Timeout;

    iget v1, p0, Lcom/apprupt/sdk/Timeout$2;->a:I

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;I)I

    .line 56
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$2;->c:Lcom/apprupt/sdk/Timeout;

    iget-wide v2, p0, Lcom/apprupt/sdk/Timeout$2;->b:J

    invoke-static {v0, v2, v3}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;J)J

    .line 57
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$2;->c:Lcom/apprupt/sdk/Timeout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;Z)Z

    .line 58
    iget-object v0, p0, Lcom/apprupt/sdk/Timeout$2;->c:Lcom/apprupt/sdk/Timeout;

    invoke-static {v0}, Lcom/apprupt/sdk/Timeout;->a(Lcom/apprupt/sdk/Timeout;)V

    .line 59
    return-void
.end method
