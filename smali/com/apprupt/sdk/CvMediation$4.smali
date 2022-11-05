.class Lcom/apprupt/sdk/CvMediation$4;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvMediation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$4;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "Processing adapters config..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 151
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 152
    const-string v0, "adapters"

    invoke-virtual {p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v4

    .line 153
    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {v4}, Lcom/apprupt/sdk/SimpleJSON;->a()Lorg/json/JSONArray;

    move-result-object v5

    move v2, v3

    .line 155
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 156
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$4;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v1}, Lcom/apprupt/sdk/CvMediation;->d(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$4;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v1}, Lcom/apprupt/sdk/CvMediation;->e(Lcom/apprupt/sdk/CvMediation;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "Configuration for"

    aput-object v7, v6, v3

    aput-object v0, v6, v8

    invoke-interface {v1, v6}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lcom/apprupt/sdk/CvMediation$4;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v1}, Lcom/apprupt/sdk/CvMediation;->d(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apprupt/sdk/mediation/Adapter;

    invoke-virtual {v4, v0}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v0

    iget-object v0, v0, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/apprupt/sdk/mediation/Adapter;->a(Lorg/json/JSONObject;)V

    .line 155
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->b()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Resolve: process adapters config:"

    aput-object v2, v1, v3

    aput-object p1, v1, v8

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 164
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 165
    return-void
.end method
