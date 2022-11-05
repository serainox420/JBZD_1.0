.class public Lcom/adcolony/sdk/AdColonyReward;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "reward_amount"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/AdColonyReward;->a:I

    .line 21
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "reward_name"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyReward;->b:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/AdColonyReward;->d:Z

    .line 23
    iget-object v0, p1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    const-string v1, "zone_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyReward;->c:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/adcolony/sdk/AdColonyReward;->a:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyReward;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyReward;->c:Ljava/lang/String;

    return-object v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyReward;->d:Z

    return v0
.end method
