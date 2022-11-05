.class Lcom/apprupt/sdk/URLRequest$1;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/URLRequest;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/Q$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/apprupt/sdk/URLRequest;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/URLRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest$1;->c:Lcom/apprupt/sdk/URLRequest;

    iput-object p2, p0, Lcom/apprupt/sdk/URLRequest$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/apprupt/sdk/URLRequest$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Lcom/apprupt/sdk/URLRequest;->e()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Running URLRequest..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$1;->c:Lcom/apprupt/sdk/URLRequest;

    new-instance v1, Lcom/apprupt/sdk/URLRequest$1$1;

    invoke-direct {v1, p0, p2}, Lcom/apprupt/sdk/URLRequest$1$1;-><init>(Lcom/apprupt/sdk/URLRequest$1;Lcom/apprupt/sdk/Q$Resolver;)V

    invoke-static {v0, v1}, Lcom/apprupt/sdk/URLRequest;->a(Lcom/apprupt/sdk/URLRequest;Lcom/apprupt/sdk/URLRequest$Listener;)Lcom/apprupt/sdk/URLRequest$Listener;

    .line 359
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$1;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$1;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$1;->c:Lcom/apprupt/sdk/URLRequest;

    invoke-virtual {v0}, Lcom/apprupt/sdk/URLRequest;->b()Lcom/apprupt/sdk/URLRequest;

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$1;->c:Lcom/apprupt/sdk/URLRequest;

    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/apprupt/sdk/URLRequest$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/URLRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apprupt/sdk/URLRequest;

    goto :goto_0
.end method
