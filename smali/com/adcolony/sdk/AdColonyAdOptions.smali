.class public Lcom/adcolony/sdk/AdColonyAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/adcolony/sdk/AdColonyUserMetadata;

.field d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public enableConfirmationDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 3

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->a:Z

    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string v1, "confirmation_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 33
    return-object p0
.end method

.method public enableResultsDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 3

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->b:Z

    .line 47
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string v1, "results_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 48
    return-object p0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserMetadata()Lcom/adcolony/sdk/AdColonyUserMetadata;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->c:Lcom/adcolony/sdk/AdColonyUserMetadata;

    return-object v0
.end method

.method public setOption(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 2

    .prologue
    .line 85
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 89
    :cond_0
    return-object p0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 1

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    :cond_0
    return-object p0
.end method

.method public setOption(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Lcom/adcolony/sdk/au;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 63
    :cond_0
    return-object p0
.end method

.method public setUserMetadata(Lcom/adcolony/sdk/AdColonyUserMetadata;)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 3

    .prologue
    .line 117
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->c:Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 118
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string v1, "user_metadata"

    iget-object v2, p1, Lcom/adcolony/sdk/AdColonyUserMetadata;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 120
    return-object p0
.end method
