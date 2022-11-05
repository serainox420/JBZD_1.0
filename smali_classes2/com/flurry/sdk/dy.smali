.class public Lcom/flurry/sdk/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lg",
        "<",
        "Lcom/flurry/sdk/cp;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/flurry/sdk/dy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dl;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 217
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dl;

    .line 218
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 219
    const-string v4, "adId"

    iget-object v5, v0, Lcom/flurry/sdk/dl;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v4, "lastEvent"

    iget-object v5, v0, Lcom/flurry/sdk/dl;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v4, "renderedTime"

    iget-wide v6, v0, Lcom/flurry/sdk/dl;->c:J

    .line 1077
    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 224
    :cond_0
    return-object v1
.end method

.method private static b(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/cy;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 229
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cy;

    .line 231
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 232
    const-string v4, "capType"

    iget-object v5, v0, Lcom/flurry/sdk/cy;->a:Lcom/flurry/sdk/da;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    const-string v4, "id"

    iget-object v5, v0, Lcom/flurry/sdk/cy;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "serveTime"

    iget-wide v6, v0, Lcom/flurry/sdk/cy;->c:J

    .line 2077
    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 235
    const-string v4, "expirationTime"

    iget-wide v6, v0, Lcom/flurry/sdk/cy;->d:J

    .line 3077
    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 236
    const-string v4, "lastViewedTime"

    iget-wide v6, v0, Lcom/flurry/sdk/cy;->e:J

    .line 4077
    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 237
    const-string v4, "streamCapDurationMillis"

    iget-wide v6, v0, Lcom/flurry/sdk/cy;->f:J

    .line 5077
    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 238
    const-string v4, "views"

    iget v5, v0, Lcom/flurry/sdk/cy;->g:I

    .line 6059
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    const-string v4, "capRemaining"

    iget v5, v0, Lcom/flurry/sdk/cy;->h:I

    .line 7059
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v4, "totalCap"

    iget v5, v0, Lcom/flurry/sdk/cy;->i:I

    .line 8059
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v4, "capDurationType"

    iget v0, v0, Lcom/flurry/sdk/cy;->j:I

    .line 9059
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 244
    :cond_0
    return-object v1
.end method

.method private static c(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/co;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 283
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/co;

    .line 285
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 286
    const-string v4, "type"

    iget v5, v0, Lcom/flurry/sdk/co;->a:I

    .line 10059
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    const-string v4, "id"

    iget-object v0, v0, Lcom/flurry/sdk/co;->b:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 290
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10295
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Deserialize not supported for request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p2, Lcom/flurry/sdk/cp;

    .line 11104
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 11167
    :cond_0
    :goto_0
    return-void

    .line 11108
    :cond_1
    new-instance v1, Lcom/flurry/sdk/dy$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/dy$1;-><init>(Lcom/flurry/sdk/dy;Ljava/io/OutputStream;)V

    .line 11115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 11118
    :try_start_0
    const-string v0, "requestTime"

    iget-wide v4, p2, Lcom/flurry/sdk/cp;->a:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11119
    const-string v0, "apiKey"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11120
    const-string v0, "agentVersion"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->c:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11121
    const-string v0, "adViewType"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->d:Lcom/flurry/sdk/cu;

    invoke-virtual {v3}, Lcom/flurry/sdk/cu;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11122
    const-string v0, "adSpaceName"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->e:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11123
    const-string v0, "adUnitSections"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cp;->f:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11124
    const-string v0, "isInternal"

    iget-boolean v3, p2, Lcom/flurry/sdk/cp;->g:Z

    .line 12050
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11125
    const-string v0, "sessionId"

    iget-wide v4, p2, Lcom/flurry/sdk/cp;->h:J

    .line 12077
    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11126
    const-string v0, "bucketIds"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cp;->i:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11127
    const-string v0, "adReportedIds"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->j:Ljava/util/List;

    invoke-static {v3}, Lcom/flurry/sdk/dy;->c(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11128
    const-string v0, "location"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->k:Lcom/flurry/sdk/db;

    .line 12269
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 12270
    if-eqz v3, :cond_2

    .line 12271
    const-string v5, "lat"

    iget v6, v3, Lcom/flurry/sdk/db;->a:F

    invoke-static {v4, v5, v6}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 12272
    const-string v5, "lon"

    iget v3, v3, Lcom/flurry/sdk/db;->b:F

    invoke-static {v4, v5, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 11128
    :goto_1
    invoke-static {v2, v0, v4}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11129
    const-string v0, "testDevice"

    iget-boolean v3, p2, Lcom/flurry/sdk/cp;->l:Z

    .line 13050
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11130
    const-string v0, "bindings"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cp;->m:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11131
    const-string v3, "adViewContainer"

    iget-object v4, p2, Lcom/flurry/sdk/cp;->n:Lcom/flurry/sdk/ct;

    .line 13252
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13253
    if-eqz v4, :cond_3

    .line 13254
    const-string v5, "viewWidth"

    iget v6, v4, Lcom/flurry/sdk/ct;->a:I

    .line 14059
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13255
    const-string v5, "viewHeight"

    iget v6, v4, Lcom/flurry/sdk/ct;->b:I

    .line 15059
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13256
    const-string v5, "screenHeight"

    iget v6, v4, Lcom/flurry/sdk/ct;->d:I

    .line 16059
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13257
    const-string v5, "screenWidth"

    iget v6, v4, Lcom/flurry/sdk/ct;->c:I

    .line 17059
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13258
    const-string v5, "density"

    iget v6, v4, Lcom/flurry/sdk/ct;->e:F

    invoke-static {v0, v5, v6}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 13259
    const-string v5, "screenSize"

    iget v6, v4, Lcom/flurry/sdk/ct;->f:F

    invoke-static {v0, v5, v6}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 13260
    const-string v5, "screenOrientation"

    iget-object v4, v4, Lcom/flurry/sdk/ct;->g:Lcom/flurry/sdk/dg;

    invoke-static {v0, v5, v4}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11131
    :goto_2
    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11132
    const-string v0, "locale"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->o:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11133
    const-string v0, "timezone"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->p:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11134
    const-string v0, "osVersion"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->q:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11135
    const-string v0, "devicePlatform"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->r:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11136
    const-string v0, "appVersion"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->s:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11137
    const-string v0, "deviceBuild"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->t:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11138
    const-string v0, "deviceManufacturer"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->u:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11139
    const-string v0, "deviceModel"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->v:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11140
    const-string v0, "partnerCode"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->w:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11141
    const-string v0, "keywords"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->x:Ljava/util/Map;

    .line 17248
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 11141
    invoke-static {v2, v0, v4}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11142
    const-string v0, "canDoSKAppStore"

    iget-boolean v3, p2, Lcom/flurry/sdk/cp;->y:Z

    .line 18050
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11143
    const-string v0, "networkStatus"

    iget v3, p2, Lcom/flurry/sdk/cp;->z:I

    .line 18059
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11144
    const-string v0, "frequencyCapRequestInfoList"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->A:Ljava/util/List;

    invoke-static {v3}, Lcom/flurry/sdk/dy;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11145
    const-string v0, "streamInfoList"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->B:Ljava/util/List;

    invoke-static {v3}, Lcom/flurry/sdk/dy;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11146
    const-string v0, "adTrackingEnabled"

    iget-boolean v3, p2, Lcom/flurry/sdk/cp;->C:Z

    .line 19050
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11147
    const-string v0, "preferredLanguage"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->D:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11148
    const-string v0, "bcat"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cp;->E:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11149
    const-string v0, "userAgent"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->F:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11150
    const-string v0, "targetingOverride"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->G:Lcom/flurry/sdk/dm;

    .line 19197
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 19198
    if-eqz v3, :cond_4

    .line 19199
    const-string v5, "ageRange"

    iget v6, v3, Lcom/flurry/sdk/dm;->a:I

    .line 20059
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19200
    const-string v5, "gender"

    iget v6, v3, Lcom/flurry/sdk/dm;->b:I

    .line 21059
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19201
    new-instance v5, Lorg/json/JSONArray;

    iget-object v3, v3, Lcom/flurry/sdk/dm;->c:Ljava/util/List;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 19202
    const-string v3, "personas"

    invoke-static {v4, v3, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11150
    :goto_3
    invoke-static {v2, v0, v4}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11151
    const-string v0, "sendConfiguration"

    iget-boolean v3, p2, Lcom/flurry/sdk/cp;->H:Z

    .line 24050
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11152
    const-string v0, "origins"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p2, Lcom/flurry/sdk/cp;->I:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11153
    const-string v0, "renderTime"

    iget-boolean v3, p2, Lcom/flurry/sdk/cp;->J:Z

    .line 25050
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11154
    const-string v0, "clientSideRtbPayload"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p2, Lcom/flurry/sdk/cp;->K:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11155
    const-string v3, "nativeAdConfiguration"

    iget-object v4, p2, Lcom/flurry/sdk/cp;->L:Lcom/flurry/sdk/dc;

    .line 25172
    if-nez v4, :cond_5

    .line 25173
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 11155
    :goto_4
    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11156
    const-string v0, "bCookie"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->M:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11157
    const-string v0, "appBundleId"

    iget-object v3, p2, Lcom/flurry/sdk/cp;->N:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11159
    const/4 v0, 0x4

    sget-object v3, Lcom/flurry/sdk/dy;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ad Request String: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 11161
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 11162
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11166
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_0

    .line 12274
    :cond_2
    :try_start_1
    const-string v3, "lat"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 12275
    const-string v3, "lon"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 11163
    :catch_0
    move-exception v0

    .line 11164
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid Json"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11166
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v0

    .line 13263
    :cond_3
    :try_start_3
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 19205
    :cond_4
    const-string v3, "ageRange"

    .line 22059
    const/4 v5, -0x2

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19206
    const-string v3, "gender"

    .line 23059
    const/4 v5, -0x2

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19207
    const-string v3, "personas"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 25176
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25179
    iget-object v5, v4, Lcom/flurry/sdk/dc;->a:Ljava/util/List;

    if-eqz v5, :cond_6

    .line 25180
    const-string v5, "requestedStyles"

    new-instance v6, Lorg/json/JSONArray;

    iget-object v7, v4, Lcom/flurry/sdk/dc;->a:Ljava/util/List;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v5, v6}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25186
    :goto_5
    iget-object v5, v4, Lcom/flurry/sdk/dc;->b:Ljava/util/List;

    if-eqz v5, :cond_7

    .line 25187
    const-string v5, "requestedAssets"

    new-instance v6, Lorg/json/JSONArray;

    iget-object v4, v4, Lcom/flurry/sdk/dc;->b:Ljava/util/List;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v5, v6}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 25182
    :cond_6
    const-string v5, "requestedStyles"

    new-instance v6, Lorg/json/JSONArray;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v5, v6}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 25189
    :cond_7
    const-string v4, "requestedAssets"

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/flurry/sdk/lz;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method
