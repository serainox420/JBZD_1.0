.class public Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrantDigitalProductItem(Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onInAppPurchaseRewardDidFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onInAppPurchaseRewardSuccess(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onOpenUrl(Landroid/net/Uri;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public onOverlayVisibilityChanged()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onPushNotificationReceived(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onPushRegistrationFailure(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onPushRegistrationSuccess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onServiceAvailabilityChanged(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onStatsRefreshed()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onVIPInformationUpdated()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
