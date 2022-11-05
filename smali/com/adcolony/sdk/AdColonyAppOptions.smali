.class public Lcom/adcolony/sdk/AdColonyAppOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LANDSCAPE:I = 0x1

.field public static final PORTRAIT:I = 0x0

.field public static final SENSOR:I = 0x2


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:Lorg/json/JSONArray;

.field d:Lorg/json/JSONObject;

.field e:Lcom/adcolony/sdk/AdColonyUserMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    .line 25
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    .line 31
    const-string v0, "google"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 34
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->a(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->a([Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method varargs a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 276
    if-nez p1, :cond_1

    .line 287
    :cond_0
    return-void

    .line 281
    :cond_1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->b:[Ljava/lang/String;

    .line 282
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    .line 283
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowEnabled()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOriginStore()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "origin_store"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedAdOrientation()I
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "orientation"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "user_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserMetadata()Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->e:Lcom/adcolony/sdk/AdColonyUserMetadata;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "app_version"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 63
    :cond_0
    return-object p0
.end method

.method public setMultiWindowEnabled(Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 231
    return-object p0
.end method

.method public setOption(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 2

    .prologue
    .line 135
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 139
    :cond_0
    return-object p0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 151
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    :cond_0
    return-object p0
.end method

.method public setOption(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 109
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 113
    :cond_0
    return-object p0
.end method

.method public setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 166
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "origin_store"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 170
    :cond_0
    return-object p0
.end method

.method public setRequestedAdOrientation(I)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 4

    .prologue
    .line 191
    const-string v0, "orientation"

    int-to-double v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 192
    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 84
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 88
    :cond_0
    return-object p0
.end method

.method public setUserMetadata(Lcom/adcolony/sdk/AdColonyUserMetadata;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 3

    .prologue
    .line 215
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->e:Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "user_metadata"

    iget-object v2, p1, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 218
    return-object p0
.end method
