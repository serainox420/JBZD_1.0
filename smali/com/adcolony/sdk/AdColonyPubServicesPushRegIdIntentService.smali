.class public Lcom/adcolony/sdk/AdColonyPubServicesPushRegIdIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AdColonyPubServicesPushRegIdIntentService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "AdColonyPubServicesPushRegIdIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/bz;->t(Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 24
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->ak()Ljava/lang/String;

    move-result-object v1

    .line 28
    :try_start_0
    const-string v2, "GCM"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "AdColonyPubServicesPushRegIdIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM Registration Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    invoke-direct {p0, v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushRegIdIntentService;->a(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred when retrieving registration token->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Registration to GCM incomplete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "AdColonyPubServicesPushRegIdIntentService"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 43
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
