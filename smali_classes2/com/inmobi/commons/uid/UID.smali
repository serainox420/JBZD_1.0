.class public Lcom/inmobi/commons/uid/UID;
.super Ljava/lang/Object;
.source "UID.java"


# static fields
.field public static final KEY_AID:Ljava/lang/String; = "AID"

.field public static final KEY_APPENDED_ID:Ljava/lang/String; = "AIDL"

.field public static final KEY_FACEBOOK_ID:Ljava/lang/String; = "FBA"

.field public static final KEY_GPID:Ljava/lang/String; = "GPID"

.field public static final KEY_IMID:Ljava/lang/String; = "IMID"

.field public static final KEY_LOGIN_ID:Ljava/lang/String; = "LID"

.field public static final KEY_LTVID:Ljava/lang/String; = "LTVID"

.field public static final KEY_ODIN1:Ljava/lang/String; = "O1"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "SID"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_UM5_ID:Ljava/lang/String; = "UM5"

.field private static a:Lcom/inmobi/commons/uid/UID;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->f:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "FBA"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "GPID"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "LID"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "LTVID"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "O1"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "SID"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "UM5"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "IMID"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    const-string v1, "AIDL"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 113
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    const-string v1, "FBA"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-nez p1, :cond_3

    .line 119
    :cond_2
    const-string v1, "O1"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_3
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    if-nez p1, :cond_5

    .line 123
    :cond_4
    const-string v1, "UM5"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_5
    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 138
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->d:Ljava/util/Map;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 140
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    move-object v0, v3

    .line 160
    :goto_0
    return-object v0

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 144
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->c:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->c:Ljava/util/Map;

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->b:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->b:Ljava/util/Map;

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/inmobi/commons/uid/UID;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 155
    iget-object v1, p0, Lcom/inmobi/commons/uid/UID;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 157
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v1, v5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/inmobi/commons/uid/UID;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/inmobi/commons/uid/UID;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    .line 157
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_4

    :cond_7
    move-object v0, v3

    .line 160
    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/inmobi/commons/uid/UID;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    sput-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    .line 54
    :cond_0
    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method


# virtual methods
.method public getEncodedJSON(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/commons/uid/UID;->getUidMap(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getEncodedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 101
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedJSON(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/uid/UID;->getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getEncodedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 82
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJSON(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/uid/UID;->getRawUidMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapForEncryption(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 87
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/commons/uid/UID;->getUidMap(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 89
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 90
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->encryptRSA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string v3, "u-id-map"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "u-id-key"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "u-key-ver"

    invoke-static {}, Lcom/inmobi/commons/uid/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object v2
.end method

.method public getRawUidMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/commons/uid/UID;->getUidMap(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUidMap(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/inmobi/commons/uid/UID;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/inmobi/commons/uid/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->f:Ljava/lang/String;

    .line 184
    :cond_0
    const-string v0, "O1"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-static {}, Lcom/inmobi/commons/uid/a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz p3, :cond_1

    .line 188
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_1
    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    const-string v0, "FBA"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    invoke-static {}, Lcom/inmobi/commons/uid/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    if-eqz p3, :cond_3

    .line 199
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_3
    const-string v3, "FBA"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_4
    const-string v0, "UM5"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    invoke-static {}, Lcom/inmobi/commons/uid/a;->h()Z

    move-result v0

    if-nez v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/inmobi/commons/uid/UID;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/uid/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz p3, :cond_5

    .line 210
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_5
    const-string v3, "UM5"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_6
    const-string v0, "LID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    invoke-static {}, Lcom/inmobi/commons/uid/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    if-eqz p3, :cond_7

    .line 221
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_7
    const-string v3, "LID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_8
    const-string v0, "SID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 228
    invoke-static {}, Lcom/inmobi/commons/uid/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_a

    .line 230
    if-eqz p3, :cond_9

    .line 231
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_9
    const-string v3, "SID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_a
    const-string v0, "LTVID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 239
    invoke-direct {p0}, Lcom/inmobi/commons/uid/UID;->a()Ljava/lang/String;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_c

    .line 241
    if-eqz p3, :cond_b

    .line 242
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_b
    const-string v3, "LTVID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_c
    const-string v0, "GPID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 250
    invoke-static {}, Lcom/inmobi/commons/uid/a;->f()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_e

    .line 252
    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_e

    .line 254
    if-eqz p3, :cond_d

    .line 255
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_d
    const-string v3, "GPID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_e
    const-string v0, "IMID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 263
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_10

    .line 265
    if-eqz p3, :cond_f

    .line 266
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_f
    const-string v3, "IMID"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_10
    const-string v0, "AIDL"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_12

    .line 275
    if-eqz p3, :cond_11

    .line 276
    invoke-static {v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->xorWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_11
    const-string v1, "AIDL"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_12
    return-object v2
.end method

.method public init()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/inmobi/commons/uid/a;->g()V

    .line 59
    invoke-virtual {p0}, Lcom/inmobi/commons/uid/UID;->printPublisherTestId()V

    .line 60
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/a;->a(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/inmobi/commons/uid/a;->i()Z

    move-result v0

    return v0
.end method

.method public printPublisherTestId()V
    .locals 4

    .prologue
    .line 287
    .line 288
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/uid/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lcom/inmobi/commons/uid/a;->f()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    const-string v1, "[InMobi]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/uid/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "[InMobi]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/inmobi/commons/uid/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/inmobi/commons/uid/a;->g()V

    .line 65
    return-void
.end method

.method public setCommonsDeviceIdMaskMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/inmobi/commons/uid/UID;->c:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public setLtvId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/inmobi/commons/uid/UID;->e:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setPublisherDeviceIdMaskMap(I)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/inmobi/commons/uid/UID;->a(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/uid/UID;->b:Ljava/util/Map;

    .line 69
    return-void
.end method
