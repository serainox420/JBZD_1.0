.class public Lcom/adcolony/sdk/AdColonyPubServicesPushGcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AdColonyPubServicesPushGcmListenerService"


# instance fields
.field private b:Landroid/support/v4/app/as;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    const-string v0, "AdColonyPubServicesPushGcmListenerService"

    const-string v1, "OnMessageReceived"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aI()Lcom/adcolony/sdk/ch;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adcolony/sdk/ch;->a(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
