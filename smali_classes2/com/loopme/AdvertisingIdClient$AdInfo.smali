.class public final Lcom/loopme/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final mAdvertisingId:Ljava/lang/String;

.field private final mLimitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/loopme/AdvertisingIdClient$AdInfo;->mAdvertisingId:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lcom/loopme/AdvertisingIdClient$AdInfo;->mLimitAdTrackingEnabled:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/loopme/AdvertisingIdClient$AdInfo;->mAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/loopme/AdvertisingIdClient$AdInfo;->mLimitAdTrackingEnabled:Z

    return v0
.end method
