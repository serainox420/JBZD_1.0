.class final Lcom/facebook/share/internal/ShareInternalUtility$7;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$callId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$callId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$attachments:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$callId:Ljava/util/UUID;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v1

    .line 363
    if-nez v1, :cond_1

    .line 364
    const/4 v0, 0x0

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 371
    :try_start_0
    const-string v2, "url"

    .line 372
    invoke-virtual {v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const-string v1, "user_generated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unable to attach images"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
