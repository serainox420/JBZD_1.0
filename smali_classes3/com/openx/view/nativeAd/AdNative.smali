.class public Lcom/openx/view/nativeAd/AdNative;
.super Ljava/lang/Object;
.source "AdNative.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private auid:Ljava/lang/String;

.field private clickTracked:Z

.field private domain:Ljava/lang/String;

.field private oxClickURL:Ljava/lang/String;

.field private oxImpURL:Ljava/lang/String;

.field private rawJSON:Ljava/lang/String;

.field private transactionState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/openx/view/nativeAd/AdNative;->rawJSON:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/openx/view/nativeAd/AdNative;->oxImpURL:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/openx/view/nativeAd/AdNative;->oxClickURL:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/openx/view/nativeAd/AdNative;->oxClickURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/openx/view/nativeAd/AdNative;->oxClickURL:Ljava/lang/String;

    const-string v2, "ts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/openx/view/nativeAd/AdNative;->oxClickURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/view/nativeAd/AdNative;->transactionState:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lcom/openx/core/network/GetNetworkTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openx/core/network/GetNetworkTask;-><init>(Lcom/openx/core/network/BaseResponseHandler;)V

    .line 108
    new-instance v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    invoke-direct {v1}, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;-><init>()V

    .line 109
    iput-object p1, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->name:Ljava/lang/String;

    .line 110
    iput-object p2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->url:Ljava/lang/String;

    .line 112
    sget-object v2, Lcom/openx/core/sdk/OXSettings;->userAgent:Ljava/lang/String;

    iput-object v2, v1, Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;->userAgent:Ljava/lang/String;

    .line 114
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/openx/core/network/BaseNetworkTask$GetUrlParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/openx/core/network/GetNetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method


# virtual methods
.method public getRawJSONAd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/openx/view/nativeAd/AdNative;->rawJSON:Ljava/lang/String;

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openx/view/nativeAd/AdNative;->logEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 136
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-nez p2, :cond_2

    .line 143
    const-string p2, ""

    .line 146
    :cond_2
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/openx/view/nativeAd/AdNative;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/w/1.0/rev?t=custom&c."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/nativeAd/AdNative;->transactionState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "Custom"

    invoke-direct {p0, v1, v0}, Lcom/openx/view/nativeAd/AdNative;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/openx/view/nativeAd/AdNative;->auid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/openx/view/nativeAd/AdNative;->domain:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public trackClick()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/openx/view/nativeAd/AdNative;->oxClickURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/openx/view/nativeAd/AdNative;->clickTracked:Z

    if-nez v0, :cond_0

    .line 90
    const-string v0, "Click"

    iget-object v1, p0, Lcom/openx/view/nativeAd/AdNative;->oxClickURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/openx/view/nativeAd/AdNative;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/nativeAd/AdNative;->clickTracked:Z

    .line 100
    :cond_0
    return-void
.end method

.method public trackImpression()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "Impression"

    iget-object v1, p0, Lcom/openx/view/nativeAd/AdNative;->oxImpURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/openx/view/nativeAd/AdNative;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
