.class public final Lcom/openx/common/deviceData/managers/NetworkImpl;
.super Lcom/openx/core/sdk/OXMBaseManager;
.source "NetworkImpl.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/NetworkListener;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMBaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectionType()Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->OFFLINE:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    .line 36
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/NetworkImpl;->isInit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/openx/common/deviceData/managers/NetworkImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 42
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    .line 46
    if-eqz v2, :cond_0

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 47
    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->CELL:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    .line 56
    :cond_1
    :goto_1
    return-object v0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_3
    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->WIFI:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    goto :goto_1

    .line 51
    :cond_4
    if-nez v2, :cond_5

    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->CELL:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;->WIFI:Lcom/openx/model/adParams/AdCallParameters$OXMConnectionType;

    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/openx/core/sdk/OXMBaseManager;->init(Landroid/content/Context;)V

    .line 23
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/NetworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/NetworkImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 27
    :cond_0
    return-void
.end method
