.class Lcom/apprupt/sdk/URLRequest$1$1;
.super Ljava/lang/Object;
.source "URLRequest.java"

# interfaces
.implements Lcom/apprupt/sdk/URLRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/URLRequest$1;->a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q$Resolver;

.field final synthetic b:Lcom/apprupt/sdk/URLRequest$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/URLRequest$1;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/apprupt/sdk/URLRequest$1$1;->b:Lcom/apprupt/sdk/URLRequest$1;

    iput-object p2, p0, Lcom/apprupt/sdk/URLRequest$1$1;->a:Lcom/apprupt/sdk/Q$Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 4

    .prologue
    .line 351
    iget-boolean v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->d:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v1, p0, Lcom/apprupt/sdk/URLRequest$1$1;->a:Lcom/apprupt/sdk/Q$Resolver;

    iget-object v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Error sending request."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1, v0, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 357
    :goto_1
    return-void

    .line 352
    :cond_0
    iget-object v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->e:Ljava/lang/Exception;

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {}, Lcom/apprupt/sdk/URLRequest;->e()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Resolve: URLRequest with response:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/apprupt/sdk/URLRequest$1$1;->a:Lcom/apprupt/sdk/Q$Resolver;

    invoke-interface {v0, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method
