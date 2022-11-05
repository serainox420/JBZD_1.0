.class Lcom/facebook/applinks/FacebookAppLinkResolver$2;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field final synthetic val$appLinkResults:Ljava/util/Map;

.field final synthetic val$taskCompletionSource:Lbolts/i$a;

.field final synthetic val$urisToRequest:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/i$a;Ljava/util/Map;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/i$a;

    iput-object p3, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    iput-object p4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 9

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/i$a;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbolts/i$a;->b(Ljava/lang/Exception;)V

    .line 194
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 150
    if-nez v2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/i$a;

    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lbolts/i$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 156
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 164
    const-string v4, "app_links"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 166
    const-string v1, "android"

    .line 167
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 169
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 170
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_4

    .line 174
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$000(Lorg/json/JSONObject;)Lbolts/b$a;

    move-result-object v8

    .line 175
    if-eqz v8, :cond_3

    .line 176
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    :cond_4
    invoke-static {v0, v4}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    new-instance v4, Lbolts/b;

    invoke-direct {v4, v0, v7, v1}, Lbolts/b;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    .line 183
    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    invoke-static {v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :try_start_1
    iget-object v5, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    invoke-static {v5}, Lcom/facebook/applinks/FacebookAppLinkResolver;->access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_1

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$taskCompletionSource:Lbolts/i$a;

    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lbolts/i$a;->b(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
