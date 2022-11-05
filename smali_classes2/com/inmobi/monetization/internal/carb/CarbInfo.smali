.class public Lcom/inmobi/monetization/internal/carb/CarbInfo;
.super Ljava/lang/Object;
.source "CarbInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CarbInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getInmId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/monetization/internal/carb/CarbInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/inmobi/monetization/internal/carb/CarbInfo;->a:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setInmId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/inmobi/monetization/internal/carb/CarbInfo;->b:Ljava/lang/String;

    .line 16
    return-void
.end method
