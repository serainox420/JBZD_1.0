.class final Lcom/madsdk/NativeAd$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/NativeAd;->requestNativeAd(Landroid/view/View;Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;Ljava/util/List;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$container:Landroid/view/View;

.field final synthetic val$isNativeBrowser:Z

.field final synthetic val$onNativeAdLoadedListener:Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;


# direct methods
.method constructor <init>(Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/madsdk/NativeAd$1;->val$onNativeAdLoadedListener:Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;

    iput-object p2, p0, Lcom/madsdk/NativeAd$1;->val$container:Landroid/view/View;

    iput-boolean p3, p0, Lcom/madsdk/NativeAd$1;->val$isNativeBrowser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/madsdk/NativeAd$1;->val$onNativeAdLoadedListener:Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;->onFailure(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 68
    new-instance v0, Lcom/google/gson/d;

    invoke-direct {v0}, Lcom/google/gson/d;-><init>()V

    .line 69
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    .line 71
    const-class v2, Lcom/madsdk/gson/response/NativeAdResponse;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/gson/response/NativeAdResponse;

    .line 72
    const-string v1, "error"

    iget-object v2, v0, Lcom/madsdk/gson/response/NativeAdResponse;->ext:Lcom/madsdk/gson/response/ExtResponse;

    iget-object v2, v2, Lcom/madsdk/gson/response/ExtResponse;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rejected"

    iget-object v2, v0, Lcom/madsdk/gson/response/NativeAdResponse;->ext:Lcom/madsdk/gson/response/ExtResponse;

    iget-object v2, v2, Lcom/madsdk/gson/response/ExtResponse;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/madsdk/NativeAd$1;->val$onNativeAdLoadedListener:Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/madsdk/gson/response/NativeAdResponse;->ext:Lcom/madsdk/gson/response/ExtResponse;

    iget-object v3, v3, Lcom/madsdk/gson/response/ExtResponse;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/madsdk/gson/response/NativeAdResponse;->ext:Lcom/madsdk/gson/response/ExtResponse;

    iget-object v0, v0, Lcom/madsdk/gson/response/ExtResponse;->msg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;->onFailure(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, v0, Lcom/madsdk/gson/response/NativeAdResponse;->seatbid:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madsdk/gson/response/SeatBid;

    iget-object v1, v1, Lcom/madsdk/gson/response/SeatBid;->bid:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madsdk/gson/response/Bid;

    iget-object v1, v1, Lcom/madsdk/gson/response/Bid;->adm:Lcom/madsdk/gson/response/Adm;

    iget-object v1, v1, Lcom/madsdk/gson/response/Adm;->aNative:Lcom/madsdk/gson/response/Native;

    iget-object v1, v1, Lcom/madsdk/gson/response/Native;->imptrackers:Ljava/util/List;

    .line 76
    if-eqz v1, :cond_2

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 79
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 80
    invoke-virtual {v4, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 79
    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v3, Lcom/madsdk/NativeAd$1$1;

    invoke-direct {v3, p0}, Lcom/madsdk/NativeAd$1$1;-><init>(Lcom/madsdk/NativeAd$1;)V

    .line 82
    invoke-interface {v1, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/madsdk/NativeAd$1;->val$onNativeAdLoadedListener:Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;

    iget-object v1, v0, Lcom/madsdk/gson/response/NativeAdResponse;->seatbid:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madsdk/gson/response/SeatBid;

    iget-object v1, v1, Lcom/madsdk/gson/response/SeatBid;->bid:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madsdk/gson/response/Bid;

    iget-object v1, v1, Lcom/madsdk/gson/response/Bid;->adm:Lcom/madsdk/gson/response/Adm;

    iget-object v1, v1, Lcom/madsdk/gson/response/Adm;->aNative:Lcom/madsdk/gson/response/Native;

    iget-object v1, v1, Lcom/madsdk/gson/response/Native;->assets:Ljava/util/List;

    invoke-interface {v2, v1}, Lcom/madsdk/NativeAd$OnNativeAdLoadedListener;->onLoaded(Ljava/util/List;)V

    .line 96
    iget-object v0, v0, Lcom/madsdk/gson/response/NativeAdResponse;->seatbid:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/gson/response/SeatBid;

    iget-object v0, v0, Lcom/madsdk/gson/response/SeatBid;->bid:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madsdk/gson/response/Bid;

    iget-object v0, v0, Lcom/madsdk/gson/response/Bid;->adm:Lcom/madsdk/gson/response/Adm;

    iget-object v0, v0, Lcom/madsdk/gson/response/Adm;->aNative:Lcom/madsdk/gson/response/Native;

    iget-object v0, v0, Lcom/madsdk/gson/response/Native;->link:Lcom/madsdk/gson/request/Link;

    .line 97
    iget-object v1, p0, Lcom/madsdk/NativeAd$1;->val$container:Landroid/view/View;

    new-instance v2, Lcom/madsdk/NativeAd$1$2;

    invoke-direct {v2, p0, v0}, Lcom/madsdk/NativeAd$1$2;-><init>(Lcom/madsdk/NativeAd$1;Lcom/madsdk/gson/request/Link;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
