.class Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOGObjectLikesRequestWrapper"
.end annotation


# instance fields
.field private final objectId:Ljava/lang/String;

.field private objectIsLiked:Z

.field private final objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field private unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 5

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1518
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1512
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$2500(Lcom/facebook/share/internal/LikeActionController;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    .line 1519
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    .line 1520
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 1522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1523
    const-string v1, "fields"

    const-string v2, "id,application"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v1, "object"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1527
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1526
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1531
    return-void
.end method


# virtual methods
.method public getUnlikeToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->unlikeToken:Ljava/lang/String;

    return-object v0
.end method

.method public isObjectLiked()Z
    .locals 1

    .prologue
    .line 1570
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    return v0
.end method

.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .locals 6

    .prologue
    .line 1559
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1560
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1559
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1565
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v1, "get_og_object_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1566
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .locals 6

    .prologue
    .line 1535
    .line 1536
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    .line 1535
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->tryGetJSONArrayFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1538
    if-eqz v1, :cond_1

    .line 1539
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1540
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1541
    if-eqz v2, :cond_0

    .line 1542
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    .line 1543
    const-string v3, "application"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1544
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    .line 1545
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1548
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    .line 1549
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1547
    invoke-static {v4, v3}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1550
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1539
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1555
    :cond_1
    return-void
.end method
