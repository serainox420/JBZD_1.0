.class Lcom/adcolony/sdk/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/cg$a;,
        Lcom/adcolony/sdk/cg$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "meta"

.field static final b:Ljava/lang/String; = "actions"

.field static final c:Ljava/lang/String; = "messageId"

.field static final d:Ljava/lang/String; = "sendId"


# instance fields
.field e:Lcom/adcolony/sdk/cg$b;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adcolony/sdk/cg$a;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cg$b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/cg$b;",
            "Ljava/util/List",
            "<",
            "Lcom/adcolony/sdk/cg$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/adcolony/sdk/cg;->e:Lcom/adcolony/sdk/cg$b;

    .line 45
    iput-object p2, p0, Lcom/adcolony/sdk/cg;->f:Ljava/util/List;

    .line 46
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    const-string v0, "messageId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/cg;->g:Ljava/lang/String;

    .line 29
    const-string v0, "sendId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/cg;->h:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/adcolony/sdk/cg$b;

    const-string v1, "onClick"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/cg$b;-><init>(Lcom/adcolony/sdk/cg;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/adcolony/sdk/cg;->e:Lcom/adcolony/sdk/cg$b;

    .line 31
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cg;->f:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 35
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/co;->b(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/adcolony/sdk/cg;->f:Ljava/util/List;

    new-instance v4, Lcom/adcolony/sdk/cg$a;

    invoke-direct {v4, p0, v2}, Lcom/adcolony/sdk/cg$a;-><init>(Lcom/adcolony/sdk/cg;Ljava/util/HashMap;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "[YvolverPushMetaData-ERR]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught meta exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    :cond_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/cg;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 75
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 76
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/adcolony/sdk/cg;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/cg$a;

    .line 78
    invoke-virtual {v0}, Lcom/adcolony/sdk/cg$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_1
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adcolony/sdk/cg;->e:Lcom/adcolony/sdk/cg$b;

    iget-object v0, v0, Lcom/adcolony/sdk/cg$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    const-string v1, "messageId"

    iget-object v2, p0, Lcom/adcolony/sdk/cg;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "sendId"

    iget-object v2, p0, Lcom/adcolony/sdk/cg;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v1, p0, Lcom/adcolony/sdk/cg;->e:Lcom/adcolony/sdk/cg$b;

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "onClick"

    iget-object v2, p0, Lcom/adcolony/sdk/cg;->e:Lcom/adcolony/sdk/cg$b;

    invoke-virtual {v2}, Lcom/adcolony/sdk/cg$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/cg;->c()Ljava/lang/String;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const-string v2, "actions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "PushMetaData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    const-string v0, ""

    goto :goto_0
.end method
