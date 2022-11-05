.class Lcom/apprupt/sdk/CvMediation$5;
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
    .line 168
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$5;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "Processing order config..."

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 172
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 173
    const-string v0, "order"

    invoke-virtual {p1, v0}, Lcom/apprupt/sdk/SimpleJSON;->e(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_0

    .line 175
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$5;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->f(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    invoke-virtual {v2}, Lcom/apprupt/sdk/SimpleJSON;->a()Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    .line 177
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 178
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    iget-object v5, p0, Lcom/apprupt/sdk/CvMediation$5;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v5}, Lcom/apprupt/sdk/CvMediation;->f(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v6}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$5;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->f(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "__default__"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$5;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-static {v0}, Lcom/apprupt/sdk/CvMediation;->f(Lcom/apprupt/sdk/CvMediation;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "__default__"

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/apprupt/sdk/mediation/Adapter$Info;->defaultOrder()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_1
    invoke-static {}, Lcom/apprupt/sdk/CvMediation;->b()Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Resolve: process order config:"

    aput-object v3, v2, v1

    aput-object p1, v2, v7

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->a([Ljava/lang/Object;)V

    .line 187
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 188
    return-void
.end method
