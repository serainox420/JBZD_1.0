.class Lcom/adcolony/sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_0
    iput-object p1, p0, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    .line 49
    iget-object v0, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "m_target"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON Error in ADCMessage constructor: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    :try_start_0
    iput-object p1, p0, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    .line 69
    invoke-static {p3}, Lcom/adcolony/sdk/s;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    .line 70
    iget-object v0, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "m_target"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON Error in ADCMessage constructor: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    :try_start_0
    iput-object p1, p0, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    .line 85
    iget-object v0, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "m_target"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON Error in ADCMessage constructor: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    .line 29
    const-string v0, "m_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 33
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON Error in ADCMessage constructor: "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/adcolony/sdk/z;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/adcolony/sdk/z;
    .locals 1

    .prologue
    .line 104
    invoke-static {p1}, Lcom/adcolony/sdk/s;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    return-object v0
.end method

.method a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;
    .locals 5

    .prologue
    .line 111
    :try_start_0
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "reply"

    iget-object v2, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v3, "m_origin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 112
    iget-object v1, v0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v2, "m_id"

    iget-object v3, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v4, "m_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    const-string v2, "JSON error in ADCMessage\'s create_reply(): "

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 121
    new-instance v0, Lcom/adcolony/sdk/z;

    const-string v1, "JSONException"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/z;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/adcolony/sdk/z;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 128
    return-void
.end method
