.class public Lcom/inmobi/commons/uid/AdvertisingId;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/inmobi/commons/uid/AdvertisingId;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/inmobi/commons/uid/AdvertisingId;->b:Z

    .line 13
    return-void
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/inmobi/commons/uid/AdvertisingId;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTracking()Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/AdvertisingId;->b:Z

    return v0
.end method
