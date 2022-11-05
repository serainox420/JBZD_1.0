.class Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;
.super Ljava/lang/Object;
.source "InMobiNativeAd.java"

# interfaces
.implements Lcom/inmobi/monetization/IMNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->createListener()Lcom/inmobi/monetization/IMNativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeRequestFailed(Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-virtual {p1}, Lcom/inmobi/monetization/IMErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onNativeRequestSucceeded(Lcom/inmobi/monetization/IMNative;)V
    .locals 8

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$102(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNative;

    .line 73
    new-instance v0, Lorg/json/JSONTokener;

    invoke-virtual {p1}, Lcom/inmobi/monetization/IMNative;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    const-string v1, "headline"

    const-string v2, "title"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$300(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    const-string v1, "cta"

    const-string v2, "cta"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$400(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "rating"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 83
    if-lez v2, :cond_0

    .line 84
    iget-object v7, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    int-to-double v2, v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/ad/NativeAd$a;-><init>(Lcom/intentsoftware/addapptr/ad/NativeAd;DD)V

    invoke-static {v7, v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$500(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    .line 87
    :cond_0
    const-string v0, "screenshots"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    const-string v2, "main"

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$600(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    const-string v0, "icon"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    const-string v2, "icon"

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$700(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    const-string v1, "landingURL"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$802(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$900(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error when parsing response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;->access$1000(Lcom/intentsoftware/addapptr/nativeads/InMobiNativeAd;Ljava/lang/String;)V

    goto :goto_0
.end method
