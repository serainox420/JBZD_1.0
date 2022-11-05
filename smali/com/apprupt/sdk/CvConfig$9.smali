.class Lcom/apprupt/sdk/CvConfig$9;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$9;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$9;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Config decode"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 218
    check-cast p1, Lcom/apprupt/sdk/URLRequest$URLResponse;

    .line 219
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$9;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Decoding response data"

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 220
    iget-object v0, p1, Lcom/apprupt/sdk/URLRequest$URLResponse;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/apprupt/sdk/CvCrypto;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot decode response data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot decode response data!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$9;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Resolve: decode config:"

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 225
    invoke-interface {p2, v1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 226
    return-void
.end method
