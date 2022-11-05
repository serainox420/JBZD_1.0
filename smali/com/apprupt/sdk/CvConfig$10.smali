.class Lcom/apprupt/sdk/CvConfig$10;
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
    .line 229
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$10;->a:Lcom/apprupt/sdk/CvConfig;

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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$10;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v0}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Parsing config..."

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 233
    check-cast p1, Ljava/lang/String;

    .line 234
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot parse response - invalid JSON string"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    new-instance v0, Lcom/apprupt/sdk/SimpleJSON;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Lorg/json/JSONObject;)V

    .line 239
    const-string v1, "mediation"

    new-instance v2, Lcom/apprupt/sdk/SimpleJSON;

    const-string v3, "{\"dummy\":true}"

    invoke-direct {v2, v3}, Lcom/apprupt/sdk/SimpleJSON;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Lcom/apprupt/sdk/SimpleJSON;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_2

    const-string v2, "dummy"

    invoke-virtual {v1, v2, v4}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "adapters"

    invoke-virtual {v1, v2}, Lcom/apprupt/sdk/SimpleJSON;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    :cond_2
    new-instance v1, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v1}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 243
    const-string v2, "mediation"

    iget-object v0, v0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    move-object v0, v1

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$10;->a:Lcom/apprupt/sdk/CvConfig;

    invoke-static {v1}, Lcom/apprupt/sdk/CvConfig;->a(Lcom/apprupt/sdk/CvConfig;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Resolve: parse config:"

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 246
    invoke-interface {p2, v0}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 247
    return-void
.end method
