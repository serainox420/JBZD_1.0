.class Lcom/adcolony/sdk/cg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "onClick"

.field static final b:Ljava/lang/String; = "method"

.field static final c:Ljava/lang/String; = "parameters"


# instance fields
.field d:Ljava/lang/String;

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/adcolony/sdk/cg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cg;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iput-object p1, p0, Lcom/adcolony/sdk/cg$b;->f:Lcom/adcolony/sdk/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/adcolony/sdk/cg$b;->d:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/adcolony/sdk/cg$b;->e:Ljava/util/HashMap;

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/adcolony/sdk/cg;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/adcolony/sdk/cg$b;->f:Lcom/adcolony/sdk/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "method"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/cg$b;->d:Ljava/lang/String;

    .line 99
    const-string v0, "parameters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/co;->b(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/cg$b;->e:Ljava/util/HashMap;

    .line 100
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    :try_start_0
    const-string v1, "method"

    iget-object v2, p0, Lcom/adcolony/sdk/cg$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v1, "parameters"

    iget-object v2, p0, Lcom/adcolony/sdk/cg$b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v0, ""

    goto :goto_0
.end method
