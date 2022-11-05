.class public Lcom/madsdk/gson/request/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public carier:Ljava/lang/String;

.field public geo:Lcom/madsdk/gson/request/Geo;

.field public ip:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osv:Ljava/lang/String;

.field public ua:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/madsdk/gson/request/Geo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/madsdk/gson/request/DeviceInfo;->geo:Lcom/madsdk/gson/request/Geo;

    .line 16
    iput-object p2, p0, Lcom/madsdk/gson/request/DeviceInfo;->os:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/madsdk/gson/request/DeviceInfo;->osv:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/madsdk/gson/request/DeviceInfo;->carier:Ljava/lang/String;

    .line 19
    return-void
.end method
