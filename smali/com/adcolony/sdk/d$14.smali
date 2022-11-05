.class Lcom/adcolony/sdk/d$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/adcolony/sdk/d$14;->a:Lcom/adcolony/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 5

    .prologue
    .line 357
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/adcolony/sdk/d$14;->a:Lcom/adcolony/sdk/d;

    iget-object v0, v0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ax;

    .line 361
    iget-object v1, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "v4iap"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 362
    const-string v1, "product_ids"

    invoke-static {v2, v1}, Lcom/adcolony/sdk/s;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 363
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 365
    iget-object v1, v0, Lcom/adcolony/sdk/ax;->c:Lcom/adcolony/sdk/e;

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    check-cast v0, Lcom/adcolony/sdk/AdColonyNativeAdView;

    const/4 v4, 0x0

    .line 367
    invoke-static {v3, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "engagement_type"

    .line 368
    invoke-static {v2, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 365
    invoke-virtual {v1, v0, v3, v2}, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;->onIAPEvent(Lcom/adcolony/sdk/AdColonyNativeAdView;Ljava/lang/String;I)V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
