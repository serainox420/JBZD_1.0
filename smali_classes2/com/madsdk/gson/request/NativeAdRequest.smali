.class public Lcom/madsdk/gson/request/NativeAdRequest;
.super Ljava/lang/Object;
.source "NativeAdRequest.java"


# instance fields
.field public app:Lcom/madsdk/gson/request/App;

.field public device:Lcom/madsdk/gson/request/DeviceInfo;

.field public ext:Lcom/madsdk/gson/request/Ext;

.field public id:Ljava/lang/String;

.field public imp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/request/Imp;",
            ">;"
        }
    .end annotation
.end field

.field public site:Lcom/madsdk/gson/request/Site;

.field public user:Lcom/madsdk/gson/request/User;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/madsdk/gson/request/Site;Lcom/madsdk/gson/request/App;Lcom/madsdk/gson/request/DeviceInfo;Lcom/madsdk/gson/request/User;Lcom/madsdk/gson/request/Ext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/madsdk/gson/request/Imp;",
            ">;",
            "Lcom/madsdk/gson/request/Site;",
            "Lcom/madsdk/gson/request/App;",
            "Lcom/madsdk/gson/request/DeviceInfo;",
            "Lcom/madsdk/gson/request/User;",
            "Lcom/madsdk/gson/request/Ext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/madsdk/gson/request/NativeAdRequest;->id:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/madsdk/gson/request/NativeAdRequest;->imp:Ljava/util/List;

    .line 20
    iput-object p3, p0, Lcom/madsdk/gson/request/NativeAdRequest;->site:Lcom/madsdk/gson/request/Site;

    .line 21
    iput-object p4, p0, Lcom/madsdk/gson/request/NativeAdRequest;->app:Lcom/madsdk/gson/request/App;

    .line 22
    iput-object p5, p0, Lcom/madsdk/gson/request/NativeAdRequest;->device:Lcom/madsdk/gson/request/DeviceInfo;

    .line 23
    iput-object p6, p0, Lcom/madsdk/gson/request/NativeAdRequest;->user:Lcom/madsdk/gson/request/User;

    .line 24
    iput-object p7, p0, Lcom/madsdk/gson/request/NativeAdRequest;->ext:Lcom/madsdk/gson/request/Ext;

    .line 25
    return-void
.end method
