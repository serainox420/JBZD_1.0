.class abstract Lcom/adcolony/sdk/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/bf;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method a(Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverNotificationServiceAvailabilityChanged() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bf$1;-><init>(Lcom/adcolony/sdk/bf;Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 38
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyPubServicesCallbacks;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adcolony/sdk/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;)V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverGrantDigitalProductItem() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$5;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bf$5;-><init>(Lcom/adcolony/sdk/bf;Lcom/adcolony/sdk/AdColonyPubServicesDigitalItem;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 66
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPushNotificationReceived() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$11;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bf$11;-><init>(Lcom/adcolony/sdk/bf;Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 153
    return-void
.end method

.method a(Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;)V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverOnOpenUrl() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/adcolony/sdk/bf$2;-><init>(Lcom/adcolony/sdk/bf;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLinkBridge;Lcom/adcolony/sdk/YvolverDeepLinkManager$DeepLink;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 168
    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPushRegistrationFailure() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$10;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bf$10;-><init>(Lcom/adcolony/sdk/bf;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 139
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPushRegistrationSuccess() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$9;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/bf$9;-><init>(Lcom/adcolony/sdk/bf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 125
    return-void
.end method

.method a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverInAppPurchaseRewardSuccess()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adcolony/sdk/bf$6;-><init>(Lcom/adcolony/sdk/bf;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 83
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverInAppPurchaseRewardDidFail() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/adcolony/sdk/bf$7;-><init>(Lcom/adcolony/sdk/bf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 97
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverNotificationOverlayShownChanged() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bf$4;-><init>(Lcom/adcolony/sdk/bf;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 52
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverStatsRefreshed() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$8;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bf$8;-><init>(Lcom/adcolony/sdk/bf;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 111
    return-void
.end method

.method d()V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/adcolony/sdk/bf;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yvolverOnVIPInformationUpdated() called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/bf$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/bf$3;-><init>(Lcom/adcolony/sdk/bf;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 182
    return-void
.end method
