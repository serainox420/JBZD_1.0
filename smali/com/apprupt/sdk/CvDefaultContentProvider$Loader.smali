.class Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;
.super Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;
.source "CvDefaultContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvDefaultContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvDefaultContentProvider;

.field private g:Lcom/apprupt/sdk/CvContentManager$ContentListener;

.field private h:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvDefaultContentProvider;Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->a:Lcom/apprupt/sdk/CvDefaultContentProvider;

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/CvDefaultContentProvider$LoaderBase;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider;Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->h:Lorg/json/JSONObject;

    .line 141
    iput-object p4, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->g:Lcom/apprupt/sdk/CvContentManager$ContentListener;

    .line 142
    return-void
.end method

.method private declared-synchronized a(Lcom/apprupt/sdk/CvContentResponse;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 211
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/apprupt/sdk/CvDefaultContentProvider;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Calling listener with response"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 212
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/apprupt/sdk/CvContentManager$ContentListener;->a(Lcom/apprupt/sdk/CvContentResponse;)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 211
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;Lcom/apprupt/sdk/CvContentResponse;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->a(Lcom/apprupt/sdk/CvContentResponse;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 146
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 147
    new-array v2, v6, [I

    fill-array-data v2, :array_1

    .line 148
    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->e:Z

    if-eqz v0, :cond_0

    .line 149
    aget v3, v1, v7

    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v3

    aput v0, v1, v7

    .line 151
    :cond_0
    const-string v3, "/cv/a/%s/sdk/%s/fm/%s/piKey/%s/c/%s/k/%s/v/1/?nc=%d%s"

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v5, v5, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "6"

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->b:Landroid/content/Context;

    .line 155
    invoke-static {v1, v2, v0}, Lcom/apprupt/sdk/CvFeaturesList;->a([I[ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 156
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, v1, Lcom/apprupt/sdk/CvContentOptions;->c:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-object v1, v1, Lcom/apprupt/sdk/CvContentOptions;->b:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x6

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->c:Lcom/apprupt/sdk/CvContentOptions;

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "&interstitial=1"

    :goto_1
    aput-object v0, v4, v1

    .line 151
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_1
    const/16 v0, 0x20

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 146
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 147
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method a(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 4

    .prologue
    .line 186
    new-instance v0, Lcom/apprupt/sdk/CvContentResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/apprupt/sdk/CvContentResponse;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 187
    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->g:Lcom/apprupt/sdk/CvContentManager$ContentListener;

    .line 188
    iget-object v2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->d:Landroid/os/Handler;

    new-instance v3, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$1;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;Lcom/apprupt/sdk/CvContentResponse;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 171
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    const-string v1, "Server returned empty response, possibly piKey should be refreshed."

    invoke-virtual {p0, v1, v3, v0}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->b(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 181
    :goto_0
    return v0

    .line 175
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "size"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "html"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "html"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 177
    iput-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->h:Lorg/json/JSONObject;

    .line 178
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_2
    const-string v1, "Server returned not parsable response."

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v3, v2}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->b(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->g:Lcom/apprupt/sdk/CvContentManager$ContentListener;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->h:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Lcom/apprupt/sdk/CvContentResponse;

    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->h:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvContentResponse;-><init>(Lorg/json/JSONObject;)V

    .line 200
    iget-object v1, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->g:Lcom/apprupt/sdk/CvContentManager$ContentListener;

    .line 201
    iget-object v2, p0, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;->d:Landroid/os/Handler;

    new-instance v3, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/apprupt/sdk/CvDefaultContentProvider$Loader$2;-><init>(Lcom/apprupt/sdk/CvDefaultContentProvider$Loader;Lcom/apprupt/sdk/CvContentResponse;Lcom/apprupt/sdk/CvContentManager$ContentListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method
