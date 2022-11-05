.class Lcom/apprupt/sdk/Events;
.super Landroid/content/BroadcastReceiver;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/Events$HeadphonesState;,
        Lcom/apprupt/sdk/Events$PhoneStateEvents;
    }
.end annotation


# instance fields
.field volatile a:Lcom/apprupt/sdk/Events$HeadphonesState;

.field volatile b:Ljava/lang/String;

.field volatile c:Ljava/lang/String;

.field volatile d:Ljava/lang/String;

.field volatile e:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 71
    sget-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->c:Lcom/apprupt/sdk/Events$HeadphonesState;

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->b:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->c:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->d:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->e:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/Events;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, p1, v0}, Lcom/apprupt/sdk/Events;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public a(Lcom/apprupt/sdk/CvUnderscore;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/apprupt/sdk/Events;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    invoke-virtual {v0}, Lcom/apprupt/sdk/Events$HeadphonesState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "headsetPlugged"

    iget-object v1, p0, Lcom/apprupt/sdk/Events;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    invoke-virtual {v1}, Lcom/apprupt/sdk/Events$HeadphonesState;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/apprupt/sdk/Events;->e:Lorg/json/JSONObject;

    .line 132
    if-eqz v0, :cond_1

    .line 133
    const-string v1, "signalStrength"

    invoke-virtual {p1, v1, v0}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 135
    :cond_1
    const-string v0, "batteryStatus"

    iget-object v1, p0, Lcom/apprupt/sdk/Events;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v0

    const-string v1, "batteryLevel"

    iget-object v2, p0, Lcom/apprupt/sdk/Events;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    move-result-object v0

    const-string v1, "powerSource"

    iget-object v2, p0, Lcom/apprupt/sdk/Events;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apprupt/sdk/CvUnderscore;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/apprupt/sdk/CvUnderscore;

    .line 136
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/apprupt/sdk/Events$HeadphonesState;->a(I)Lcom/apprupt/sdk/Events$HeadphonesState;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->b:Ljava/lang/String;

    .line 110
    :goto_1
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 111
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 112
    const-string v0, "usb"

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->c:Ljava/lang/String;

    .line 119
    :goto_2
    const-string v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 120
    const-string v1, "scale"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 121
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-double v4, v0

    int-to-double v0, v1

    div-double v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->d:Ljava/lang/String;

    goto :goto_0

    .line 93
    :pswitch_0
    const-string v0, "charging"

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->b:Ljava/lang/String;

    goto :goto_1

    .line 96
    :pswitch_1
    const-string v0, "discharging"

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->b:Ljava/lang/String;

    goto :goto_1

    .line 99
    :pswitch_2
    const-string v0, "unplugged"

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->b:Ljava/lang/String;

    goto :goto_1

    .line 102
    :pswitch_3
    const-string v0, "full"

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->b:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 114
    const-string v0, "ac"

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->c:Ljava/lang/String;

    goto :goto_2

    .line 116
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/Events;->c:Ljava/lang/String;

    goto :goto_2

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
