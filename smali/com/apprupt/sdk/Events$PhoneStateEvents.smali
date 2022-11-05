.class Lcom/apprupt/sdk/Events$PhoneStateEvents;
.super Landroid/telephony/PhoneStateListener;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneStateEvents"
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Events;


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 23
    const-string v0, ""

    .line 24
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const-string v0, "gsm"

    .line 26
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    const/16 v2, 0x63

    if-eq v1, v2, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    .line 35
    :goto_0
    if-lez v1, :cond_2

    .line 36
    new-instance v2, Lcom/apprupt/sdk/SimpleJSON;

    invoke-direct {v2}, Lcom/apprupt/sdk/SimpleJSON;-><init>()V

    .line 37
    const-string v3, "strength"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 38
    const-string v1, "type"

    invoke-virtual {v2, v1, v0}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/SimpleJSON;

    .line 39
    iget-object v0, p0, Lcom/apprupt/sdk/Events$PhoneStateEvents;->a:Lcom/apprupt/sdk/Events;

    iget-object v1, v2, Lcom/apprupt/sdk/SimpleJSON;->a:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/apprupt/sdk/Events;->e:Lorg/json/JSONObject;

    .line 43
    :goto_1
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "cdma"

    .line 33
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/apprupt/sdk/Events$PhoneStateEvents;->a:Lcom/apprupt/sdk/Events;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/apprupt/sdk/Events;->e:Lorg/json/JSONObject;

    goto :goto_1
.end method
