.class public final Lcom/openx/common/deviceData/managers/ArpEntity;
.super Ljava/lang/Object;
.source "ArpEntity.java"


# instance fields
.field private mIp:Ljava/lang/String;

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/ArpEntity;->mIp:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/openx/common/deviceData/managers/ArpEntity;->mMac:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/ArpEntity;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/ArpEntity;->mMac:Ljava/lang/String;

    return-object v0
.end method
