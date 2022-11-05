.class public Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String; = "AdColonyPubServicesPushNotification"

.field private static final b:Ljava/lang/String; = "payload"

.field private static final c:Ljava/lang/String; = "id"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/adcolony/sdk/cg;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v3, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->g:Z

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->h:J

    .line 21
    iput-boolean v3, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->i:Z

    .line 24
    iput-object v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->d:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->e:Lcom/adcolony/sdk/cg;

    .line 26
    iput-object v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->f:Ljava/lang/String;

    .line 27
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/adcolony/sdk/cg;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->g:Z

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->h:J

    .line 21
    iput-boolean v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->i:Z

    .line 30
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->d:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->e:Lcom/adcolony/sdk/cg;

    .line 32
    iput-object p3, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->f:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "AdColonyPubServicesPushNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while parsing Push field="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/adcolony/sdk/cg;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->e:Lcom/adcolony/sdk/cg;

    return-object v0
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->h:J

    .line 80
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v1, "meta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/adcolony/sdk/cg;

    invoke-direct {v2, v1}, Lcom/adcolony/sdk/cg;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->e:Lcom/adcolony/sdk/cg;

    .line 44
    const-string v1, "id"

    invoke-direct {p0, v0, v1}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->f:Ljava/lang/String;

    .line 45
    const-string v1, "payload"

    invoke-direct {p0, v0, v1}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "AdColonyPubServicesPushNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while parsing PushNotificaiton Data ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->g:Z

    .line 76
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->i:Z

    .line 84
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->g:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeReceivedMsSince1970()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->h:J

    return-wide v0
.end method

.method public isAdColonyNotification()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    const-string v0, "AdColonyPubServicesPushNotification={"

    .line 121
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payload={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timeReceivedEpoch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payload={},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
