.class public abstract Lcom/pubmatic/sdk/common/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field protected static mUDID:Ljava/lang/String;


# instance fields
.field private isAndroidAidEnabled:Z

.field protected mBaseUrl:Ljava/lang/String;

.field protected mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

.field protected mCustomParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHeight:I

.field protected mLocation:Landroid/location/Location;

.field protected mPostData:Ljava/lang/StringBuffer;

.field protected mTimeout:I

.field protected mUserAgent:Ljava/lang/String;

.field protected mWidth:I


# direct methods
.method protected constructor <init>(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mLocation:Landroid/location/Location;

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mTimeout:I

    .line 50
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    .line 147
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    .line 148
    invoke-virtual {p0, p2}, Lcom/pubmatic/sdk/common/AdRequest;->retrieveAndroidAid(Landroid/content/Context;)V

    .line 149
    return-void
.end method


# virtual methods
.method public addCustomParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addCustomParam(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public abstract checkMandatoryParams()Z
.end method

.method public abstract copyRequestParams(Lcom/pubmatic/sdk/common/AdRequest;)V
.end method

.method public abstract createRequest(Landroid/content/Context;)V
.end method

.method public abstract getAdServerURL()Ljava/lang/String;
.end method

.method public getChannel()Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getFormatter()Ljava/lang/String;
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mHeight:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mWidth:I

    return v0
.end method

.method protected abstract initializeDefaultParams(Landroid/content/Context;)V
.end method

.method public isAndoridAidEnabled()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->isAndroidAidEnabled:Z

    return v0
.end method

.method public putPostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_0
    :goto_1
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mPostData:Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public retrieveAndroidAid(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pubmatic/sdk/common/AdRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/pubmatic/sdk/common/AdRequest$1;-><init>(Lcom/pubmatic/sdk/common/AdRequest;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method

.method public setAdServerURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mBaseUrl:Ljava/lang/String;

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/AdRequest;->mBaseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAndroidAidEnabled(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->isAndroidAidEnabled:Z

    .line 161
    return-void
.end method

.method public setChannel(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    .line 283
    return-void
.end method

.method public setCustomParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mCustomParams:Ljava/util/Map;

    .line 100
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mHeight:I

    .line 197
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mLocation:Landroid/location/Location;

    .line 266
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mUserAgent:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Lcom/pubmatic/sdk/common/AdRequest;->mWidth:I

    .line 201
    return-void
.end method

.method protected setupPostData()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
