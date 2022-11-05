.class public Lcom/adcolony/sdk/AdColonyPubServicesPushRegIdListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adcolony/sdk/AdColonyPubServicesPushRegIdIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushRegIdListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 17
    return-void
.end method
